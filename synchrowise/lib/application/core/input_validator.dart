import 'package:dartz/dartz.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';

Either<ValueFailure, String> validateEmail({required String email}) {
  const emailRegex =
      r"""^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$""";

  if (RegExp(emailRegex).hasMatch(email)) {
    return right(email);
  } else {
    return left(const ValueFailure.invalidEmail());
  }
}

Either<ValueFailure, String> validateUsername({required String username}) {
  final usernameRegex =
      RegExp(r"""^(?=.{3,15}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$""");

  if (username.length < 3) {
    return left(const ValueFailure.minLength(3));
  } else if (!usernameRegex.hasMatch(username)) {
    return left(const ValueFailure.invalidUsername());
  }
  return right(username);
}

Either<ValueFailure, String> validateConfirmPassword({
  required String password,
  required String confirmPassword,
}) {
  if (password == confirmPassword) {
    return right(confirmPassword);
  } else {
    return left(ValueFailure.passwordsNotSame(confirmPassword));
  }
}

Either<ValueFailure, String> validateSigninPassword({
  required String password,
}) {
  if (password.trim().isEmpty) {
    return left(const ValueFailure.emptyPassword());
  }

  if (password.length < 8 ||
      password.toLowerCase() == password ||
      password.toUpperCase() == password) {
    return left(ValueFailure.weakPassword(password));
  }

  return right(password);
}
