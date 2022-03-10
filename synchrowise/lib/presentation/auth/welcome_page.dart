import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcWhiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/image_1.png",
              width: 305,
              height: 210,
            ),
            const SizedBox(height: 60),
            Text("Hello", style: Theme.of(context).textTheme.headline1),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const Spacer(),
            DefaultButton(
              backgroundColor: primaryColor,
              borderColor: null,
              textColor: kcWhiteColor,
              text: "Login",
              padding: 35,
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            const SizedBox(height: 15),
            DefaultButton(
              backgroundColor: kcWhiteColor,
              borderColor: primaryColor,
              textColor: primaryColor,
              text: "Sign Up",
              padding: 35,
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
