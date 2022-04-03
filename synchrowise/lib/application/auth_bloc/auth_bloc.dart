import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  ///* Dependencies
  final IAuthFacade _iAuthFacade;

  ///* Methods
  void check() => add(const AuthEvent.check());
  void signout() => add(const AuthEvent.signout());

  ///* Logic
  AuthBloc(this._iAuthFacade) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map(
          check: (_) async {
            final result = await _iAuthFacade.getSignedInUser();

            log(result.toString());

            final state = result.fold(
              (_) {
                return const AuthState.unauthorized();
              },
              (synchrowiseUser) {
                return AuthState.authorized(user: synchrowiseUser);
              },
            );

            emit(state);
          },
          signout: (event) {},
        );
      },
    );
  }
}
