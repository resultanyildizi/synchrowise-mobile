part of 'signup_form_bloc.dart';

@freezed
class SignupFormState with _$SignupFormState {
  const factory SignupFormState({
    required Option<Either<SynchrowiseFailure, Unit>> failureOrUserOption,
    required Option<Either<ValueFailure, String>> failureOrEmailOption,
    required Option<Either<ValueFailure, String>> failureOrPasswordOption,
    required Option<Either<ValueFailure, String>> failureOrConfirmOption,
    required bool showErrors,
    required bool isSigningGoogle,
    required bool isSigningEmail,
  }) = _SignupFormState;

  factory SignupFormState.initial() {
    return SignupFormState(
      failureOrUserOption: none(),
      failureOrEmailOption: none(),
      failureOrPasswordOption: none(),
      failureOrConfirmOption: none(),
      isSigningGoogle: false,
      isSigningEmail: false,
      showErrors: false,
    );
  }
}
