import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/constants.dart';

Future<void> showErrorToast(String message, ToastGravity gravity) async {
  await Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: gravity,
    backgroundColor: primaryColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
