import 'package:sembast/sembast.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/failure/synchrowise_user_storage_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';

class SyncrowiseUserSembastStorage implements ISynchrowiseUserStorage {
  final Database _database;
  final StoreRef<String, Map<String, dynamic>?> _storeRef;

  const SyncrowiseUserSembastStorage(this._database, this._storeRef);

  @override
  Future<Either<SynchrowiseUserStorageFailure, SynchrowiseUser>> get() async {
    try {
      final record = _storeRef.record('syncrowise_user');
      final data = await record.get(_database);

      if (data == null) return left(const SynchrowiseUserStorageFailure.get());

      return right(SynchrowiseUser.fromMap(data));
    } catch (_) {
      return left(const SynchrowiseUserStorageFailure.get());
    }
  }

  @override
  Future<Either<SynchrowiseUserStorageFailure, Unit>> delete() async {
    try {
      final record = _storeRef.record('syncrowise_user');
      await record.delete(_database);

      return right(unit);
    } catch (_) {
      return left(const SynchrowiseUserStorageFailure.delete());
    }
  }

  @override
  Future<Either<SynchrowiseUserStorageFailure, Unit>> update({
    required SynchrowiseUser user,
  }) async {
    try {
      final record = _storeRef.record('syncrowise_user');

      final data = user.toMap();
      await record.put(_database, data, merge: true);

      return right(unit);
    } catch (_) {
      return left(const SynchrowiseUserStorageFailure.update());
    }
  }
}
