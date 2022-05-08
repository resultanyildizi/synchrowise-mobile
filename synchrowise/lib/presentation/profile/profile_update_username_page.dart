import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/registeration_bloc.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/functions/handle_syncrowise_failure.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/core/something_went_wrong_page.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/single_text_field_form.dart';

class ProfileUpdateUsernamePage extends StatelessWidget {
  const ProfileUpdateUsernamePage({Key? key}) : super(key: key);

  String? _getUsernameErrorText(RegisterationState state) {
    return state.showErrors
        ? state.valueFailureOrUsernameOption.fold(
            () => "username_is_required".tr(),
            (fou) => fou.fold(
              (l) {
                return l.maybeMap(
                  invalidUsername: (_) {
                    return "username_is_invalid".tr();
                  },
                  minLength: (failure) {
                    return "username_must_be_at_least_min_characters"
                        .tr(namedArgs: {"min": failure.length.toString()});
                  },
                  orElse: () {
                    return null;
                  },
                );
              },
              (_) => null,
            ),
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthorized: (_) {
            SynchrowiseNavigator.pushNamedAndRemoveUntil(
                context, "/welcome", (route) => false);
          },
          orElse: () {},
        );
      },
      builder: ((context, authState) {
        return authState.maybeMap(
          authorized: (authorized) {
            return BlocProvider<RegisterationBloc>(
              create: (context) {
                return getIt<RegisterationBloc>();
              },
              child: BlocConsumer<RegisterationBloc, RegisterationState>(
                listenWhen: (_, current) {
                  return current.usernameFailureOrUnitOption.isSome() ||
                      current.storageFailureOrUnitOption.isSome();
                },
                listener: (context, state) {
                  if (state.hasUsernameFailed) {
                    state.usernameFailureOrUnitOption.fold(
                      () {},
                      (fou) {
                        fou.fold(
                          (f) {
                            handleSynchrowiseFailure(f);
                          },
                          (_) {},
                        );
                      },
                    );
                  } else if (state.hasStorageFailed) {
                    state.storageFailureOrUnitOption.fold(
                      () {},
                      (fou) {
                        fou.fold(
                          (f) {
                            f.maybeMap(
                              get: (_) {
                                SynchrowiseNavigator.pushNamedAndRemoveUntil(
                                    context, "/welcome", (route) => false);
                              },
                              orElse: () {
                                showErrorToast(
                                    "unknown_error".tr(), ToastGravity.BOTTOM);
                              },
                            );
                          },
                          (_) {},
                        );
                      },
                    );
                  }

                  if (state.hasUsernameSucceeded && state.hasStorageSucceeded) {
                    SynchrowiseNavigator.pop(context);
                    showSuccessToast("username_updated".tr(), ToastGravity.TOP);
                    context.read<AuthBloc>().check();
                  }
                },
                builder: (context, state) {
                  return Scaffold(
                    body: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 35.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 32),
                              DefaultBackButton(onTap: () {
                                SynchrowiseNavigator.pop(context);
                              }),
                              SingleTextFieldForm(
                                onTextChanged: (username) {
                                  final registerStepsBloc =
                                      context.read<RegisterationBloc>();
                                  registerStepsBloc.updateUsernameText(
                                      username: username);
                                },
                                saveButton: () {
                                  if (state.progressing) return;
                                  final registerStepsBloc =
                                      context.read<RegisterationBloc>();
                                  registerStepsBloc.saveUsername();
                                },
                                initialValue: authorized.user.username,
                                title: "username".tr(),
                                desc: "username_description".tr(),
                                btnText: "save".tr(),
                                hintText: "username".tr(),
                                errorText: _getUsernameErrorText(state),
                                showProgress: state.progressing,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          orElse: () {
            return const SomethingWentWrongPage();
          },
        );
      }),
    );
  }
}
