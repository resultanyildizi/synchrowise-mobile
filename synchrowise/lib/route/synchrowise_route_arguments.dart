import 'package:flutter/material.dart';

class SynchrowiseRouteArguments {
  final BuildContext context;

  String? get routeName {
    return ModalRoute.of(context)?.settings.name;
  }

  SynchrowiseRouteArguments(this.context);
}

class CreateGroupPageRouteArguments extends SynchrowiseRouteArguments {
  final void Function() onSuccess;

  CreateGroupPageRouteArguments(
    BuildContext context, {
    required this.onSuccess,
  }) : super(context);
}
