import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/failure/synchrowise_user_storage_failure.dart';

abstract class ISynchrowiseUserStorage {
  ///* Reads the signed in user account from storage.
  ///*
  ///* Returns `SynchrowiseUser` if it is successful.
  ///* Returns `SynchrowiseUserStorageFailure` if an exception occurs.
  Future<Either<SynchrowiseUserStorageFailure, SynchrowiseUser>> get();

  ///* Deletes the signed in user account from storage.
  ///*
  ///* Returns `unit` if it is successful.
  ///* Returns `SynchrowiseUserStorageFailure` if an exception occurs.
  Future<Either<SynchrowiseUserStorageFailure, Unit>> delete();

  ///* Writes the signed in user account in storage.
  ///*
  ///* Returns `unit` if it is successful.
  ///* Returns `SynchrowiseUserStorageFailure` if an exception occurs.
  Future<Either<SynchrowiseUserStorageFailure, Unit>> update({
    required SynchrowiseUser user,
  });
}
