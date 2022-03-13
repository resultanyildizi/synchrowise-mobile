part of 'signin_form_bloc.dart';

@freezed
class SigninFormEvent with _$SigninFormEvent {
  const factory SigninFormEvent.signinWithEmailAndPassword() =
      _SigninWithEmailAndPasswordFormEvent;
  const factory SigninFormEvent.signinWithGoogle() = _SigninWithGoogleFormEvent;
  const factory SigninFormEvent.updateEmailText({required String email}) =
      _SigninUpdateEmailTextFormEvent;
  const factory SigninFormEvent.updatePasswordText({required String password}) =
      _SigninUpdatePasswordTextFormEvent;
}
