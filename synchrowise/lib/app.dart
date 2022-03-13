import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/signup_form_bloc/signup_form_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/auth/signin_page.dart';
import 'package:synchrowise/presentation/auth/signup_page.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/home/home_page.dart';
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
        BlocProvider<SignupFormBloc>(
          create: (context) => getIt<SignupFormBloc>(),
        ),
      ],
      child: MaterialApp(
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
        routes: {
          '/': (context) => const SplashPage(),
          '/welcome': (context) => const WelcomePage(),
          '/login': (context) => const SigninPage(),
          '/signup': (context) => const SignupPage(),
          '/home': (context) => const HomePage(),
        },
      ),
    );
  }
}
