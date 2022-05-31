part of 'contact_us_bloc.dart';

@freezed
class ContactUsState with _$ContactUsState {
  const factory ContactUsState({
    required Option<Either<SynchrowiseFailure, Unit>> sendFailureOrUnitOption,
    required Option<Either<ValueFailure, String>> failureOrEmailOption,
    required Option<Either<ValueFailure, String>> failureOrSubjectOption,
    required Option<Either<ValueFailure, String>> failureOrMessageOption,
    required bool showErrors,
    required bool isSending,
  }) = _ContactUsState;

  factory ContactUsState.initial() {
    return ContactUsState(
      sendFailureOrUnitOption: none(),
      failureOrEmailOption: none(),
      failureOrSubjectOption: none(),
      failureOrMessageOption: none(),
      showErrors: false,
      isSending: false,
    );
  }
}
