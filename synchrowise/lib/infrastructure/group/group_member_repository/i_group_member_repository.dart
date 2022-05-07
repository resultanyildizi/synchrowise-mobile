import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';

abstract class IGroupMemberRepository {
  Future<Either<GroupRepositoryFailure, Unit>> create({
    required SynchrowiseUser memberData,
  });

  Future<Either<GroupRepositoryFailure, Unit>> delete({
    required SynchrowiseUser memberData,
  });
}
