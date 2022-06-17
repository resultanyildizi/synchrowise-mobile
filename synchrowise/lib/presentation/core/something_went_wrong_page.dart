import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

class SomethingWentWrongPage extends StatelessWidget {
  final String message;
  const SomethingWentWrongPage({
    Key? key,
    this.message = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Center(
            child: Text('something_went_wrong'.tr() + '\n' + message),
          ),
        ),
      ),
    );
  }
}
