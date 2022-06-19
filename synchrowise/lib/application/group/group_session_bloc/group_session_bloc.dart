import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/domain/core/media.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/failure/synchrowise_user_storage_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/core/media_facade/failure/media_failure.dart';
import 'package:synchrowise/infrastructure/core/media_facade/i_media_picker_facade.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/failure/group_file_repository_failure.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/i_group_file_repository.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';
import 'package:synchrowise/infrastructure/group/group_repository/i_group_repository.dart';

part 'group_session_event.dart';
part 'group_session_state.dart';
part 'group_session_bloc.freezed.dart';

class GroupSessionBloc extends Bloc<GroupSessionEvent, GroupSessionState> {
  final IMediaPickerFacade _iMediaFacade;
  final ISynchrowiseUserStorage _iUserStorage;
  final IGroupRepository _iGroupRepo;
  final IGroupFileRepository _iGroupFileRepository;

  void init({required GroupData groupData}) =>
      add(GroupSessionEvent.init(groupData: groupData));
  void uploadMedia() => add(GroupSessionEvent.uploadMedia());
  void deleteGroup({required GroupData groupData}) =>
      add(GroupSessionEvent.deleteGroup(groupData: groupData));
  void playMedia() => add(GroupSessionEvent.playMedia());
  void pauseMedia() => add(GroupSessionEvent.pauseMedia());
  void seekMedia() => add(GroupSessionEvent.seekMedia());

  GroupSessionBloc(
    this._iMediaFacade,
    this._iGroupRepo,
    this._iUserStorage,
    this._iGroupFileRepository,
  ) : super(GroupSessionState.initial()) {
    on<GroupSessionEvent>((event, emit) async {
      await event.map(
        init: (e) async {},
        uploadMedia: (e) async {
          emit(state.copyWith(
            failureOrMediaOption: none(),
            isProgressing: true,
            fileFailureOrUnitOption: none(),
            storageFailureOrUnitOption: none(),
          ));

          final failureOrMedia = await _iMediaFacade.uploadFromDevice();

          final newState = await failureOrMedia.fold(
            (f) async {
              return f.maybeMap(
                pickFailure: (_) {
                  return state;
                },
                orElse: () {
                  return state.copyWith(failureOrMediaOption: some(left(f)));
                },
              );
            },
            (media) async {
              late Either<SynchrowiseUserStorageFailure, SynchrowiseUser>
                  failureOrUser;

              failureOrUser = await _iUserStorage.get();

              await failureOrUser.fold((failure) async {
                return state.copyWith(
                  storageFailureOrUnitOption: some(left(failure)),
                );
              }, (user) async {
                late Either<GroupFileRepositoryFailure, Unit> failureOrUnit;

                failureOrUnit = await _iGroupFileRepository.create(
                  media: media.file,
                  owner: user,
                );

                return failureOrUnit.fold((f) {
                  return state.copyWith(
                    fileFailureOrUnitOption: some(left(f)),
                  );
                }, (_) {
                  return state.copyWith(
                    fileFailureOrUnitOption: some(right(unit)),
                  );
                });
              });

              return state.copyWith(failureOrMediaOption: some(right(media)));
            },
          );

          emit(newState.copyWith(isProgressing: false));
        },
        removeMedia: (e) async {},
        leaveGroup: (e) async {},
        deleteGroup: (e) async {
          emit(state.copyWith(
            isProgressing: true,
            groupFailureOrUnitOption: none(),
            storageFailureOrUnitOption: none(),
          ));

          final failureOrUser = await _iUserStorage.get();

          final newState = await failureOrUser.fold((failure) async {
            return state.copyWith(
              storageFailureOrUnitOption: some(left(failure)),
            );
          }, (user) async {
            late Either<GroupRepositoryFailure, Unit> failureOrUnit;

            failureOrUnit = await _iGroupRepo.delete(
              groupData: e.groupData,
              synchrowiseUserId: user.synchrowiseId,
            );

            return failureOrUnit.fold((f) {
              return state.copyWith(
                groupFailureOrUnitOption: some(left(f)),
              );
            }, (_) {
              return state.copyWith(
                groupFailureOrUnitOption: some(right(unit)),
              );
            });
          });

          emit(newState.copyWith(isProgressing: true));
        },
        playMedia: (e) async {},
        pauseMedia: (e) async {},
        seekMedia: (e) async {},
      );
    });
  }
}
