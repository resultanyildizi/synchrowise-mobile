import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/failures/failure.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure with _$ValueFailure implements Failure {
  const factory ValueFailure.minLength(int length) = _MinLengthFailure;
  const factory ValueFailure.maxLength(int length) = _MaxLengthFailure;
  const factory ValueFailure.invalidUsername() = _InvalidUsernameFailure;
  const factory ValueFailure.invalidEmail() = _InvalidEmailFailure;
  const factory ValueFailure.passwordsNotSame() = _PasswordsNotSameFailure;
  const factory ValueFailure.emptyPassword() = _EmptyPasswordsFailure;
}
