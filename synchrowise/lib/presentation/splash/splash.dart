import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/auth_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: MediaQuery.of(context).size.height,
      animationDuration: const Duration(milliseconds: 1000),
      nextScreen: const AuthPage(),
      splash: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 8),
            appLogo,
            const SizedBox(height: 20),
            Text(
              appName,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: primaryColor),
            ),
            const Spacer(),
            Text(
              "from Mirror Technology",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: primaryColor),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
