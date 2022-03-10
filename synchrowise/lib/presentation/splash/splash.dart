import 'dart:async';
import 'dart:developer';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final nextPage = state.when(
          initial: () => const WelcomePage(),
          unauthorized: () => const WelcomePage(),
          // Todo : home page @gulceselim
          authorized: (user) => HomePage(username: user.username),
        );

        Timer(const Duration(seconds: 3), (() {
          log("hey");
          Navigator.push(
            context,
            PageTransition(
              duration: const Duration(seconds: 1),
              reverseDuration: const Duration(seconds: 1),
              child: nextPage,
              type: PageTransitionType.fade,
              alignment: Alignment.bottomCenter,
            ),
          );
        }));

        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: kcWhiteColor,
          body: SafeArea(
            child: Center(
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
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
