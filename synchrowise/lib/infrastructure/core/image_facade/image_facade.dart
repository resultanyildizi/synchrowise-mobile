import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:synchrowise/infrastructure/core/image_facade/failure/image_failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:synchrowise/infrastructure/core/image_facade/i_image_facade.dart';

class ImageFacade implements IImageFacade {
  ///* Dependencies
  final ImagePicker _imagePicker;
  final ImageCropper _imageCropper;

  ///* Constructor
  const ImageFacade(this._imagePicker, this._imageCropper);

  @override
  Future<Either<ImageFailure, File>> uploadImageFromDevice() async {
    try {
      final pickedImage = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxHeight: 1024,
        maxWidth: 1024,
      );

      if (pickedImage != null) {
        return right(File(pickedImage.path));
      } else {
        log("pickedImage is null");
        return left(const ImageFailure.imagePick());
      }
    } on PlatformException catch (_) {
      log("PlatformException: " + _.toString());
      return left(const ImageFailure.imagePick());
    } catch (_) {
      log(_.toString());
      return left(const ImageFailure.imagePick());
    }
  }

  @override
  Future<Either<ImageFailure, File>> cropImage({
    required File image,
    AndroidUiSettings? androidUiSettings,
    IOSUiSettings? iosUiSettings,
  }) async {
    try {
      final croppedImage = await _imageCropper.cropImage(
        sourcePath: image.path,
        aspectRatioPresets: [CropAspectRatioPreset.square],
        iosUiSettings: iosUiSettings,
        androidUiSettings: androidUiSettings,
        cropStyle: CropStyle.rectangle,
      );

      if (croppedImage != null) {
        return right(croppedImage);
      } else {
        return left(const ImageFailure.imageCrop());
      }
    } on PlatformException catch (_) {
      return left(const ImageFailure.imageCrop());
    } catch (_) {
      return left(const ImageFailure.imageCrop());
    }
  }
}
