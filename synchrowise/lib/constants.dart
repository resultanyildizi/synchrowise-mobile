import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

const Color primaryColor = Color(0xFFD23E50);
const Color primaryLightColor = Color.fromARGB(25, 210, 62, 80);
const Color primaryDarkColor = Color.fromRGBO(155, 0, 40, 1);
const Color primaryExtraLightColor = Color(0xFFFFF5F5);
const Color secondaryColor = Color(0xFF2B41A2);
const Color secondaryLightColor = Color(0xFF3248A6);
const Color secondaryDarkColor = Color(0xFF001b72);
const Color grayColor = Color(0xFFA8A7A8);
const Color grayDarkColor2 = Color(0xFF807A7C);
const Color grayDarkColor = Color(0xFF2B2628);
const Color grayLightColor = Color.fromARGB(127, 224, 224, 224);

const defaultPadding = 20.0;

const String appName = "synchrowise";
const String redCardImagePath = "assets/svg/Red.svg";
const String blueCardImagePath = "assets/svg/Blue.svg";
const String whiteCardImagePath = "assets/svg/White.svg";

final Image appLogo = Image.asset(
  "assets/images/logo.png",
  width: 140,
  height: 140,
);

final Image appLogoSmall = Image.asset(
  "assets/images/logo.png",
  width: 40,
  height: 40,
);

final AndroidUiSettings cropAndroidUiSettings = AndroidUiSettings(
  toolbarColor: primaryColor,
  toolbarWidgetColor: Colors.white,
  statusBarColor: primaryColor,
  toolbarTitle: "crop".tr(),
);
final IOSUiSettings cropIOSUiSettings = IOSUiSettings(
  title: "clip".tr(),
);
