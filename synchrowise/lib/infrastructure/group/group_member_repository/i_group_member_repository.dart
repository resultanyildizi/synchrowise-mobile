import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/group/group_member_data.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';

abstract class IGroupMemberRepository {
  Future<Either<GroupRepositoryFailure, Unit>> create({
    required GroupMemberData groupMemberData,
  });

  Future<Either<GroupRepositoryFailure, Unit>> delete({
    required GroupMemberData groupMemberData,
  });
}
