part of 'join_group_bloc.dart';

@freezed
class JoinGroupState with _$JoinGroupState {
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
}
