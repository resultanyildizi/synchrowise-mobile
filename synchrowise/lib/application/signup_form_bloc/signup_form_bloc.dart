import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';
import 'package:synchrowise/infrastructure/failures/failure.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/i_auth_facade.dart';

part 'signup_form_bloc.freezed.dart';
part 'signup_form_event.dart';
part 'signup_form_state.dart';

class SignupFormBloc extends Bloc<SignupFormEvent, SignupFormState> {
  final IAuthFacade _iAuthFacade;

  String _email = "";
  String _password = "";

  void signupWithEmailAndPassword(
          {required String email, required String password}) =>
      add(SignupFormEvent.signupWithEmailAndPassword(
          email: email, password: password));
  void signupWithGoogle() => add(const SignupFormEvent.signupWithGoogle());
  void updateEmailText({required String email}) =>
      add(SignupFormEvent.updateEmailText(email: email));
  void updatePasswordText({required String password}) =>
      add(SignupFormEvent.updatePasswordText(password: password));

  SignupFormBloc(
    this._iAuthFacade,
  ) : super(const SignupFormState.initial()) {
    on<SignupFormEvent>(
      (event, emit) {
        event.map(
          signupWithEmailAndPassword: (event) async {
            if (_email.isEmpty && _password.isEmpty) {
              emit(SignupFormState.failureOrUser(
                failureOrUser: left(const ValueFailure.passwordNotEmpty()),
              ));
            } else {
              final failureOrUser =
                  await _iAuthFacade.createUserWithEmailAndPassword(
                email: event.email,
                password: event.password,
              );

              failureOrUser.fold(
                (failure) => emit(SignupFormState.failureOrUser(
                    failureOrUser: left(failure))),
                (user) => emit(
                    SignupFormState.failureOrUser(failureOrUser: right(user))),
              );
            }
          },
          signupWithGoogle: (_) async {
            final failureOrUser = await _iAuthFacade.signInWithGoogleAuth();

            failureOrUser.fold(
              (failure) => emit(
                  SignupFormState.failureOrUnit(failureOrUnit: left(failure))),
              (_) => emit(
                  SignupFormState.failureOrUnit(failureOrUnit: right(unit))),
            );
          },
          updateEmailText: (event) async {
            _email = event.email.trim();
            emit(SignupFormState.email(
              failureOrEmail: validateEmail(email: _email),
            ));
          },
          updatePasswordText: (event) async {
            if (_password.isNotEmpty) {
              final failureOrPassword = validatePassword(
                password: _password,
                confirmPassword: event.password,
              );
              emit(SignupFormState.password(
                failureOrPassword: failureOrPassword,
              ));
            } else {
              _password = event.password;
            }
          },
        );
      },
    );
  }
}
