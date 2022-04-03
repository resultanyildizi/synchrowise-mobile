import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kcWhiteColor,
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
              const SizedBox(height: 48),
              SizedBox(
                child: Text(
                  "reset_your_password".tr(),
                  style: Theme.of(context).textTheme.headline2,
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "reset_your_password_description".tr(),
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 30),
              DefaultTextField(
                icon: null,
                hintText: "email".tr(),
                onChanged: (email) {},
              ),
              const SizedBox(height: 35),
              DefaultButton(
                backgroundColor: primaryColor,
                borderColor: null,
                textColor: kcWhiteColor,
                text: "send".tr(),
                padding: 0,
                showProgress: false,
                onTap: () {
                  // TODO send reset password link
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
