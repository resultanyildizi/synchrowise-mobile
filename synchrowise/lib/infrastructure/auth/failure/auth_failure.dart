import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/failure.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure implements Failure {
  const factory AuthFailure.invalidCredentials() = _InvalidCredentialsFailure;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUseFailure;
  const factory AuthFailure.signInRequired() = _SignInRequiredFailure;
  const factory AuthFailure.serverInternal() = _ServerInternalFailure;
  const factory AuthFailure.userCancelled() = _UserCancelledFailure;
  const factory AuthFailure.userDisabled() = _UserDisabledFailure;
  const factory AuthFailure.invalidEmail() = _InvalidEmailFailure;
  const factory AuthFailure.weakPassword() = _WeakPasswordFailure;
  const factory AuthFailure.connection() = _ConnectionFailure;
  const factory AuthFailure.unknown() = _UnknownFailure;
}
