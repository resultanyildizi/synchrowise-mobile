import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/signup_form_bloc/signup_form_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/failure/auth_facade_failure.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/auth/helpers/handle_auth_failure.dart';
import 'package:synchrowise/presentation/auth/signin_page.dart';
import 'package:synchrowise/presentation/auth/widgets/google_button.dart';
import 'package:synchrowise/presentation/core/functions/handle_syncrowise_failure.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/route/synchrowise_route_arguments.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  String? _getEmailError(SignupFormState state) {
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

  String? _getPasswordError(SignupFormState state) {
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
                    weakPassword: (_) {
                      return "password_is_weak".tr();
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
        ? state.failureOrConfirmOption.fold(
            () {
              return null;
            },
            (fop) {
              return fop.fold(
                (l) {
                  return l.maybeMap(
                    passwordsNotSame: (_) {
                      return "passwords_do_not_match".tr();
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
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            unauthorized: (_) {},
            authorized: (state) {
              if (state.user.username == null) {
                SynchrowiseNavigator.pushReplacementNamed(
                  context,
                  "/register",
                  arguments: SynchrowiseRouteArguments(context),
                );
              } else {
                SynchrowiseNavigator.pushReplacementNamed(
                  context,
                  "/home",
                  arguments: SynchrowiseRouteArguments(context),
                );
              }
            },
          );
        },
        child: BlocConsumer<SignupFormBloc, SignupFormState>(
          listener: (context, state) {
            state.failureOrUserOption.fold(
              () => null,
              (failureOrUnit) {
                failureOrUnit.fold(
                  (failure) {
                    if (failure is AuthFacadeFailure) {
                      handleAuthFailures(context, failure);
                    } else {
                      handleSynchrowiseFailure(context, failure);
                    }
                  },
                  (_) {
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
                      const DefaultBackButton(),
                      const SizedBox(height: 40),
                      Text(
                        "hi_exclamation".tr(),
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        "create_a_new_account".tr(),
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      const Spacer(),
                      DefaultTextField(
                        icon: Icons.email,
                        hintText: "email".tr(),
                        errorText: _getEmailError(state),
                        onChanged: (text) {
                          final signupFormBloc = context.read<SignupFormBloc>();
                          signupFormBloc.updateEmailText(email: text);
                        },
                      ),
                      const SizedBox(height: 25),
                      DefaultTextField(
                        icon: Icons.lock,
                        hintText: "password".tr(),
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
                        hintText: "confirm_password".tr(),
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
                        textColor: Colors.white,
                        text: "sign_up".tr(),
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
                      GoogleButton(
                        showLoadingIndactor: state.isSigningGoogle,
                        onTap: () {
                          final signupBloc = context.read<SignupFormBloc>();
                          signupBloc.signupWithGoogle();
                        },
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "already_have_an_account".tr(),
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(width: 2),
                          CustomAnimatedButton(
                            onTap: () {
                              SynchrowiseNavigator.pushReplacementNamed(
                                context,
                                '/signin',
                              );
                            },
                            child: Text(
                              "sign_in".tr(),
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
      ),
    );
  }
}
