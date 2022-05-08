import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'auth_facade_failure.freezed.dart';

@freezed
abstract class AuthFacadeFailure extends SynchrowiseFailure
    with _$AuthFacadeFailure {
  const factory AuthFacadeFailure.invalidCredentials() =
      _InvalidCredentialsFailure;
  const factory AuthFacadeFailure.emailAlreadyInUse() =
      _EmailAlreadyInUseFailure;

  const factory AuthFacadeFailure.signInRequired() = _SignInRequiredFailure;
  const factory AuthFacadeFailure.userNotFound() = _UserNotFoundFailure;
  const factory AuthFacadeFailure.userCancelled() = _UserCancelledFailure;
  const factory AuthFacadeFailure.userDisabled() = _UserDisabledFailure;
  const factory AuthFacadeFailure.invalidEmail() = _InvalidEmailFailure;
  const factory AuthFacadeFailure.weakPassword() = _WeakPasswordFailure;

  @Implements<UnknownSynchrowiseFailure>()
  const factory AuthFacadeFailure.unknown() = _UnknownFailure;

  @Implements<ConnectionSynchrowiseFailure>()
  const factory AuthFacadeFailure.connection() = _ConnectionFailure;
}
