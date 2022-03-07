import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/login_page.dart';
import 'package:synchrowise/presentation/auth/auth_page.dart';
import 'package:synchrowise/presentation/splash/splash.dart';

class SynchrowiseApp extends StatelessWidget {
  const SynchrowiseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Synchrowise',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
        fontFamily: "Poppins",
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
            color: grayDarkColor,
          ),
          headline2: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w700,
            color: grayDarkColor,
          ),
          headline3: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: grayDarkColor,
          ),
          headline4: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            color: grayDarkColor,
          ),
          headline5: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: grayDarkColor,
          ),
          headline6: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: grayDarkColor,
          ),
          subtitle1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: grayColor,
          ),
          subtitle2: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            color: grayDarkColor,
          ),
          bodyText1:
              TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300), //TODO
          bodyText2:
              TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300), //TODO
        ),
      ),
      home: AnimatedSplashScreen(
        centered: false,
        splash: const SplashPage(),
        nextScreen: const AuthPage(),
      ),
    );
  }
}
