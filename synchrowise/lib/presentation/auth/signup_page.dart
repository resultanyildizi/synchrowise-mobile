import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/application/signup_form_bloc/signup_form_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/auth/helpers/handle_auth_failure.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  String? _getEmailError(SignupFormState state) {
    return state.showErrors
        ? state.failureOrEmailOption.fold(
            () {
              return "Email is required";
            },
            (foe) {
              return foe.fold(
                (l) {
                  return l.maybeMap(
                    invalidEmail: (_) {
                      return "Invalid email";
                    },
                    orElse: () {
                      return null;
                    },
                  );
                },
                (_) => null,
              );
            },
          )
        : null;
  }

  String? _getPasswordError(SignupFormState state) {
    return state.showErrors
        ? state.failureOrPasswordOption.fold(
            () {
              return "Password is required";
            },
            (fop) {
              return fop.fold(
                (l) {
                  return l.maybeMap(
                    emptyPassword: (_) {
                      return "Password is required";
                    },
                    weakPassword: (_) {
                      return "Password is weak";
                    },
                    orElse: () {
                      return null;
                    },
                  );
                },
                (_) => null,
              );
            },
          )
        : null;
  }

  String? _getConfirmPasswordError(SignupFormState state) {
    return state.showErrors
        ? state.failureOrPasswordOption.fold(
            () {
              return null;
            },
            (fop) {
              return fop.fold(
                (l) {
                  return l.maybeMap(
                    passwordsNotSame: (_) {
                      return "Passwords are not same";
                    },
                    orElse: () {
                      return null;
                    },
                  );
                },
                (_) => null,
              );
            },
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignupFormBloc>(
      create: (context) {
        return getIt<SignupFormBloc>();
      },
      child: BlocConsumer<SignupFormBloc, SignupFormState>(
        listener: (context, state) {
          state.failureOrUserOption.fold(
            () => null,
            (failureOrUser) {
              failureOrUser.fold(
                (failure) => handleAuthFailures(failure),
                (user) => null,
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35.0,
                  vertical: 25.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAnimatedButton(
                      shrinkWrap: true,
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: grayDarkColor,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      "Hi!",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      "Create a new account",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const Spacer(),
                    DefaultTextField(
                      icon: Icons.email,
                      hintText: "Email",
                      errorText: _getEmailError(state),
                      onChanged: (text) {
                        final signupFormBloc = context.read<SignupFormBloc>();
                        signupFormBloc.updateEmailText(email: text);
                      },
                    ),
                    const SizedBox(height: 25),
                    DefaultTextField(
                      icon: Icons.lock,
                      hintText: "Password",
                      obscrueText: true,
                      errorText: _getPasswordError(state),
                      onChanged: (text) {
                        final signupFormBloc = context.read<SignupFormBloc>();
                        signupFormBloc.updatePasswordText(password: text);
                      },
                    ),
                    const SizedBox(height: 25),
                    DefaultTextField(
                      icon: Icons.lock,
                      hintText: "Confirm Password",
                      obscrueText: true,
                      errorText: _getConfirmPasswordError(state),
                      onChanged: (text) {
                        final signupFormBloc = context.read<SignupFormBloc>();
                        signupFormBloc.updateConfirmPasswordText(
                          password: text,
                        );
                      },
                    ),
                    const SizedBox(height: 50),
                    DefaultButton(
                      backgroundColor: primaryColor,
                      borderColor: null,
                      textColor: kcWhiteColor,
                      text: "Sign Up",
                      padding: 50,
                      showProgress: state.isSigningEmail,
                      onTap: () {
                        final signupFormBloc = context.read<SignupFormBloc>();
                        signupFormBloc.signupWithEmailAndPassword();
                      },
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 85,
                          height: 0.4,
                          color: grayDarkColor,
                        ),
                        Text(
                          "or countinue with",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: 85,
                          height: 0.4,
                          color: grayDarkColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Center(
                      child: CustomAnimatedButton(
                        width: 50,
                        height: 50,
                        onTap: () async {
                          final signupFormBloc = context.read<SignupFormBloc>();
                          signupFormBloc.signupWithGoogle();
                        },
                        child: SvgPicture.asset("assets/svg/Google.svg"),
                        decoration: BoxDecoration(
                          border: Border.all(color: grayColor.withOpacity(0.4)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an Account?",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(width: 2),
                        CustomAnimatedButton(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          child: Text(
                            "Sign in",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: primaryColor),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
