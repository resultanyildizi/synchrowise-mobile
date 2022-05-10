import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:synchrowise/infrastructure/core/image_facade/failure/image_failure.dart';

abstract class IImageFacade {
  ///* Provides an interface for the user to pick an image from the device storage
  ///*
  ///* Returns selected image `File` if it is successful
  ///* Returns `ImageFacadeFailure` if an exception occurs
  Future<Either<ImageFacadeFailure, File>> uploadImageFromDevice();

  ///* Provides an interface for the user to crop the given `image` file.
  ///* `androidUiSettings` and `iosUiSettings` are UI customization settings
  ///* for the cropper page
  ///*
  ///* Returns cropped image `File` if it is successful
  ///* Returns `ImageFacadeFailure` if an exception occurs
  Future<Either<ImageFacadeFailure, File>> cropImage({
    required File image,
    AndroidUiSettings? androidUiSettings,
    IOSUiSettings? iosUiSettings,
  });
}
