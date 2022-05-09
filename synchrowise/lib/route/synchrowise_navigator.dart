import 'package:flutter/material.dart';
import 'package:synchrowise/route/synchrowise_route_arguments.dart';

class SynchrowiseNavigator {
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
