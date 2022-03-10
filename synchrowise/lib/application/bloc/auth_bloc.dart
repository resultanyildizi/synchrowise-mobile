import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;

  AuthBloc(this._iAuthFacade) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      event.map(
        check: (_) async {
          await _iAuthFacade.getSignedInUser();
        },
        signinWithGoogle: (_) async {
          await _iAuthFacade.signInWithGoogleAuth();
        },
        signout: (event) {},
      );
    });
  }
}
