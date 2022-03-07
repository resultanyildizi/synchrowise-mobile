import 'package:flutter/material.dart';

import 'package:synchrowise/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 5.5),
            Image.asset(
              appLogo,
              width: 140,
              height: 140,
            ),
            const SizedBox(height: 16),
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
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: primaryColor,
                  ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
