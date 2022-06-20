import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/i_auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/socket_facade/i_socket_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  ///* Dependencies
  final IAuthFacade _iAuthFacade;
  final ISynchrowiseUserStorage _iUserStorage;
  final ISocketFacade _iSocketFacade;

  ///* Methods
  void check() => add(const AuthEvent.check());

  ///* Logic
  AuthBloc(this._iAuthFacade, this._iUserStorage, this._iSocketFacade)
      : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map(
          check: (event) async {
            final state = await _checkEventToState(event);
            emit(state);
          },
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
        return const AuthState.unauthorized();
      },
      (_) async {
        return await failureOrUser.fold(
          (f) async {
            return const AuthState.unauthorized();
          },
          (u) async {
            await _iSocketFacade.connectToSocket(u.synchrowiseId);
            return AuthState.authorized(user: u);
          },
        );
      },
    );
  }
}
