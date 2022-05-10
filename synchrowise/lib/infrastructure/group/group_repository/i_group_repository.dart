import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';

abstract class IGroupRepository {
  ///* Creates a group on the server with given `groupData` model
  ///*
  ///* Returns `Unit` if it is successful
  ///* Returns `GroupRepositoryFailure` if an exception occurs
  Future<Either<GroupRepositoryFailure, Unit>> create({
    required GroupData groupData,
  });

  ///* Updates the group on the server with given `groupData` model
  ///*
  ///* Returns `Unit` if it is successful
  ///* Returns `GroupRepositoryFailure` if an exception occurs
  Future<Either<GroupRepositoryFailure, Unit>> delete({
    required GroupData groupData,
  });

  ///* Gets the group from the server for given `groupId`
  ///*
  ///* Returns `GroupData` if it is successful
  ///* Returns `GroupRepositoryFailure` if an exception occurs
  Future<Either<GroupRepositoryFailure, GroupData>> getById({
    required String groupId,
  });

  ///* Gets the group of a user from the server for given `synchrowiseUserId`
  ///*
  ///* Returns `GroupData` if it is successful
  ///* Returns `GroupRepositoryFailure` if an exception occurs
  Future<Either<GroupRepositoryFailure, GroupData>> getByUserId({
    required String synchrowiseUserId,
  });
}
