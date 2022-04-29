part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitialState;

  const factory AuthState.unauthorized({
    required SynchrowiseFailure failure,
  }) = _AuthUnauthorizedState;

  const factory AuthState.authorized({required SynchrowiseUser user}) =
      _AuthAuthorizedState;
}
