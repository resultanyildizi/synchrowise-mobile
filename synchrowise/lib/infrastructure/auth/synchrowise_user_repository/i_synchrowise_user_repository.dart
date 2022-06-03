import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/failure/synchrowise_user_repository_failure.dart';

abstract class ISynchrowiseUserRepository {
  ///* Creates a user on the server with given `synchrowiseUser` model.
  ///*
  ///* Returns `Unit` if it is successful.
  ///* Returns `SynchrowiseUserRepositoryFailure` if an exception occurs.
  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> create({
    required SynchrowiseUser synchrowiseUser,
  });

  ///* Updates the user on the server with given `synchrowiseUser` model.
  ///*
  ///* Returns `Unit` if it is successful.
  ///* Returns `SynchrowiseUserRepositoryFailure` if an exception occurs.
  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> update({
    required SynchrowiseUser synchrowiseUser,
  });

  ///* Deletes the user on the server with given `synchrowiseUser` model.
  ///*
  ///* Returns `Unit` if it is successful.
  ///* Returns `SynchrowiseUserRepositoryFailure` if an exception occurs.
  Future<Either<SynchrowiseUserRepositoryFailure, Unit>> delete({
    required SynchrowiseUser synchrowiseUser,
  });

  ///* Gets the user from the server for given `userFromCred` model.
  ///*
  ///* Returns `SynchrowiseUser` if it is successful.
  ///* Returns `SynchrowiseUserRepositoryFailure` if an exception occurs.
  Future<Either<SynchrowiseUserRepositoryFailure, SynchrowiseUser>>
      getByCredUser({
    required SynchrowiseUser userFromCred,
  });
}
