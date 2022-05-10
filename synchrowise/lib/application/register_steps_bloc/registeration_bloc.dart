import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:synchrowise/application/core/input_validator.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/failure/avatar_failure.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/i_avatar_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/failure/synchrowise_user_repository_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/failure/synchrowise_user_storage_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/core/image_facade/failure/image_failure.dart';
import 'package:synchrowise/infrastructure/core/image_facade/i_image_facade.dart';
import 'package:synchrowise/infrastructure/failures/value_failure.dart';

part 'registeration_bloc.freezed.dart';
part 'registeration_event.dart';
part 'registeration_state.dart';

class RegisterationBloc extends Bloc<RegisterationEvent, RegisterationState> {
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
    add(RegisterationEvent.updateAvatarImage(
      androidUiSettings: androidUiSettings,
      iosUiSettings: iosUiSettings,
    ));
  }

  void removeAvatarImage() => add(const RegisterationEvent.removeAvatarImage());
  void updateUsernameText({required String username}) =>
      add(RegisterationEvent.updateUsernameText(username: username));
  void registerFields({required SynchrowiseUser synchrowiseUser}) {
    add(const RegisterationEvent.registerFields());
  }

  void saveUsername() => add(const RegisterationEvent.saveUsername());
  void goBack() => add(const RegisterationEvent.goBack());
  void goNext() => add(const RegisterationEvent.goNext());

  ///* Logic
  RegisterationBloc(
    this._iUserRepo,
    this._iAvatarRepo,
    this._iUserStorage,
    this._iImageFacade,
  ) : super(RegisterationState.initial()) {
    on<RegisterationEvent>(
      (event, emit) async {
        await event.map(
          registerFields: (event) async {
            emit(
              state.copyWith(
                avatarFailureOrAvatarOption: none(),
                storageFailureOrUnitOption: none(),
                usernameFailureOrUnitOption: none(),
                imageFailureOrImageOption: state.imageFailureOrImageOption.fold(
                  () => none(),
                  (foi) => foi.fold((l) => none(), (i) => some(right(i))),
                ),
                showErrors: true,
                progressing: true,
              ),
            );

            final image = state.imageFailureOrImageOption.fold(
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
                    owner: user,
                  );

                  return failureOrAvatar.fold(
                    (f) async {
                      return state.copyWith(
                          avatarFailureOrAvatarOption: some(left(f)));
                    },
                    (avatar) async {
                      final updateFailureOrUnit = await _iUserStorage.update(
                        user: user.copyWith(avatar: avatar),
                      );

                      return updateFailureOrUnit.fold(
                        (f) {
                          return state.copyWith(
                            storageFailureOrUnitOption: some(left(f)),
                            avatarFailureOrAvatarOption: some(right(unit)),
                            usernameFailureOrUnitOption: some(right(unit)),
                          );
                        },
                        (r) {
                          return state.copyWith(
                            avatarFailureOrAvatarOption: some(right(unit)),
                            storageFailureOrUnitOption: some(right(unit)),
                            usernameFailureOrUnitOption: some(right(unit)),
                          );
                        },
                      );
                    },
                  );
                },
              );

              emit(newState.copyWith(progressing: false));
            } else {
              emit(
                state.copyWith(
                  progressing: false,
                  avatarFailureOrAvatarOption: some(right(unit)),
                  storageFailureOrUnitOption: some(right(unit)),
                  usernameFailureOrUnitOption: some(right(unit)),
                ),
              );
            }
          },
          updateUsernameText: (event) {
            final validatedUsername =
                validateUsername(username: event.username.trim());

            emit(state.copyWith(
              valueFailureOrUsernameOption: some(validatedUsername),
              usernameFailureOrUnitOption: none(),
              storageFailureOrUnitOption: none(),
              avatarFailureOrAvatarOption: none(),
              imageFailureOrImageOption: state.imageFailureOrImageOption.fold(
                () => none(),
                (foi) => foi.fold((l) => none(), (i) => some(right(i))),
              ),
            ));
          },
          saveUsername: (_) async {
            final username = state.valueFailureOrUsernameOption.fold(
              () => null,
              (failureOrUsername) => failureOrUsername.fold(
                  (failure) => null, (username) => username),
            );

            if (username != null) {
              emit(state.copyWith(
                progressing: true,
                usernameFailureOrUnitOption: none(),
                storageFailureOrUnitOption: none(),
                avatarFailureOrAvatarOption: none(),
                imageFailureOrImageOption: state.imageFailureOrImageOption.fold(
                  () => none(),
                  (foi) => foi.fold((l) => none(), (i) => some(right(i))),
                ),
              ));

              final failureOrUser = await _iUserStorage.get();

              final newState = await failureOrUser.fold(
                (f) async {
                  return state.copyWith(
                      storageFailureOrUnitOption: some(left(f)));
                },
                (user) async {
                  final usernameFailureOrUnit = await _iUserRepo.update(
                      synchrowiseUser: user.copyWith(username: username));

                  if (user.username == username) {
                    return state.copyWith(
                      usernameFailureOrUnitOption: some(right(unit)),
                      step: 2,
                    );
                  }

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

              emit(newState.copyWith(showErrors: true, progressing: false));
            }
          },
          updateAvatarImage: (event) async {
            emit(state.copyWith(
              imageFailureOrImageOption: none(),
              storageFailureOrUnitOption: none(),
              avatarFailureOrAvatarOption: none(),
              usernameFailureOrUnitOption: none(),
              progressing: true,
            ));

            final failureOrImage = await _iImageFacade.uploadImageFromDevice();

            final FutureOr<RegisterationState> newstate =
                await failureOrImage.fold(
              (failure) {
                return state.copyWith(
                  progressing: false,
                  imageFailureOrImageOption: some(failureOrImage),
                );
              },
              (rawImage) async {
                final failureOrCroppedImage = await _iImageFacade.cropImage(
                  image: rawImage,
                  androidUiSettings: event.androidUiSettings,
                  iosUiSettings: event.iosUiSettings,
                );

                return state.copyWith(
                  progressing: false,
                  imageFailureOrImageOption: some(failureOrCroppedImage),
                );
              },
            );

            emit(await newstate);
          },
          removeAvatarImage: (_) {
            emit(state.copyWith(
              showErrors: false,
              imageFailureOrImageOption: none(),
              storageFailureOrUnitOption: none(),
              avatarFailureOrAvatarOption: none(),
              usernameFailureOrUnitOption: none(),
            ));
          },
          goBack: (_) {
            assert(
              state.step > 0,
              'Cannot go back from step 0. This event must not be called from step 0.',
            );

            emit(
              state.copyWith(
                step: state.step > 0 ? state.step - 1 : 0,
                storageFailureOrUnitOption: none(),
                avatarFailureOrAvatarOption: none(),
                usernameFailureOrUnitOption: none(),
                imageFailureOrImageOption: state.imageFailureOrImageOption.fold(
                  () => none(),
                  (foi) => foi.fold((l) => none(), (i) => some(right(i))),
                ),
              ),
            );
          },
          goNext: (_) {
            emit(state.copyWith(
              step: 1,
              storageFailureOrUnitOption: none(),
              avatarFailureOrAvatarOption: none(),
              usernameFailureOrUnitOption: none(),
              imageFailureOrImageOption: state.imageFailureOrImageOption.fold(
                () => none(),
                (foi) => foi.fold((l) => none(), (i) => some(right(i))),
              ),
            ));
          },
        );
      },
    );
  }
}
