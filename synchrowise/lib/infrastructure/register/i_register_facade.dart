import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/register/failure/register_failure.dart';

abstract class IRegisterFacade {
  ///* Provides an interface for the user to pick an image from the device storage
  ///*
  ///* Returns selected image `File` if it is successful
  ///* Returns `RegisterFailure` if an exception occurs
  Future<Either<RegisterFailure, File>> uploadImageFromDevice();

  ///* Updates the `username` and `avatar` of the user
  ///*
  ///* Returns `unit` if it is successful
  ///* Returns `RegisterFailure` if an exception occurs
  Future<Either<RegisterFailure, Unit>> registerUser({
    required String username,
    File? avatar,
  });
}
