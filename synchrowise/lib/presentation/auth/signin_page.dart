import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/signin_form_bloc/signin_form_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/auth/helpers/handle_auth_failure.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  String? _getEmailError(SigninFormState state) {
    return state.showErrors
        ? state.failureOrEmailOption.fold(
            () {
              return "email_is_required".tr();
            },
            (foe) {
              return foe.fold(
                (l) {
                  return l.maybeMap(
                    invalidEmail: (_) {
                      return "email_is_invalid".tr();
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

  String? _getPasswordError(SigninFormState state) {
    return state.showErrors
        ? state.failureOrPasswordOption.fold(
            () {
              return "password_is_required".tr();
            },
            (fop) {
              return fop.fold(
                (l) {
                  return l.maybeMap(
                    emptyPassword: (_) {
                      return "password_is_required".tr();
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
    return BlocProvider<SigninFormBloc>(
      create: (context) {
        return getIt<SigninFormBloc>();
      },
      child: BlocConsumer<SigninFormBloc, SigninFormState>(
        listener: (context, state) {
          log(state.toString());
          state.failureOrUserOption.fold(
            () => null,
            (failureOrUser) {
              log(failureOrUser.toString());
              failureOrUser.fold(
                (failure) {
                  handleAuthFailures(failure);
                },
                (_) {
                  Navigator.pushReplacementNamed(context, "/home");
                  context.read<AuthBloc>().check();
                },
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
                      "welcome_exclamation".tr(),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      "sign_in_to_continue".tr(),
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const Spacer(),
                    DefaultTextField(
                      icon: Icons.email,
                      hintText: "email".tr(),
                      onChanged: (email) {
                        final signinBloc = context.read<SigninFormBloc>();
                        signinBloc.updateEmailText(email: email);
                      },
                      errorText: _getEmailError(state),
                    ),
                    const SizedBox(height: 25),
                    DefaultTextField(
                      icon: Icons.lock,
                      hintText: "password".tr(),
                      obscrueText: true,
                      onChanged: (password) {
                        final signinBloc = context.read<SigninFormBloc>();
                        signinBloc.updatePasswordText(password: password);
                      },
                      errorText: _getPasswordError(state),
                    ),
                    const SizedBox(height: 50),
                    DefaultButton(
                      backgroundColor: primaryColor,
                      borderColor: null,
                      textColor: kcWhiteColor,
                      text: "sign_in".tr(),
                      padding: 50,
                      showProgress: state.isSigningEmail,
                      onTap: () {
                        if (!state.isSigningEmail) {
                          final signinBloc = context.read<SigninFormBloc>();
                          signinBloc.signupWithEmailAndPassword();
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        "forgot_password".tr(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: primaryColor),
                      ),
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
                          "or_continue_with".tr(),
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
                          if (!state.isSigningGoogle) {
                            final signinBloc = context.read<SigninFormBloc>();
                            signinBloc.signupWithGoogle();
                          }
                        },
                        child: state.isSigningGoogle
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  color: primaryColor,
                                ),
                              )
                            : SvgPicture.asset("assets/svg/Google.svg"),
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
                          "dont_have_an_account".tr(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(width: 2),
                        CustomAnimatedButton(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/signup');
                          },
                          child: Text(
                            "sign_up".tr(),
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
