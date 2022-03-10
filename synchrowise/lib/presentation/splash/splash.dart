import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final nextPage = state.when(
          initial: () => const WelcomePage(),
          unauthorized: () => const WelcomePage(),
          // Todo : home page @gulceselim
          authorized: (user) => Scaffold(
            body: Center(child: Text(user.username)),
          ),
        );

        //* Bu widget çok kasıyor normal animasyonlar kullanarak yapabiliriz bunu
        return AnimatedSplashScreen(
          splashIconSize: MediaQuery.of(context).size.height,
          animationDuration: const Duration(milliseconds: 1000),
          nextScreen: nextPage,
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
      },
    );
  }
}
