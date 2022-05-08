import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

class SomethingWentWrongPage extends StatelessWidget {
  const SomethingWentWrongPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Center(
            child: Text("Bir şeyler ters giti"),
          ),
        ),
      ),
    );
  }
}
