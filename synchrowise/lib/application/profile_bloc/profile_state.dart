part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    required Option<Either<SynchrowiseFailure, Unit>> failureOrUnitOption,
  }) = _ProfileState;

  factory ProfileState.initial() {
    return ProfileState(failureOrUnitOption: none());
  }
}
