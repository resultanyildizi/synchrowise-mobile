import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'synchrowise_user_storage_failure.freezed.dart';

@freezed
abstract class SynchrowiseUserStorageFailure extends SynchrowiseFailure
    with _$SynchrowiseUserStorageFailure {
  @Implements<UnauthorizedSynchrowiseFailure>()
  const factory SynchrowiseUserStorageFailure.get() = _GetFailure;
  @Implements<UnknownSynchrowiseFailure>()
  const factory SynchrowiseUserStorageFailure.delete() = _DeleteFailure;
  @Implements<UnknownSynchrowiseFailure>()
  const factory SynchrowiseUserStorageFailure.update() = _UpdateFailure;
}
