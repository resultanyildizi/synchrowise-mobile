import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:synchrowise/env.dart';

import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/register/failure/register_failure.dart';
import 'package:synchrowise/infrastructure/register/i_register_facade.dart';

class RegisterFacade implements IRegisterFacade {
  ///* Dependencies
  final ImagePicker _imagePicker;
  final ImageCropper _imageCropper;
  final Client _client;

  ///* Constructor
  const RegisterFacade(this._client, this._imagePicker, this._imageCropper);

  @override
  Future<Either<RegisterFailure, File>> uploadImageFromDevice() async {
    try {
      final pickedImage =
          await _imagePicker.pickImage(source: ImageSource.gallery);

      if (pickedImage != null) {
        final croppedImage =
            await _imageCropper.cropImage(sourcePath: pickedImage.path);

        if (croppedImage != null) {
          return _checkImageSize(croppedImage);
        } else {
          return left(const RegisterFailure.imageCropperFailed());
        }
      } else {
        return left(const RegisterFailure.imagePickFailed());
      }
    } on PlatformException catch (_) {
      return left(const RegisterFailure.imagePickFailed());
    }
  }

  @override
  Future<Either<RegisterFailure, Unit>> registerUser({
    required String username,
    File? avatar,
  }) async {
    try {
      var request = MultipartRequest("POST", Uri.parse("$baseApiUrl/register"));
      request.fields["username"] = username;

      if (avatar != null) {
        request.files.add(await MultipartFile.fromPath("avatar", avatar.path));
      }

      final response = await request.send();

      final responseData = await response.stream.toBytes();
      final responseStr = String.fromCharCodes(responseData);

      // todo handle response

      return right(unit);
    } on SocketException catch (_) {
      return left(const RegisterFailure.connection());
    } catch (_) {
      return left(const RegisterFailure.unknown());
    }
  }
}

Either<RegisterFailure, File> _checkImageSize(File image) {
  if (image.lengthSync() > 15000000) {
    return left(const RegisterFailure.imageTooLarge());
  } else {
    return right(image);
  }
}
