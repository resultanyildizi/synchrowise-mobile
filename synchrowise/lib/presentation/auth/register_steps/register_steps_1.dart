import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/register_steps/register_steps_2.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class RegisterSteps1 extends StatelessWidget {
  const RegisterSteps1({Key? key}) : super(key: key);

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
              const SizedBox(height: 64),
              Text(
                "Username",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 30),
              DefaultTextField(
                icon: null,
                hintText: "Username",
                onChanged: (text) => text,
              ),
              const SizedBox(height: 35),
              DefaultButton(
                backgroundColor: primaryColor,
                borderColor: null,
                textColor: kcWhiteColor,
                text: "Continue",
                padding: 0,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterSteps2(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
