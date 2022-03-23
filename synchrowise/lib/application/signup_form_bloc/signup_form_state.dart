part of 'signup_form_bloc.dart';

@freezed
class SignupFormState with _$SignupFormState {
  const factory SignupFormState({
    required Option<Either<AuthFailure, SynchrowiseUser>> failureOrUserOption,
    required Option<Either<ValueFailure, String>> failureOrEmailOption,
    required Option<Either<ValueFailure, String>> failureOrPasswordOption,
    required bool showErrors,
    required bool isSigningGoogle,
    required bool isSigningEmail,
  }) = _SignupFormState;

  factory SignupFormState.initial() {
    return SignupFormState(
      failureOrUserOption: none(),
      failureOrEmailOption: none(),
      failureOrPasswordOption: none(),
      isSigningGoogle: false,
      isSigningEmail: false,
      showErrors: false,
    );
  }
}
