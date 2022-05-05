import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';

abstract class IGroupRepository {
  Future<Either<GroupRepositoryFailure, Unit>> create({
    required GroupData groupData,
  });

  Future<Either<GroupRepositoryFailure, Unit>> delete({
    required GroupData groupData,
  });

  Future<Either<GroupRepositoryFailure, GroupData>> getById({
    required String groupId,
  });

  Future<Either<GroupRepositoryFailure, GroupData>> getByUserId({
    required String synchrowiseUserId,
  });
}
