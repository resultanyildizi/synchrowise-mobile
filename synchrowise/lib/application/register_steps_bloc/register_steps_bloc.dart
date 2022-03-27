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

  ///* Logic
  RegisterStepsBloc(this._iRegisterFacade)
      : super(RegisterStepsState.initial()) {
    on<RegisterStepsEvent>(
      (event, emit) async {
        await event.map(
            registerFields: (_) async {
              emit(
                state.copyWith(
                  registerFailureOrUnitOption: none(),
                  showErrors: true,
                ),
              );

              final username = state.failureOrUsernameOption.fold(
                  () => null,
                  (failureOrUsername) => failureOrUsername.fold(
                      (failure) => null, (username) => username));

              final image = state.failureOrImageOption.fold(
                  () => null,
                  (failureOrImage) =>
                      failureOrImage.fold((failure) => null, (image) => image));

              if (username != null) {
                final failureOrUnit = await _iRegisterFacade.registerUser(
                  username: username,
                  avatar: image,
                );

                emit(
                  state.copyWith(
                    registerFailureOrUnitOption: some(failureOrUnit),
                    showErrors: true,
                  ),
                );
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
            updateAvatarImage: (event) async {
              emit(state.copyWith(failureOrImageOption: none()));

              final failureOrImage =
                  await _iRegisterFacade.uploadImageFromDevice();

              emit(
                state.copyWith(failureOrImageOption: some(failureOrImage)),
              );
            },
            removeAvatarImage: (_) {},
            goBack: (_) {});
      },
    );
  }
}
