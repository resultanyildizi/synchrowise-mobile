import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/i_auth_facade.dart';

part 'signin_form_bloc.freezed.dart';
part 'signin_form_event.dart';
part 'signin_form_state.dart';

class SigninFormBloc extends Bloc<SigninFormEvent, SigninFormState> {
  final IAuthFacade _iAuthFacade;

  void signupWithEmailAndPassword() =>
      add(const SigninFormEvent.signinWithEmailAndPassword());
  void signupWithGoogle() => add(const SigninFormEvent.signinWithGoogle());
  void updateEmailText({required String email}) =>
      add(SigninFormEvent.updateEmailText(email: email));
  void updatePasswordText({required String password}) =>
      add(SigninFormEvent.updatePasswordText(password: password));
  void updateConfirmPasswordText({required String password}) =>
      add(SigninFormEvent.updatePasswordText(password: password));

  SigninFormBloc(
    this._iAuthFacade,
  ) : super(SigninFormState.initial()) {
    on<SigninFormEvent>((event, emit) async {
      await event.map(
        signinWithEmailAndPassword: (_) async {
          emit(state.copyWith(
            failureOrUserOption: none(),
            showErrors: true,
            isSigningEmail: true,
          ));

          final email = state.failureOrEmailOption.fold(
            () => null,
            (failureOrEmail) =>
                failureOrEmail.fold((_) => null, (email) => email),
          );

          final password = state.failureOrPasswordOption.fold(
            () => null,
            (failureOrPassword) =>
                failureOrPassword.fold((_) => null, (email) => email),
          );

          if (email != null && password != null) {
            final failureOrUser = await _iAuthFacade.signInWithEmailAndPassword(
              email: email,
              password: password,
            );

            emit(state.copyWith(
              failureOrUserOption: some(failureOrUser),
              isSigningEmail: false,
            ));
          } else {
            emit(state.copyWith(isSigningEmail: false));
          }
        },
        signinWithGoogle: (_) async {
          emit(state.copyWith(
            failureOrUserOption: none(),
            isSigningGoogle: true,
          ));

          final failureOrUser = await _iAuthFacade.signInWithGoogleAuth();

          emit(state.copyWith(
            failureOrUserOption: some(failureOrUser),
            isSigningGoogle: false,
          ));
        },
        updateEmailText: (event) async {
          final validatedEmail = validateEmail(email: event.email);
          final newstate = state.copyWith(
            failureOrUserOption: none(),
            failureOrEmailOption: some(validatedEmail),
          );
          emit(newstate);
        },
        updatePasswordText: (event) async {
          final validatedPass =
              validateSigninPassword(password: event.password);

          final newstate = state.copyWith(
            failureOrUserOption: none(),
            failureOrPasswordOption: some(validatedPass),
          );

          emit(newstate);
        },
      );
    });
  }
}
