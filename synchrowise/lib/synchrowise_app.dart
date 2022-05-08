import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/auth/reset_password_page.dart';
import 'package:synchrowise/presentation/auth/signin_page.dart';
import 'package:synchrowise/presentation/auth/signup_page.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/group/create_group.dart';
import 'package:synchrowise/presentation/home/home_page.dart';
import 'package:synchrowise/presentation/profile/update_username_page.dart';
import 'package:synchrowise/presentation/register/register_page.dart';
import 'package:synchrowise/presentation/splash/splash.dart';

class SynchrowiseApp extends StatelessWidget {
  const SynchrowiseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) {
            final authBloc = getIt<AuthBloc>();
            authBloc.check();
            return authBloc;
          },
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'Synchrowise',
        theme: ThemeData(
          brightness: Brightness.light,
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
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case "/":
              return MaterialPageRoute(
                builder: (context) => const SplashPage(),
              );
            case "/welcome":
              return MaterialPageRoute(
                builder: (context) => const WelcomePage(),
              );
            case "/signin":
              return MaterialPageRoute(
                builder: (context) => const SigninPage(),
              );
            case "/signup":
              return MaterialPageRoute(
                builder: (context) => const SignupPage(),
              );
            case "/home":
              return MaterialPageRoute(
                builder: (context) => const HomePage(),
              );
            case "/reset_password":
              return MaterialPageRoute(
                builder: (context) => const ResetPasswordPage(),
              );
            case "/register":
              return PageTransition(
                duration: const Duration(seconds: 1),
                reverseDuration: const Duration(seconds: 1),
                type: PageTransitionType.fade,
                alignment: Alignment.bottomCenter,
                fullscreenDialog: true,
                child: const RegisterPage(),
              );
            case "/create_group":
              return MaterialPageRoute(
                builder: (context) => const CreateGroup(),
              );

            case "/profile_username":
              return MaterialPageRoute(
                builder: (context) => const ProfileUpdateUsernamePage(),
              );
            case "/profile_avatar":
          }
        },
      ),
    );
  }
}
