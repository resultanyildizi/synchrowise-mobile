import 'dart:convert';
import 'dart:developer';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as path show extension;
import 'package:synchrowise/infrastructure/auth/avatar_repository/failure/avatar_failure.dart';
import 'package:synchrowise/domain/auth/avatar.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';
import 'package:http_parser/http_parser.dart';

import 'package:synchrowise/infrastructure/auth/avatar_repository/i_avatar_repository.dart';
import 'package:synchrowise/infrastructure/core/string_values.dart';

class AvatarRepository implements IAvatarRepository {
  @override
  Future<Either<AvatarRepositoryFailure, Avatar>> create({
    required File avatar,
    required String ownerId,
  }) async {
    final api = dotenv.get("API_URL");
    final uri = Uri.parse("$api/User");

    final fileext = path.extension(avatar.path);

    assert(fileext == ".jpg" || fileext == ".jpeg" || fileext == ".png");

    final mediaType = MediaType.parse("image/$fileext");

    final multipartFile = await MultipartFile.fromPath(
      "File",
      avatar.path,
      filename: avatar.path.split('/').last,
      contentType: mediaType,
    );

    final request = MultipartRequest("POST", uri);

    request.fields.addAll({"OwnerGuid": ownerId});

    request.headers.addAll({
      HeaderKeys.contentType: HeaderValues.multipartFormData,
    });

    request.files.add(multipartFile);

    final streamed = await request.send();

    final result = await Response.fromStream(streamed);

    if (result.statusCode == 200) {
      return right(
        const Avatar(
          path:
              "https://media.istockphoto.com/photos/businessman-silhouette-as-avatar-or-default-profile-picture-picture-id476085198?k=20&m=476085198&s=612x612&w=0&h=8J3VgOZab_OiYoIuZfiMIvucFYB8vWYlKnSjKuKeYQM=",
        ),
      );
    } else {
      log(result.statusCode.toString());
      log(json.decode(result.body).toString());

      return left(AvatarRepositoryFailure.server(
        result.statusCode,
        result.body,
      ));
    }
  }
}
