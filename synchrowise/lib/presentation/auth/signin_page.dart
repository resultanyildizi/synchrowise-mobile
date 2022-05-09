import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/signin_form_bloc/signin_form_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/failure/auth_facade_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/failure/synchrowise_user_repository_failure.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/auth/helpers/handle_auth_failure.dart';
import 'package:synchrowise/presentation/auth/widgets/google_button.dart';
import 'package:synchrowise/presentation/core/functions/handle_syncrowise_failure.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/route/synchrowise_route_arguments.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
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
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            unauthorized: (_) {},
            authorized: (state) {
              if (state.user.username == null) {
                SynchrowiseNavigator.pushReplacementNamed(context, "/register");
              } else {
                SynchrowiseNavigator.pushReplacementNamed(context, "/home");
              }
            },
          );
        },
        child: BlocConsumer<SigninFormBloc, SigninFormState>(
          listener: (context, state) {
            log(state.toString());
            state.failureOrUserOption.fold(
              () => null,
              (failureOrUnit) {
                failureOrUnit.fold(
                  (failure) {
                    if (failure is AuthFacadeFailure) {
                      handleAuthFailures(failure);
                    } else {
                      handleSynchrowiseFailure(failure);
                    }
                  },
                  (user) {
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
                        textColor: Colors.white,
                        text: "sign_in".tr(),
                        padding: 50,
                        showProgress: state.isSigningEmail,
                        onTap: () {
                          if (!state.isSigningEmail) {
                            final signinBloc = context.read<SigninFormBloc>();
                            signinBloc.signinWithEmailAndPassword();
                          }
                        },
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                SynchrowiseNavigator.pushNamed(
                                  context,
                                  "/reset-password",
                                );
                              },
                            text: "forgot_password".tr(),
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: primaryColor),
                          ),
                          textAlign: TextAlign.center,
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
                      GoogleButton(
                        showLoadingIndactor: state.isSigningGoogle,
                        onTap: () {
                          final signinBloc = context.read<SigninFormBloc>();
                          signinBloc.signinWithGoogle();
                        },
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
                              SynchrowiseNavigator.pushReplacementNamed(
                                context,
                                '/signup',
                                arguments: SynchrowiseRouteArguments(context),
                              );
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
      ),
    );
  }
}
