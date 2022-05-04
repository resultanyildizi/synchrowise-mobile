import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/failure/synchrowise_user_repository_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/core/image_facade/failure/image_failure.dart';
import 'package:synchrowise/infrastructure/core/image_facade/i_image_facade.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';
import 'package:synchrowise/infrastructure/register/failure/register_failure.dart';
import 'package:synchrowise/infrastructure/register/i_register_facade.dart';

part 'register_steps_bloc.freezed.dart';
part 'register_steps_event.dart';
part 'register_steps_state.dart';

class RegisterStepsBloc extends Bloc<RegisterStepsEvent, RegisterStepsState> {
  ///* Dependencies
  final ISynchrowiseUserRepository _iUserReposit;
  final ISynchrowiseUserStorage _iUserStorage;
  final IImageFacade _iImageFacade;

  ///* Methods
  void updateAvatarImage({
    required AndroidUiSettings androidUiSettings,
    required IOSUiSettings iosUiSettings,
  }) {
    add(RegisterStepsEvent.updateAvatarImage(
      androidUiSettings: androidUiSettings,
      iosUiSettings: iosUiSettings,
    ));
  }

  void removeAvatarImage() => add(const RegisterStepsEvent.removeAvatarImage());
  void updateUsernameText({required String username}) =>
      add(RegisterStepsEvent.updateUsernameText(username: username));
  void registerFields({required SynchrowiseUser synchrowiseUser}) {
    add(RegisterStepsEvent.registerFields(
      synchrowiseUser: synchrowiseUser,
    ));
  }

  void saveUsername() => add(const RegisterStepsEvent.saveUsername());
  void goBack() => add(const RegisterStepsEvent.goBack());
  void goNext() => add(const RegisterStepsEvent.goNext());

  ///* Logic
  RegisterStepsBloc(
    this._iUserReposit,
    this._iUserStorage,
    this._iImageFacade,
  ) : super(RegisterStepsState.initial()) {
    on<RegisterStepsEvent>(
      (event, emit) async {
        await event.map(
          registerFields: (event) async {
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
              final futures =
                  <Future<Either<SynchrowiseUserRepositoryFailure, Unit>>>[];

              futures.add(
                _iUserReposit.update(
                    synchrowiseUser: event.synchrowiseUser.copyWith(
                  username: username,
                )),
              );

              if (image != null) {
                futures.add(
                  _iUserReposit.updateAvatar(
                    avatar: image,
                    synchrowiseUser: event.synchrowiseUser,
                  ),
                );
              }

              final results = await Future.wait(futures);

              final result = results[0].andThen(results[1]);

              

              emit(state.copyWith(registerFailureOrUnitOption: some(result)));
            }
          },
          updateUsernameText: (event) {
            final validatedUsername =
                validateUsername(username: event.username.trim());

            emit(
              state.copyWith(
                failureOrUsernameOption: some(validatedUsername),
                registerFailureOrUnitOption: none(),
              ),
            );
          },
          saveUsername: (_) {
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
          },
          updateAvatarImage: (event) async {
            emit(state.copyWith(
              failureOrImageOption: none(),
              registerFailureOrUnitOption: none(),
              uploadingImage: true,
            ));

            final failureOrImage = await _iImageFacade.uploadImageFromDevice();

            final FutureOr<RegisterStepsState> newstate =
                await failureOrImage.fold(
              (failure) {
                return state.copyWith(
                  failureOrImageOption: some(failureOrImage),
                );
              },
              (rawImage) async {
                final failureOrCroppedImage = await _iImageFacade.cropImage(
                  image: rawImage,
                );

                return state.copyWith(
                  failureOrImageOption: some(failureOrCroppedImage),
                );
              },
            );

            emit(await newstate);
          },
          removeAvatarImage: (_) {
            emit(state.copyWith(
              showErrors: false,
              failureOrImageOption: none(),
              registerFailureOrUnitOption: none(),
            ));
          },
          goBack: (_) {
            assert(
              state.step > 0,
              'Cannot go back from step 0. This event must not be called from step 0.',
            );

            emit(state.copyWith(
              step: state.step > 0 ? state.step - 1 : 0,
              registerFailureOrUnitOption: none(),
            ));
          },
          goNext: (_) {
            emit(state.copyWith(
              step: 1,
              registerFailureOrUnitOption: none(),
            ));
          },
        );
      },
    );
  }
}
