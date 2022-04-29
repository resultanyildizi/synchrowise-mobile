import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/register/failure/register_failure.dart';
import 'package:synchrowise/infrastructure/register/i_register_facade.dart';

part 'register_steps_bloc.freezed.dart';
part 'register_steps_event.dart';
part 'register_steps_state.dart';

class RegisterStepsBloc extends Bloc<RegisterStepsEvent, RegisterStepsState> {
  ///* Dependencies
  final IRegisterFacade _iRegisterFacade;

  ///* Methods
  void updateAvatarImage() => add(const RegisterStepsEvent.updateAvatarImage());
  void removeAvatarImage() => add(const RegisterStepsEvent.removeAvatarImage());
  void updateUsernameText({required String username}) =>
      add(RegisterStepsEvent.updateUsernameText(username: username));
  void registerFields() => add(const RegisterStepsEvent.registerFields());
  void saveUsername() => add(const RegisterStepsEvent.saveUsername());
  void goBack() => add(const RegisterStepsEvent.goBack());
  void goNext() => add(const RegisterStepsEvent.goNext());

  ///* Logic
  RegisterStepsBloc(this._iRegisterFacade)
      : super(RegisterStepsState.initial()) {
    on<RegisterStepsEvent>(
      (event, emit) async {
        await event.map(registerFields: (_) async {
          emit(
            state.copyWith(
              registerFailureOrUnitOption: none(),
              showErrors: true,
            ),
          );

          final username = state.failureOrUsernameOption.fold(
            () => null,
            (failureOrUsername) => failureOrUsername.fold(
              (failure) => null,
              (username) => username,
            ),
          );

          final image = state.failureOrImageOption.fold(
            () => null,
            (failureOrImage) => failureOrImage.fold(
              (failure) => null,
              (image) => image,
            ),
          );

          if (username != null) {
            final failureOrUnit = await _iRegisterFacade.registerUser(
              username: username,
              avatar: image,
            );

            emit(
              state.copyWith(
                registerFailureOrUnitOption: some(failureOrUnit),
              ),
            );
          }
        }, updateUsernameText: (event) {
          final validatedUsername =
              validateUsername(username: event.username.trim());

          emit(
            state.copyWith(
              failureOrUsernameOption: some(validatedUsername),
              registerFailureOrUnitOption: none(),
            ),
          );
        }, saveUsername: (_) {
          final username = state.failureOrUsernameOption.fold(
            () => null,
            (failureOrUsername) => failureOrUsername.fold(
                (failure) => null, (username) => username),
          );

          if (username != null) {
            emit(
              state.copyWith(
                step: 2,
                showErrors: true,
                registerFailureOrUnitOption: none(),
              ),
            );
          } else {
            emit(
              state.copyWith(
                showErrors: true,
                registerFailureOrUnitOption: none(),
              ),
            );
          }
        }, updateAvatarImage: (event) async {
          emit(state.copyWith(
            failureOrImageOption: none(),
            registerFailureOrUnitOption: none(),
            uploadingImage: true,
          ));

          final failureOrImage = await _iRegisterFacade.uploadImageFromDevice();

          emit(
            state.copyWith(
                failureOrImageOption: some(failureOrImage),
                uploadingImage: false),
          );
        }, removeAvatarImage: (_) {
          emit(state.copyWith(
            showErrors: false,
            failureOrImageOption: none(),
            registerFailureOrUnitOption: none(),
          ));
        }, goBack: (_) {
          emit(state.copyWith(
            step: state.step > 0 ? state.step - 1 : 0,
            registerFailureOrUnitOption: none(),
          ));
        }, goNext: (_) {
          emit(state.copyWith(
            step: 1,
            registerFailureOrUnitOption: none(),
          ));
        });
      },
    );
  }
}
