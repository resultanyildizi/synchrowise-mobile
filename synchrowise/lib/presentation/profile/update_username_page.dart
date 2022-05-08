import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/presentation/core/something_went_wrong_page.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/single_text_field_form.dart';

class ProfileUpdateUsernamePage extends StatelessWidget {
  const ProfileUpdateUsernamePage({Key? key}) : super(key: key);

  // String? _getUsernameErrorText(RegisterStepsState state) {
  //   return state.showErrors
  //       ? state.failureOrUsernameOption.fold(
  //           () => "username_is_required".tr(),
  //           (fou) => fou.fold(
  //             (l) {
  //               return l.maybeMap(
  //                 invalidUsername: (_) {
  //                   return "username_is_invalid".tr();
  //                 },
  //                 minLength: (failure) {
  //                   return "username_must_be_at_least_min_characters"
  //                       .tr(namedArgs: {"min": failure.length.toString()});
  //                 },
  //                 orElse: () {
  //                   return null;
  //                 },
  //               );
  //             },
  //             (_) => null,
  //           ),
  //         )
  //       : null;
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthorized: (_) {
            Navigator.pushNamedAndRemoveUntil(
                context, "/welcome", (route) => false);
          },
          orElse: () {},
        );
      },
      builder: ((context, state) {
        return state.maybeMap(
          authorized: (authorized) {
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
                          Navigator.pop(context);
                        }),
                        SingleTextFieldForm(
                          onTextChanged: (username) {
                            // final registerStepsBloc = context.read<RegisterStepsBloc>();
                            // registerStepsBloc.updateUsernameText(username: username);
                          },
                          saveButton: () {
                            // if (state.progressing) return;
                            // final registerStepsBloc = context.read<RegisterStepsBloc>();
                            // registerStepsBloc.saveUsername();
                          },
                          initialValue: authorized.user.username,
                          title: "username".tr(),
                          desc: "username_description".tr(),
                          btnText: "continue".tr(),
                          hintText: "username".tr(),
                          errorText: null,
                          // errorText: _getUsernameErrorText(state),
                          // showProgress: state.progressing,
                        ),
                      ],
                    ),
                  ),
                ),
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
