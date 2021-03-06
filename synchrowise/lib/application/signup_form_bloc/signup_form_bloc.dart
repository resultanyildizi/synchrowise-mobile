import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/failure/auth_facade_failure.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/i_auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';

part 'signup_form_bloc.freezed.dart';
part 'signup_form_event.dart';
part 'signup_form_state.dart';

class SignupFormBloc extends Bloc<SignupFormEvent, SignupFormState> {
  ///* Dependencies
  final IAuthFacade _iAuthFacade;
  final ISynchrowiseUserRepository _iUserRepo;
  final ISynchrowiseUserStorage _iUserStorage;

  ///* Methods
  void signupWithEmailAndPassword() =>
      add(const SignupFormEvent.signupWithEmailAndPassword());
  void signupWithGoogle() => add(const SignupFormEvent.signupWithGoogle());
  void updateEmailText({required String email}) =>
      add(SignupFormEvent.updateEmailText(email: email));
  void updatePasswordText({required String password}) =>
      add(SignupFormEvent.updatePasswordText(password: password));
  void updateConfirmPasswordText({required String password}) =>
      add(SignupFormEvent.updateConfirmPasswordText(password: password));

  ///* Logic
  SignupFormBloc(this._iAuthFacade, this._iUserRepo, this._iUserStorage)
      : super(SignupFormState.initial()) {
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

            final confirmPassword = state.failureOrConfirmOption.fold(
              () => null,
              (foc) => foc.fold((_) => null, (c) => c),
            );

            if (email != null && password != null && confirmPassword != null) {
              final failureOrCredUser =
                  await _iAuthFacade.signUpWithEmailAndPassword(
                email: email,
                password: password,
              );

              final failureOrUser =
                  await _getAndUpdateStoredUser(failureOrCredUser);

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

            final failureOrCredUser = await _iAuthFacade.signUpWithGoogleAuth();

            final failureOrUser =
                await _getAndUpdateStoredUser(failureOrCredUser);

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

            final password = validatedPass.fold(
              (failure) {
                final password = failure.maybeMap(
                  weakPassword: (weak) => weak.password,
                  orElse: () => "",
                );
                return password;
              },
              (password) {
                return password;
              },
            );

            final newState = state.failureOrConfirmOption.fold(
              () {
                return state.copyWith(
                  failureOrPasswordOption: some(right(password)),
                );
              },
              (failureOrConfirm) {
                final confirmPass = failureOrConfirm.fold(
                  (failure) => failure.maybeMap(
                    passwordsNotSame: (value) => value.password,
                    orElse: () => null,
                  ),
                  (confirm) => confirm,
                );

                if (confirmPass != null) {
                  final validatedConfirm = validateConfirmPassword(
                    password: password,
                    confirmPassword: confirmPass,
                  );

                  return state.copyWith(
                    failureOrPasswordOption: some(right(password)),
                    failureOrConfirmOption: some(validatedConfirm),
                  );
                } else {
                  return state.copyWith(
                    failureOrPasswordOption: some(right(password)),
                  );
                }
              },
            );

            emit(newState);
          },
          updateConfirmPasswordText: (event) async {
            final newState = state.failureOrPasswordOption.fold(
              () {
                return state;
              },
              (failureOrPass) => failureOrPass.fold(
                (f) {
                  return state;
                },
                (p) {
                  final newConfPass = validateConfirmPassword(
                    password: p,
                    confirmPassword: event.password,
                  );

                  return state.copyWith(
                    failureOrConfirmOption: some(newConfPass),
                  );
                },
              ),
            );
            emit(newState);
          },
        );
      },
    );
  }

  FutureOr<Either<SynchrowiseFailure, Unit>> _getAndUpdateStoredUser(
      Either<AuthFacadeFailure, SynchrowiseUser> failureOrCredUser) async {
    return failureOrCredUser.fold(
      (failure) => left(failure),
      (credUser) async {
        final failureOrUnit =
            await _iUserRepo.create(synchrowiseUser: credUser);

        return failureOrUnit.fold(
          (failure) => left(failure),
          (_) async {
            final failureOrRepoUser =
                await _iUserRepo.getByCredUser(userFromCred: credUser);

            return failureOrRepoUser.fold(
              (failure) => left(failure),
              (repoUser) async {
                final failureOrUnit =
                    await _iUserStorage.update(user: repoUser);
                return failureOrUnit;
              },
            );
          },
        );
      },
    );
  }
}
