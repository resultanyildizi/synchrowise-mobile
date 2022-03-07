import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: primaryLightColor,
    appBarTheme: const AppBarTheme(),
  );
}
