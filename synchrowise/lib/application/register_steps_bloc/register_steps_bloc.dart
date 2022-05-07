import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/domain/auth/avatar.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/failure/avatar_failure.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/i_avatar_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/failure/synchrowise_user_repository_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/failure/synchrowise_user_storage_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/core/image_facade/failure/image_failure.dart';
import 'package:synchrowise/infrastructure/core/image_facade/i_image_facade.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';

part 'register_steps_bloc.freezed.dart';
part 'register_steps_event.dart';
part 'register_steps_state.dart';

class RegisterStepsBloc extends Bloc<RegisterStepsEvent, RegisterStepsState> {
  ///* Dependencies
  final ISynchrowiseUserRepository _iUserRepo;
  final ISynchrowiseUserStorage _iUserStorage;
  final IAvatarRepository _iAvatarRepo;
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
    add(const RegisterStepsEvent.registerFields());
  }

  void saveUsername() => add(const RegisterStepsEvent.saveUsername());
  void goBack() => add(const RegisterStepsEvent.goBack());
  void goNext() => add(const RegisterStepsEvent.goNext());

  ///* Logic
  RegisterStepsBloc(
    this._iUserRepo,
    this._iAvatarRepo,
    this._iUserStorage,
    this._iImageFacade,
  ) : super(RegisterStepsState.initial()) {
    on<RegisterStepsEvent>(
      (event, emit) async {
        await event.map(
          registerFields: (event) async {
            emit(
              state.copyWith(
                failureOrAvatarOption: none(),
                storageFailureOrUnitOption: none(),
                showErrors: true,
              ),
            );

            final image = state.failureOrImageOption.fold(
              () => null,
              (failureOrImage) => failureOrImage.fold(
                (failure) => null,
                (image) => image,
              ),
            );

            if (image != null) {
              final failureOrUser = await _iUserStorage.get();

              final newState = await failureOrUser.fold(
                (f) async {
                  return state.copyWith(
                    storageFailureOrUnitOption: some(left(f)),
                  );
                },
                (user) async {
                  final failureOrAvatar = await _iAvatarRepo.create(
                    avatar: image,
                    ownerId: user.synchrowiseId,
                  );

                  return failureOrAvatar.fold(
                    (f) async {
                      return state.copyWith(
                          failureOrAvatarOption: some(left(f)));
                    },
                    (avatar) async {
                      final updateFailureOrUnit = await _iUserStorage.update(
                        user: user.copyWith(avatar: avatar),
                      );

                      return updateFailureOrUnit.fold(
                        (f) {
                          return state.copyWith(
                            storageFailureOrUnitOption: some(left(f)),
                            failureOrAvatarOption: some(right(unit)),
                          );
                        },
                        (r) {
                          return state.copyWith(
                            failureOrAvatarOption: some(right(unit)),
                            storageFailureOrUnitOption: some(right(unit)),
                          );
                        },
                      );
                    },
                  );
                },
              );

              emit(newState);
            } else {
              emit(
                state.copyWith(
                  failureOrAvatarOption: some(right(unit)),
                  storageFailureOrUnitOption: some(right(unit)),
                ),
              );
            }
          },
          updateUsernameText: (event) {
            final validatedUsername =
                validateUsername(username: event.username.trim());

            emit(state.copyWith(
                failureOrUsernameOption: some(validatedUsername)));
          },
          saveUsername: (_) async {
            final username = state.failureOrUsernameOption.fold(
              () => null,
              (failureOrUsername) => failureOrUsername.fold(
                  (failure) => null, (username) => username),
            );

            if (username != null) {
              final failureOrUser = await _iUserStorage.get();

              final newState = await failureOrUser.fold(
                (f) async {
                  return state.copyWith(
                      storageFailureOrUnitOption: some(left(f)));
                },
                (user) async {
                  final usernameFailureOrUnit = await _iUserRepo.update(
                      synchrowiseUser: user.copyWith(username: username));

                  return await usernameFailureOrUnit.fold(
                    (f) async => state.copyWith(
                        usernameFailureOrUnitOption: some(left(f))),
                    (_) async {
                      final updatefailureOrUnit = await _iUserStorage.update(
                        user: user.copyWith(username: username),
                      );

                      return updatefailureOrUnit.fold(
                        (f) {
                          return state.copyWith(
                            usernameFailureOrUnitOption: some(right(unit)),
                            storageFailureOrUnitOption: some(left(f)),
                          );
                        },
                        (_) {
                          return state.copyWith(
                            usernameFailureOrUnitOption: some(right(unit)),
                            storageFailureOrUnitOption: some(right(unit)),
                            step: 2,
                          );
                        },
                      );
                    },
                  );
                },
              );

              emit(newState.copyWith(showErrors: true));
            } else {
              emit(state.copyWith(showErrors: true));
            }
          },
          updateAvatarImage: (event) async {
            emit(state.copyWith(
              failureOrImageOption: none(),
              uploadingImage: true,
            ));

            final failureOrImage = await _iImageFacade.uploadImageFromDevice();

            final FutureOr<RegisterStepsState> newstate =
                await failureOrImage.fold(
              (failure) {
                return state.copyWith(
                  uploadingImage: false,
                  failureOrImageOption: some(failureOrImage),
                );
              },
              (rawImage) async {
                final failureOrCroppedImage = await _iImageFacade.cropImage(
                  image: rawImage,
                  androidUiSettings: event.androidUiSettings,
                  iosUiSettings: event.iosUiSettings,
                );

                return state.copyWith(
                  uploadingImage: false,
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
            ));
          },
          goBack: (_) {
            assert(
              state.step > 0,
              'Cannot go back from step 0. This event must not be called from step 0.',
            );

            emit(state.copyWith(step: state.step > 0 ? state.step - 1 : 0));
          },
          goNext: (_) {
            emit(state.copyWith(step: 1));
          },
        );
      },
    );
  }

  Future<Either<SynchrowiseUserStorageFailure, Unit>?> _updateUserInStorage(
    SynchrowiseUser synchrowiseUser,
    Either<SynchrowiseUserRepositoryFailure, Unit> updateFailureOrUnit,
    Either<AvatarRepositoryFailure, Avatar>? failureOrAvatar,
  ) async {
    final newSyncrowiseUser = updateFailureOrUnit.fold(
      (_) {
        return null;
      },
      (_) {
        return failureOrAvatar?.fold(
              (l) => null,
              (avatar) => synchrowiseUser.copyWith(avatar: avatar),
            ) ??
            synchrowiseUser;
      },
    );

    if (newSyncrowiseUser != null) {
      return await _iUserStorage.update(user: newSyncrowiseUser);
    }
    return null;
  }
}
