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

part 'signin_form_bloc.freezed.dart';
part 'signin_form_event.dart';
part 'signin_form_state.dart';

class SigninFormBloc extends Bloc<SigninFormEvent, SigninFormState> {
  ///* Dependencies
  final IAuthFacade _iAuthFacade;
  final ISynchrowiseUserRepository _iUserRepo;
  final ISynchrowiseUserStorage _iStorage;

  ///* Methods
  void signupWithEmailAndPassword() =>
      add(const SigninFormEvent.signinWithEmailAndPassword());
  void signupWithGoogle() => add(const SigninFormEvent.signinWithGoogle());
  void updateEmailText({required String email}) =>
      add(SigninFormEvent.updateEmailText(email: email));
  void updatePasswordText({required String password}) =>
      add(SigninFormEvent.updatePasswordText(password: password));
  void updateConfirmPasswordText({required String password}) =>
      add(SigninFormEvent.updatePasswordText(password: password));

  ///* Logic
  SigninFormBloc(this._iAuthFacade, this._iUserRepo, this._iStorage)
      : super(SigninFormState.initial()) {
    on<SigninFormEvent>(
      (event, emit) async {
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
              final failureOrCredUser =
                  await _iAuthFacade.signInWithEmailAndPassword(
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
          signinWithGoogle: (_) async {
            emit(state.copyWith(
              failureOrUserOption: none(),
              isSigningGoogle: true,
            ));

            final failureOrCredUser = await _iAuthFacade.signInWithGoogleAuth();

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

            final newstate = state.copyWith(
              failureOrUserOption: none(),
              failureOrPasswordOption: some(validatedPass),
            );

            emit(newstate);
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
        final failureOrRepoUser =
            await _iUserRepo.getByCredUser(userFromCred: credUser);

        return failureOrRepoUser.fold(
          (failure) => left(failure),
          (repoUser) async {
            final failureOrUnit = await _iStorage.update(user: repoUser);
            return failureOrUnit;
          },
        );
      },
    );
  }
}
