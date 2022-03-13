import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/infrastructure/failures/auth_failure.dart';

import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/register_steps/i_register_steps_facade.dart';

part 'register_steps_bloc.freezed.dart';
part 'register_steps_event.dart';
part 'register_steps_state.dart';

class RegisterStepsBloc extends Bloc<RegisterStepsEvent, RegisterStepsState> {
  final IRegisterStepsFacade _iRegisterStepsFacade;

  void updateImageFile() => add(const RegisterStepsEvent.updateImageFile());
  void updateUsernameText({required String username}) =>
      add(RegisterStepsEvent.updateUsernameText(username: username));
  void saveUsernameAndImage() =>
      add(const RegisterStepsEvent.saveUsernameAndImage());

  RegisterStepsBloc(
    this._iRegisterStepsFacade,
  ) : super(RegisterStepsState.initial()) {
    on<RegisterStepsEvent>((event, emit) async {
      await event.map(
        saveUsernameAndImage: (_) async {
          emit(state.copyWith(failureOrUnitOption: none(), showErrors: true));

          final username = state.failureOrUsernameOption.fold(
              () => null,
              (failureOrUsername) => failureOrUsername.fold(
                  (failure) => null, (username) => username));

          final image = state.failureOrImageOption.fold(
              () => null,
              (failureOrImage) =>
                  failureOrImage.fold((failure) => null, (image) => image));

          if (username != null) {
            final failureOrUnit =
                await _iRegisterStepsFacade.saveUsernameAndPicture(
              username: username,
              image: image,
            );

            emit(state.copyWith(
                failureOrUnitOption: some(failureOrUnit), showErrors: false));
          }
        },
        updateUsernameText: (event) {
          emit(state.copyWith(
              failureOrUsernameOption: none(), showErrors: true));

          final validatedUsername =
              validateUsername(username: event.username.trim());

          emit(
            state.copyWith(
              failureOrUsernameOption: some(validatedUsername),
              showErrors: validatedUsername.isRight() ? false : true,
            ),
          );
        },
        updateImageFile: (event) async {
          emit(state.copyWith(failureOrImageOption: none()));

          final failureOrImage = await _iRegisterStepsFacade.pickImage();

          emit(
            state.copyWith(failureOrImageOption: some(failureOrImage)),
          );
        },
      );
    });
  }
}
