import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/failure.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure implements Failure {
  const factory AuthFailure.invalidCredentials() = _InvalidCredentialsFailure;
  const factory AuthFailure.userDisabled() = _UserDisabledFailure;
  const factory AuthFailure.invalidEmail() = _InvalidEmailFailure;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.weakPassword() = _WeakPassword;
  const factory AuthFailure.userCancelled() = _UserCancelled;
  const factory AuthFailure.signInRequired() = _SignInRequired;
  const factory AuthFailure.connection() = _Connection;
  const factory AuthFailure.unknown() = _Unknown;
}
