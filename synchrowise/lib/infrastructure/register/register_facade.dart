import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import 'package:synchrowise/infrastructure/register/failure/register_failure.dart';
import 'package:synchrowise/infrastructure/register/i_register_facade.dart';

class RegisterFacade implements IRegisterFacade {
  ///* Dependencies
  final Client _client;

  ///* Constructor
  const RegisterFacade(this._client);

  @override
  Future<Either<RegisterFailure, Unit>> registerUser({
    required String username,
    File? avatar,
  }) async {
    try {
      var request = MultipartRequest(
          "POST", Uri.parse("${dotenv.get("BACKEND_URL")}/register"));
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
