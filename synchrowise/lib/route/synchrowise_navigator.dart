import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:synchrowise/presentation/auth/reset_password_page.dart';
import 'package:synchrowise/presentation/auth/signin_page.dart';
import 'package:synchrowise/presentation/auth/signup_page.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/group/create_group_page.dart';
import 'package:synchrowise/presentation/group/group_page.dart';
import 'package:synchrowise/presentation/group/join_group_page.dart';
import 'package:synchrowise/presentation/home/home_page.dart';
import 'package:synchrowise/presentation/profile/profile_update_avatar_page.dart';
import 'package:synchrowise/presentation/profile/profile_update_username_page.dart';
import 'package:synchrowise/presentation/register/register_page.dart';
import 'package:synchrowise/presentation/settings/contact_us_settings_page.dart';
import 'package:synchrowise/presentation/settings/language_settings_page.dart';
import 'package:synchrowise/presentation/settings/notification_settings_page.dart';
import 'package:synchrowise/presentation/splash/splash.dart';
import 'package:synchrowise/route/synchrowise_route_arguments.dart';

class SynchrowiseNavigator {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
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
        final onSuccess =
            (arguments as CreateGroupPageRouteArguments).onSuccess;

        nextPage = CreateGroupPage(onSuccess: onSuccess);
        break;
      case "/join-group":
        final onSuccess = (arguments as JoinGroupPageRouteArguments).onSuccess;
        nextPage = JoinGroupPage(onSuccess: onSuccess);
        break;

      case "/profile-update-username":
        nextPage = const ProfileUpdateUsernamePage();
        break;
      case "/profile-update-avatar":
        nextPage = const ProfileUpdateAvatarPage();
        break;

      case "/notification-settings":
        nextPage = const NotificationSettingsPage();
        break;
      case "/language":
        nextPage = const LanguageSettingsPage();
        break;
      case "/contact_us":
        nextPage = const ContactUsSettingsPage();
        break;
      case "/group":
        nextPage = const GroupPage();
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
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }

  static void pushNamed(
    BuildContext context,
    String routeName, {
    SynchrowiseRouteArguments? arguments,
  }) {
    Navigator.pushNamed(
      context,
      routeName,
      arguments: arguments ?? SynchrowiseRouteArguments(context),
    );
  }

  static void pushReplacementNamed(
    BuildContext context,
    String routeName, {
    SynchrowiseRouteArguments? arguments,
  }) {
    Navigator.pushReplacementNamed(
      context,
      routeName,
      arguments: arguments ?? SynchrowiseRouteArguments(context),
    );
  }

  static void pushNamedAndRemoveUntil(
    BuildContext context,
    String newRouteName,
    bool Function(Route<dynamic>) predicate, {
    SynchrowiseRouteArguments? arguments,
  }) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      newRouteName,
      predicate,
      arguments: arguments ?? SynchrowiseRouteArguments(context),
    );
  }
}
