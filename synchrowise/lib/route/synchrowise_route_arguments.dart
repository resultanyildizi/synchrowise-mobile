import 'package:flutter/material.dart';
import 'package:synchrowise/domain/group/group_data.dart';

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

class JoinGroupPageRouteArguments extends SynchrowiseRouteArguments {
  final void Function() onSuccess;

  JoinGroupPageRouteArguments(
    BuildContext context, {
    required this.onSuccess,
  }) : super(context);
}

class GroupSessionPageRouteArguments extends SynchrowiseRouteArguments {
  final GroupData groupData;

  GroupSessionPageRouteArguments(
    BuildContext context, {
    required this.groupData,
  }) : super(context);
}
