import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'dart:io';

import 'package:synchrowise/infrastructure/register_steps/i_register_steps_facade.dart';

class RegisterStepsFacade implements IRegisterStepsFacade {
  final ImagePicker imagePicker;

  RegisterStepsFacade(this.imagePicker);

  @override
  Future<Either<AuthFailure, File?>> pickImage() async {
    try {
      final image = await imagePicker.pickImage(source: ImageSource.gallery);
      if (image == null) return right(null);

      return Right(File(image.path));
    } on PlatformException catch (_) {
      return left(const AuthFailure.failedToPickImage());
    }
  }

  @override
  Future<Either<ValueFailure, Unit>> saveUsernameAndPicture(
      {required String username, File? image}) async {
    return const Right(unit);
  }
}
