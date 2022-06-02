import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:path/path.dart' as path show extension;
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/failure/avatar_failure.dart';
import 'package:synchrowise/domain/auth/avatar.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:synchrowise/infrastructure/auth/avatar_repository/i_avatar_repository.dart';
import 'package:synchrowise/infrastructure/core/string_values.dart';
import 'package:synchrowise/setup_env.dart';

class AvatarRepository implements IAvatarRepository {
  //* Dependencies
  final Client _client;

  //* Constructor
  const AvatarRepository(this._client);

  //* Method implementations
  @override
  Future<Either<AvatarRepositoryFailure, Avatar>> upload({
    required File avatar,
    required SynchrowiseUser owner,
  }) async {
    final uri = Uri.parse("$apiurl/User/Avatar");

    final fileext = path.extension(avatar.path);

    assert(fileext == ".jpg" || fileext == ".jpeg" || fileext == ".png");

    final multipartFile = await MultipartFile.fromPath(
      "file",
      avatar.path,
    );

    final request = MultipartRequest("POST", uri);

    request.fields.addAll({"ownerId": owner.synchrowiseId});

    request.files.add(multipartFile);

    final streamed = await request.send();

    final result = await Response.fromStream(streamed);

    if (result.statusCode == 200) {
      return right(Avatar.fromMap(json.decode(result.body)["data"]));
    } else {
      log(result.statusCode.toString());
      log(result.body);

      return left(AvatarRepositoryFailure.server(
        result.statusCode,
        result.body,
      ));
    }
  }

  @override
  Future<Either<AvatarRepositoryFailure, Avatar>> delete({
    required SynchrowiseUser owner,
  }) async {
    final uri = Uri.parse("$apiurl/User/${owner.synchrowiseId}/Avatar");

    final response = await _client.delete(uri);

    if (response.statusCode == 200) {
      return right(Avatar.fromMap(json.decode(response.body)["data"]));
    } else {
      return left(AvatarRepositoryFailure.server(
        response.statusCode,
        response.body,
      ));
    }
  }
}
