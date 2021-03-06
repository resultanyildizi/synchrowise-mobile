import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart';
import 'package:synchrowise/infrastructure/core/string_values.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/group/group_repository/i_group_repository.dart';
import 'package:synchrowise/setup_env.dart';

class GroupRepository implements IGroupRepository {
  //* Dependencies
  final Client _client;

  //* Constructor
  const GroupRepository(this._client);

  //* Method implementations
  @override
  Future<Either<GroupRepositoryFailure, GroupData>> create({
    required GroupData groupData,
  }) async {
    try {
      final uri = Uri.parse("$apiurl/Group/Create");

      final result = await _client.post(
        uri,
        body: jsonEncode(groupData.toCreateMap()),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      final data = jsonDecode(result.body)["data"];

      if (result.statusCode == 200) {
        return Right(GroupData.fromMap(data));
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
      final uri = Uri.parse("$apiurl/Group/${groupData.groupId}");

      final result = await _client.put(
        uri,
        body: jsonEncode(groupData.toUpdateMap()),
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
    required String synchrowiseUserId,
  }) async {
    try {
      final uri = Uri.parse("$apiurl/Group/${groupData.groupId}");

      final result = await _client.delete(
        uri,
        body: jsonEncode({"userID": synchrowiseUserId}),
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
      final uri = Uri.parse("$apiurl/Group/$groupId");

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

  @override
  Future<Either<GroupRepositoryFailure, GroupData>> getByUserId({
    required String synchrowiseUserId,
  }) async {
    try {
      final uri = Uri.parse("$apiurl/Group/Member/Get/$synchrowiseUserId");

      final result = await _client.get(
        uri,
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        final map = json.decode(result.body);

        return right(GroupData.fromMap(map['data']));
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

  @override
  Future<Either<GroupRepositoryFailure, GroupData>> getByGroupKey({
    required String groupKey,
  }) async {
    try {
      final uri = Uri.parse("$apiurl/Group/Name/$groupKey");

      final result = await _client.get(
        uri,
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      if (result.statusCode == 200) {
        return right(GroupData.fromMap(json.decode(result.body)['data']));
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

  @override
  Future<Either<GroupRepositoryFailure, GroupData>> addMember({
    required GroupData groupData,
    required String synchrowiseUserId,
  }) async {
    try {
      final uri = Uri.parse("$apiurl/Group/${groupData.groupId}/Member");

      final result = await _client.post(
        uri,
        body: jsonEncode({
          'memberId': synchrowiseUserId,
        }),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      log(result.body);

      if (result.statusCode == 200) {
        return right(GroupData.fromMap(json.decode(result.body)['data']));
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

  @override
  Future<Either<GroupRepositoryFailure, Unit>> deleteMember(
      {required GroupData groupData, required String synchrowiseUserId}) async {
    try {
      final uri = Uri.parse("$apiurl/Group/${groupData.groupId}/Member/Remove");

      final result = await _client.delete(
        uri,
        body: jsonEncode({
          'memberID': synchrowiseUserId,
          'ownerId': groupData.groupOwner.synchrowiseId,
        }),
        headers: {HeaderKeys.contentType: HeaderValues.jsonBody},
      );

      log(result.body);

      if (result.statusCode == 200) {
        return right(unit);
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
