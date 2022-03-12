part of 'signup_form_bloc.dart';

@freezed
class SignupFormEvent with _$SignupFormEvent {
  const factory SignupFormEvent.signupWithEmailAndPassword(
      {required String email,
      required String password}) = _SignupWithEmailAndPasswordFormEvent;
  const factory SignupFormEvent.signupWithGoogle() = _SignupWithGoogleFormEvent;
  const factory SignupFormEvent.updateEmailText({required String email}) =
      _SignupUpdateEmailTextFormEvent;
  const factory SignupFormEvent.updatePasswordText({required String password}) =
      _SignupUpdatePasswordTextFormEvent;
}
