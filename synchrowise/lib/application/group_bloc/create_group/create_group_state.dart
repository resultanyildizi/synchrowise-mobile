part of 'create_group_bloc.dart';

@freezed
class CreateGroupState with _$CreateGroupState {
  const factory CreateGroupState({
    required Option<Either<GroupRepositoryFailure, Unit>>
        submitFailureOrUnitOption,
    required Option<Either<SynchrowiseUserStorageFailure, Unit>>
        storageFailureOrUnitOption,
    required Option<Either<ValueFailure, String>> failureOrGroupKeyOption,
    required Option<Either<ValueFailure, String>> failureOrGroupDescOption,
    required bool showErrors,
    required bool progressing,
    required int step,
  }) = _CreateGroupState;

  factory CreateGroupState.initial() {
    return CreateGroupState(
      storageFailureOrUnitOption: none(),
      submitFailureOrUnitOption: none(),
      failureOrGroupKeyOption: none(),
      failureOrGroupDescOption: none(),
      progressing: false,
      showErrors: false,
      step: 0,
    );
  }
}
