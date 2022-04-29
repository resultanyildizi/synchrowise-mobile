import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/failure/auth_facade_failure.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/i_auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  ///* Dependencies
  final IAuthFacade _iAuthFacade;
  final ISynchrowiseUserStorage _iUserStorage;

  ///* Methods
  void check() => add(const AuthEvent.check());
  void signout() => add(const AuthEvent.signout());

  ///* Logic
  AuthBloc(this._iAuthFacade, this._iUserStorage)
      : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map(
          check: (event) async => emit(await _checkEventToState(event)),
          signout: (event) {},
        );
      },
    );
  }

  FutureOr<AuthState> _checkEventToState(AuthEvent checkEvent) async {
    final failureOrUser = await _iUserStorage.get();
    final failureOrUnit = await _iAuthFacade.checkUserExists();

    return failureOrUnit.fold(
      (f) async {
        await _iUserStorage.delete();
        return AuthState.unauthorized(failure: f);
      },
      (_) {
        return failureOrUser.fold(
          (f) => AuthState.unauthorized(failure: f),
          (user) {
            if (user == null) {
              return const AuthState.unauthorized(
                failure: AuthFacadeFailure.signInRequired(),
              );
            }

            return AuthState.authorized(user: user);
          },
        );
      },
    );
  }
}
