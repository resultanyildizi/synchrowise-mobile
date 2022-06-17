import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/signin_page.dart';
import 'package:synchrowise/presentation/auth/signup_page.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = '/welcome';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Text("hello".tr(), style: Theme.of(context).textTheme.headline1),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "welcome_phrase".tr(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const Spacer(),
            DefaultButton(
              backgroundColor: primaryColor,
              borderColor: null,
              textColor: Colors.white,
              text: "sign_in".tr(),
              padding: 35,
              onTap: () {
                SynchrowiseNavigator.pushNamed(context, SigninPage.routeName);
              },
            ),
            const SizedBox(height: 15),
            DefaultButton(
              backgroundColor: Colors.white,
              borderColor: primaryColor,
              textColor: primaryColor,
              text: "sign_up".tr(),
              padding: 35,
              onTap: () {
                SynchrowiseNavigator.pushNamed(context, SignupPage.routeName);
              },
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
