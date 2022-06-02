import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path show extension;
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

  ///* Method implementations
  @override
  Future<Either<ImageFacadeFailure, File>> uploadImageFromDevice() async {
    try {
      final pickedImage = await _imagePicker
          .pickImage(source: ImageSource.gallery)
          .timeout(const Duration(minutes: 1));

      if (pickedImage != null) {
        return right(File(pickedImage.path));
      } else {
        return left(const ImageFacadeFailure.imageCancel());
      }
    } on PlatformException catch (e) {
      return left(
          ImageFacadeFailure.imagePick("PlatformException: ${e.toString()}"));
    } catch (e) {
      return left(ImageFacadeFailure.imagePick("Exception: ${e.toString()}"));
    }
  }

  @override
  Future<Either<ImageFacadeFailure, File>> cropImage({
    required File image,
    AndroidUiSettings? androidUiSettings,
    IOSUiSettings? iosUiSettings,
  }) async {
    try {
      final fileext = path.extension(image.path);

      final compressQuality = fileext == ".png" ? 80 : 90;

      final compressFormat =
          fileext == ".png" ? ImageCompressFormat.png : ImageCompressFormat.jpg;

      final croppedImage = await _imageCropper.cropImage(
        compressFormat: compressFormat,
        compressQuality: compressQuality,
        sourcePath: image.path,
        aspectRatioPresets: [CropAspectRatioPreset.square],
        iosUiSettings: iosUiSettings,
        androidUiSettings: androidUiSettings,
        cropStyle: CropStyle.rectangle,
        maxHeight: 3024,
        maxWidth: 3024,
      );

      if (croppedImage != null) {
        final imageSizeMb = _getImageSizeMB(croppedImage);

        if (imageSizeMb > 10) {
          return left(ImageFacadeFailure.imageSize(imageSizeMb));
        }

        return right(croppedImage);
      } else {
        return left(const ImageFacadeFailure.imageCrop("CroppedImage is null"));
      }
    } on PlatformException catch (e) {
      return left(
          ImageFacadeFailure.imageCrop("PlatformException ${e.toString()}"));
    } catch (e) {
      return left(ImageFacadeFailure.imageCrop("Exception: ${e.toString()}"));
    }
  }

  double _getImageSizeMB(File image) {
    return image.lengthSync() / 1024 / 1024;
  }
}
