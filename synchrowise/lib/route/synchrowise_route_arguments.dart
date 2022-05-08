import 'package:flutter/material.dart';
import 'package:path/path.dart';

class SynchrowiseRouteArguments {
  final BuildContext context;

  String? get routeName {
    return ModalRoute.of(context)?.settings.name;
  }

  SynchrowiseRouteArguments(this.context);
}
