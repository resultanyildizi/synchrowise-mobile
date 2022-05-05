import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/failure/synchrowise_user_repository_failure.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/core/string_values.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart' as path show extension;

class SynchrowiseUserRepository implements ISynchrowiseUserRepository {
  final Client _client;

  const SynchrowiseUserRepository(this._client);

  @override
  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> create({
    required SynchrowiseUser synchrowiseUser,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/User");

      final result = await _client.post(
        uri,
        body: jsonEncode(synchrowiseUser.toCreateMap()),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(unit);
      } else {
        return left(SynchrowiseUserRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const SynchrowiseUserRepositoryFailure.connection());
    } catch (e) {
      return left(SynchrowiseUserRepositoryFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<SynchrowiseUserRepositoryFailure, SynchrowiseUser>>
      getByCredUser({
    required SynchrowiseUser userFromCred,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/User/firebase/${userFromCred.firebaseId}");

      final result = await _client.get(
        uri,
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        final body = jsonDecode(result.body) as Map<String, dynamic>;

        final bodyData = (body['data'] ?? {}) as Map<String, dynamic>;

        final data = Map<String, dynamic>.from(bodyData);

        return right(userFromCred.copyWithMap(data));
      } else {
        return left(SynchrowiseUserRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const SynchrowiseUserRepositoryFailure.connection());
    } catch (e) {
      return left(SynchrowiseUserRepositoryFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> update({
    required SynchrowiseUser synchrowiseUser,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/User");

      final result = await _client.put(
        uri,
        body: jsonEncode(synchrowiseUser.toUpdateMap()),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(unit);
      } else {
        return left(SynchrowiseUserRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const SynchrowiseUserRepositoryFailure.connection());
    } catch (e) {
      return left(SynchrowiseUserRepositoryFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> delete({
    required SynchrowiseUser synchrowiseUser,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/User/${synchrowiseUser.synchrowiseId}");

      final result = await _client.delete(
        uri,
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(unit);
      } else {
        return left(SynchrowiseUserRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const SynchrowiseUserRepositoryFailure.connection());
    } catch (e) {
      return left(SynchrowiseUserRepositoryFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> updateAvatar({
    required SynchrowiseUser synchrowiseUser,
    required File avatar,
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

    request.fields.addAll({
      "OwnerGuid": synchrowiseUser.synchrowiseId,
    });

    // request.headers.addAll({
    //   HeaderKeys.contentType: HeaderValues.multipartFormData,
    // });

    request.files.add(multipartFile);

    final streamed = await request.send();

    final result = await Response.fromStream(streamed);

    if (result.statusCode == 200) {
      return right(unit);
    } else {
      log(result.statusCode.toString());
      log(json.decode(result.body).toString());

      return left(SynchrowiseUserRepositoryFailure.server(
        result.statusCode,
        result.body,
      ));
    }
  }
}
