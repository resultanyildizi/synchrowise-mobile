import 'package:dartz/dartz.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/failure/synchrowise_user_storage_failure.dart';

abstract class ISynchrowiseUserStorage {
  Future<Either<SynchrowiseUserStorageFailure, SynchrowiseUser?>> get();
  Future<Either<SynchrowiseUserStorageFailure, Unit>> delete();
  Future<Either<SynchrowiseUserStorageFailure, Unit>> update({
    required SynchrowiseUser user,
  });
}
