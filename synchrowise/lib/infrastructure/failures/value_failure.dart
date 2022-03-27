import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure with _$ValueFailure {
  const factory ValueFailure.minLength(int length) = _MinLengthFailure;
  const factory ValueFailure.maxLength(int length) = _MaxLengthFailure;
  const factory ValueFailure.invalidUsername() = _InvalidUsernameFailure;
  const factory ValueFailure.invalidEmail() = _InvalidEmailFailure;
  const factory ValueFailure.passwordsNotSame(String password) =
      _PasswordsNotSameFailure;
  const factory ValueFailure.emptyPassword() = _EmptyPasswordsFailure;
  const factory ValueFailure.weakPassword(String password) =
      _WeakPasswordFailure;
}
