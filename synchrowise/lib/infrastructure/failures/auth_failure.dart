import 'package:equatable/equatable.dart';

abstract class AuthFailure extends Equatable {
  const AuthFailure();
  @override
  List<Object?> get props => [];
}

class InvalidCredentialsFailure extends AuthFailure {
  const InvalidCredentialsFailure();
}

class UserDisabledFailure extends AuthFailure {
  const UserDisabledFailure();
}

class InvalidEmailFailure extends AuthFailure {
  const InvalidEmailFailure();
}

class EmailAlreadyInUseFailure extends AuthFailure {
  const EmailAlreadyInUseFailure();
}

class WeakPasswordFailure extends AuthFailure {
  const WeakPasswordFailure();
}

class UserCancelledFailure extends AuthFailure {
  const UserCancelledFailure();
}

class RequiredRecentLoginFailure extends AuthFailure {
  const RequiredRecentLoginFailure();
}

class UnkownAuthFailure extends AuthFailure {
  const UnkownAuthFailure();
}
