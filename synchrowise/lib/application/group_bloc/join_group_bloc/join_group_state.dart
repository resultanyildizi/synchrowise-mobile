part of 'join_group_bloc.dart';

@freezed
class JoinGroupState with _$JoinGroupState {
  const JoinGroupState._();

  const factory JoinGroupState({
    required Option<Either<ValueFailure, String>> failureOrGroupKeyOption,
    required Option<Either<GroupRepositoryFailure, GroupData>>
        joinFailureOrGroupDataOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required bool showErrors,
    required bool isSubmitting,
  }) = _JoinGroupState;

  factory JoinGroupState.initial() {
    return JoinGroupState(
      joinFailureOrGroupDataOption: none(),
      storageFailureOrUnitOption: none(),
      failureOrGroupKeyOption: none(),
      showErrors: false,
      isSubmitting: false,
    );
  }

  bool get hasJoinFailed {
    return joinFailureOrGroupDataOption.fold(() => false, (r) => r.isLeft());
  }

  bool get hasStorageFailed {
    return storageFailureOrUnitOption.fold(() => false, (fos) => fos.isLeft());
  }

  bool get hasJoinSucceded {
    return joinFailureOrGroupDataOption.fold(() => false, (r) => r.isRight());
  }

  bool get hasStorageSucceded {
    return storageFailureOrUnitOption.fold(() => false, (fos) => fos.isRight());
  }
}
