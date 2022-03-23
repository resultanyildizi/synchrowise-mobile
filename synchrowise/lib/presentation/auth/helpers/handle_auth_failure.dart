import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';

void handleAuthFailures(AuthFailure failure) {
  failure.maybeMap(
    invalidCredentials: (_) {},
    userDisabled: (_) {},
    invalidEmail: (_) {},
    emailAlreadyInUse: (_) {
      Fluttertoast.showToast(
        msg: "User already exists",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: primaryColor,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    },
    weakPassword: (_) {},
    userCancelled: (_) {},
    connection: (_) {},
    unknown: (_) {},
    orElse: () {},
  );
}
