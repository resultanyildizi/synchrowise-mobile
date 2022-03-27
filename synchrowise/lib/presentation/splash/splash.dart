import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/home/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        final nextPage = state.when(
          initial: () => const WelcomePage(),
          unauthorized: () => const WelcomePage(),
          authorized: (user) => HomePage(username: user.username),
        );

        Future.delayed(
          const Duration(seconds: 1),
          () {
            Navigator.pushReplacement(
              context,
              PageTransition(
                duration: const Duration(seconds: 1),
                reverseDuration: const Duration(seconds: 1),
                child: nextPage,
                type: PageTransitionType.fade,
                alignment: Alignment.bottomCenter,
                fullscreenDialog: true,
              ),
            );
          },
        );
      },
      builder: (context, state) {
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
                    "from_mirror_technology".tr(),
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
}
