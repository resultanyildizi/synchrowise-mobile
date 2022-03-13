import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';

abstract class IRegisterStepsFacade {
  Future<Either<AuthFailure, File?>> pickImage();
  Future<Either<ValueFailure, Unit>> saveUsernameAndPicture(
      {required String username, File? image});
}
