import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:synchrowise/presentation/auth/reset_password_page.dart';
import 'package:synchrowise/presentation/auth/signin_page.dart';
import 'package:synchrowise/presentation/auth/signup_page.dart';
import 'package:synchrowise/presentation/auth/welcome_page.dart';
import 'package:synchrowise/presentation/core/something_went_wrong_page.dart';
import 'package:synchrowise/presentation/group/create_group_page.dart';
import 'package:synchrowise/presentation/group/group_session_page.dart';
import 'package:synchrowise/presentation/group/join_group_page.dart';
import 'package:synchrowise/presentation/main/main_page.dart';
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
      case SplashPage.routeName:
        nextPage = const SplashPage();
        break;
      case WelcomePage.routeName:
        nextPage = const WelcomePage();
        break;
      case SigninPage.routeName:
        nextPage = const SigninPage();
        break;
      case SignupPage.routeName:
        nextPage = const SignupPage();
        break;
      case MainPage.routeName:
        nextPage = const MainPage();
        break;
      case ResetPasswordPage.routeName:
        nextPage = const ResetPasswordPage();
        break;
      case RegisterPage.routeName:
        nextPage = const RegisterPage();
        break;
      case CreateGroupPage.routeName:
        final onSuccess =
            (arguments as CreateGroupPageRouteArguments).onSuccess;
        nextPage = CreateGroupPage(onSuccess: onSuccess);
        break;
      case JoinGroupPage.routeName:
        final onSuccess = (arguments as JoinGroupPageRouteArguments).onSuccess;
        nextPage = JoinGroupPage(onSuccess: onSuccess);
        break;

      case GroupSessionPage.routeName:
        nextPage = const GroupSessionPage();
        break;

      case ProfileUpdateUsernamePage.routeName:
        nextPage = const ProfileUpdateUsernamePage();
        break;
      case ProfileUpdateAvatarPage.routeName:
        nextPage = const ProfileUpdateAvatarPage();
        break;
      case NotificationSettingsPage.routeName:
        nextPage = const NotificationSettingsPage();
        break;
      case LanguageSettingsPage.routeName:
        nextPage = const LanguageSettingsPage();
        break;
      case ContactUsSettingsPage.routeName:
        nextPage = const ContactUsSettingsPage();
        break;
    }

    if (routeName == SplashPage.routeName) {
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
