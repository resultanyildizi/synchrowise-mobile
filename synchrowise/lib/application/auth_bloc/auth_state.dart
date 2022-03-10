part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitialState;

  const factory AuthState.unauthorized() = _AuthUnauthorizedState;

  const factory AuthState.authorized({required SynchrowiseUser user}) =
      _AuthAuthorizedState;
}
