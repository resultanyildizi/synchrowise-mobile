import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/register_steps/register_steps_1.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
              const DefaultTextField(icon: Icons.email, hintText: "Email"),
              const SizedBox(height: 25),
              const DefaultTextField(icon: Icons.lock, hintText: "Password"),
              const SizedBox(height: 25),
              const DefaultTextField(
                  icon: Icons.lock, hintText: "Confirm Password"),
              const SizedBox(height: 50),
              DefaultButton(
                backgroundColor: primaryColor,
                borderColor: null,
                textColor: kcWhiteColor,
                text: "Sign Up",
                padding: 50,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterSteps1(),
                    ),
                  );
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
                  onTap: () async {},
                  child: SvgPicture.asset(
                    "assets/svg/Google.svg",
                  ),
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
                      "Login",
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
  }
}
