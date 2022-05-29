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
import 'package:synchrowise/route/synchrowise_route_arguments.dart';
import 'package:synchrowise/presentation/group/create_group_page.dart';
import 'package:synchrowise/presentation/home/home_page.dart';
import 'package:synchrowise/presentation/profile/profile_update_avatar_page.dart';
import 'package:synchrowise/presentation/profile/profile_update_username_page.dart';
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
            bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
            bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
          ),
        ),
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          final arguments = settings.arguments as SynchrowiseRouteArguments?;
          final routeName = arguments?.routeName;

          late final Widget nextPage;
          late final Route<dynamic> route;

          switch (settings.name) {
            case "/":
              nextPage = const SplashPage();
              break;
            case "/welcome":
              nextPage = const WelcomePage();
              break;
            case "/signin":
              nextPage = const SigninPage();
              break;
            case "/signup":
              nextPage = const SignupPage();
              break;
            case "/home":
              nextPage = const HomePage();
              break;
            case "/reset-password":
              nextPage = const ResetPasswordPage();
              break;
            case "/register":
              nextPage = const RegisterPage();
              break;
            case "/create-group":
              nextPage = const CreateGroupPage();
              break;
            case "/profile-update-username":
              nextPage = const ProfileUpdateUsernamePage();
              break;
            case "/profile-update-avatar":
              nextPage = const ProfileUpdateAvatarPage();
              break;
          }

          if (routeName == "/") {
            route = PageTransition(
              reverseDuration: const Duration(seconds: 1),
              duration: const Duration(seconds: 1),
              alignment: Alignment.bottomCenter,
              type: PageTransitionType.fade,
              child: nextPage,
              fullscreenDialog: true,
              settings: settings,
            );
          } else {
            route = MaterialPageRoute(
              builder: (context) => nextPage,
              settings: settings,
            );
          }

          return route;
        },
      ),
    );
  }
}
