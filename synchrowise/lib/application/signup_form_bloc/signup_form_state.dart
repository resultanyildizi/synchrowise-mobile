part of 'signup_form_bloc.dart';

@freezed
class SignupFormState with _$SignupFormState {
  const factory SignupFormState.initial() = _SignupFormInitialState;
  const factory SignupFormState.failureOrUnit(
          {required Either<AuthFailure, Unit> failureOrUnit}) =
      _SignupFormFailureOrUnitState;
  const factory SignupFormState.failureOrUser(
          {required Either<Failure, SynchrowiseUser> failureOrUser}) =
      _SignupFormFailureOrUserState;
  const factory SignupFormState.email(
          {required Either<ValueFailure, String> failureOrEmail}) =
      _SignupFormFailureOrEmailState;
  const factory SignupFormState.password(
          {required Either<ValueFailure, String> failureOrPassword}) =
      _SignupFormFailureOrPasswordState;
}
