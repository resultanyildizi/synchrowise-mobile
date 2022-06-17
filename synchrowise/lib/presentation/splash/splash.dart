import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/main/main_page.dart';
import 'package:synchrowise/presentation/register/register_page.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/splash';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            SynchrowiseNavigator.pushReplacementNamed(
                context, WelcomePage.routeName);
          },
          unauthorized: (_) {
            SynchrowiseNavigator.pushReplacementNamed(
                context, WelcomePage.routeName);
          },
          authorized: (user) {
            if (user.user.username != null) {
              SynchrowiseNavigator.pushReplacementNamed(
                context,
                MainPage.routeName,
              );
            } else {
              SynchrowiseNavigator.pushReplacementNamed(
                context,
                RegisterPage.routeName,
              );
            }
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
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
