import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

class AppLogoAndName extends StatelessWidget {
  const AppLogoAndName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        appLogoSmall,
        const SizedBox(width: 12),
        Text(
          appName,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: primaryColor, fontSize: 20),
        ),
      ],
    );
  }
}
