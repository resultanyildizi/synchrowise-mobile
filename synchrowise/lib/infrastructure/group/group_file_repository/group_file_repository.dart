import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/failure/group_file_repository_failure.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/i_group_file_repository.dart';
import 'package:synchrowise/setup_env.dart';

class GroupFileRepository implements IGroupFileRepository {
  //* Dependencies

  //* Constructor
  GroupFileRepository();

  //* Method implementations

  @override
  Future<Either<GroupFileRepositoryFailure, Unit>> create({
    required File media,
    required GroupData groupData,
  }) async {
    try {
      final uri = Uri.parse("$apiurl/Group/${groupData.groupId}/File");

      final multipartFile = await MultipartFile.fromPath(
        "File",
        media.path,
      );

      final request = MultipartRequest("POST", uri);

      request.fields.addAll({"OwnerGuid": groupData.groupOwner.synchrowiseId});

      request.files.add(multipartFile);

      final streamed = await request.send();

      final result = await Response.fromStream(streamed);

      if (result.statusCode == 200) {
        return right(unit);
      } else {
        return left(GroupFileRepositoryFailure.server(
          result.statusCode,
          result.body,
        ));
      }
    } on SocketException catch (_) {
      return left(const GroupFileRepositoryFailure.connection());
    } catch (e) {
      return left(GroupFileRepositoryFailure.unknown(e.toString()));
    }
  }
}
