part of 'signin_form_bloc.dart';

@freezed
class SigninFormState with _$SigninFormState {
  const factory SigninFormState({
    required Option<Either<AuthFailure, SynchrowiseUser>> failureOrUserOption,
    required Option<Either<ValueFailure, String>> failureOrEmailOption,
    required Option<Either<ValueFailure, String>> failureOrPasswordOption,
  }) = _SigninFormState;

  factory SigninFormState.initial() {
    return SigninFormState(
      failureOrUserOption: none(),
      failureOrEmailOption: none(),
      failureOrPasswordOption: none(),
    );
  }
}
