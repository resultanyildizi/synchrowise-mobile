import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:synchrowise/infrastructure/core/string_values.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/group/group_repository/i_group_repository.dart';

class GroupRepository implements IGroupRepository {
  //* Dependencies
  final Client _client;

  //* Constructor
  const GroupRepository(this._client);

  //* Method implementations
  @override
  Future<Either<GroupRepositoryFailure, Unit>> create({
    required GroupData groupData,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/Group/Create");

      final result = await _client.post(
        uri,
        body: jsonEncode(groupData.toCreateMap()),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(unit);
      } else {
        return left(GroupRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const GroupRepositoryFailure.connection());
    } catch (e) {
      return left(GroupRepositoryFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<GroupRepositoryFailure, Unit>> update({
    required GroupData groupData,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/Group/Create");

      final result = await _client.post(
        uri,
        body: jsonEncode(groupData.toCreateMap()),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(unit);
      } else {
        return left(GroupRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const GroupRepositoryFailure.connection());
    } catch (e) {
      return left(GroupRepositoryFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<GroupRepositoryFailure, Unit>> delete({
    required GroupData groupData,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/Group/${groupData.groupId}");

      final result = await _client.delete(
        uri,
        body: jsonEncode(groupData.toDeleteMap()),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(unit);
      } else {
        return left(GroupRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const GroupRepositoryFailure.connection());
    } catch (e) {
      return left(GroupRepositoryFailure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<GroupRepositoryFailure, GroupData>> getById({
    required String groupId,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/Group/$groupId");

      final result = await _client.get(
        uri,
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(GroupData.fromMap(json.decode(result.body)));
      } else {
        return left(GroupRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const GroupRepositoryFailure.connection());
    } catch (e) {
      return left(GroupRepositoryFailure.unknown(e.toString()));
    }
  }

  // Todo: fix this
  @override
  Future<Either<GroupRepositoryFailure, GroupData>> getByUserId({
    required String synchrowiseUserId,
  }) async {
    try {
      final api = dotenv.get("API_URL");
      final uri = Uri.parse("$api/Group/User/$synchrowiseUserId");

      final result = await _client.get(
        uri,
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(GroupData.fromMap(json.decode(result.body)));
      } else if (result.statusCode == 404) {
        return left(const GroupRepositoryFailure.notFound());
      } else {
        return left(GroupRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const GroupRepositoryFailure.connection());
    } catch (e) {
      return left(GroupRepositoryFailure.unknown(e.toString()));
    }
  }
}
