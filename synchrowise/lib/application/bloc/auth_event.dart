part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.check() = _AuthCheckEvent;
  const factory AuthEvent.signout() = _AuthSignoutEvent;
  const factory AuthEvent.signinWithGoogle() = _AuthSigninWithGoogle;
}
