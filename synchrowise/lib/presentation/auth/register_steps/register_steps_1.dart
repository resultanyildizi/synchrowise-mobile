import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/register_steps/register_steps_2.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/thin_line_stepper.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class RegisterSteps1 extends StatelessWidget {
  const RegisterSteps1({Key? key}) : super(key: key);

  String? _getUsernameErrorText(RegisterStepsState state) {
    return state.showErrors
        ? state.failureOrUsernameOption.fold(
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
    return BlocBuilder<RegisterStepsBloc, RegisterStepsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            DefaultBackButton(onTap: () {
              final registerStepsBloc = context.read<RegisterStepsBloc>();
              registerStepsBloc.goBack();
            }),
            const SizedBox(height: 32),
            Text(
              "username".tr(),
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "username_description".tr(),
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: 30),
            DefaultTextField(
              icon: null,
              hintText: "username".tr(),
              onChanged: (username) {
                final registerStepsBloc = context.read<RegisterStepsBloc>();
                registerStepsBloc.updateUsernameText(
                  username: username,
                );
              },
              errorText: _getUsernameErrorText(state),
            ),
            const SizedBox(height: 35),
            DefaultButton(
              backgroundColor: primaryColor,
              borderColor: null,
              textColor: kcWhiteColor,
              text: "continue".tr(),
              padding: 0,
              onTap: () {
                final registerStepsBloc = context.read<RegisterStepsBloc>();
                registerStepsBloc.saveUsername();
              },
            ),
          ],
        );
      },
    );
  }
}
