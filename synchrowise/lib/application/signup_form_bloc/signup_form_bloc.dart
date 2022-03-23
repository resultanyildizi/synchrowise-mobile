import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';
import 'package:synchrowise/infrastructure/failures/failure.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/i_auth_facade.dart';

part 'signup_form_bloc.freezed.dart';
part 'signup_form_event.dart';
part 'signup_form_state.dart';

class SignupFormBloc extends Bloc<SignupFormEvent, SignupFormState> {
  final IAuthFacade _iAuthFacade;

  void signupWithEmailAndPassword() =>
      add(const SignupFormEvent.signupWithEmailAndPassword());
  void signupWithGoogle() => add(const SignupFormEvent.signupWithGoogle());
  void updateEmailText({required String email}) =>
      add(SignupFormEvent.updateEmailText(email: email));
  void updatePasswordText({required String password}) =>
      add(SignupFormEvent.updatePasswordText(password: password));
  void updateConfirmPasswordText({required String password}) =>
      add(SignupFormEvent.updateConfirmPasswordText(password: password));

  SignupFormBloc(
    this._iAuthFacade,
  ) : super(SignupFormState.initial()) {
    on<SignupFormEvent>(
      (event, emit) async {
        await event.map(
          signupWithEmailAndPassword: (_) async {
            emit(state.copyWith(
              failureOrUserOption: none(),
              showErrors: true,
              isSigningEmail: true,
            ));

            final password = state.failureOrPasswordOption.fold(
              () => null,
              (fop) => fop.fold((_) => null, (p) => p),
            );

            final email = state.failureOrEmailOption.fold(
              () => null,
              (foe) => foe.fold((_) => null, (e) => e),
            );

            if (email != null && password != null) {
              final failureOrUser =
                  await _iAuthFacade.createUserWithEmailAndPassword(
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
          signupWithGoogle: (_) async {
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
          updateConfirmPasswordText: (event) async {
            final newState = state.failureOrPasswordOption.fold(
              () {
                log("xxxx");
                return state;
              },
              (failureOrPassw) => failureOrPassw.fold(
                (f) {
                  final newState = f.maybeMap(
                    passwordsNotSame: (vf) {
                      final newConfPass = validateConfirmPassword(
                        password: vf.password,
                        confirmPassword: event.password,
                      );

                      return state.copyWith(
                        failureOrPasswordOption: some(newConfPass),
                      );
                    },
                    orElse: () {
                      return state;
                    },
                  );

                  return newState;
                },
                (p) {
                  final newConfPass = validateConfirmPassword(
                    password: p,
                    confirmPassword: event.password,
                  );

                  return state.copyWith(
                    failureOrPasswordOption: some(newConfPass),
                  );
                },
              ),
            );

            log(newState.toString());

            emit(newState);
          },
        );
      },
    );
  }
}
