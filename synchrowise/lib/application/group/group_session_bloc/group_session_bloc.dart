import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/domain/core/media.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/domain/group/group_file.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/failure/synchrowise_user_storage_failure.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/core/media_facade/failure/media_failure.dart';
import 'package:synchrowise/infrastructure/core/media_facade/i_media_picker_facade.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/failure/group_file_repository_failure.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/i_group_file_repository.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';
import 'package:synchrowise/infrastructure/group/group_repository/i_group_repository.dart';
import 'package:synchrowise/infrastructure/socket_facade/i_socket_facade.dart';

part 'group_session_event.dart';
part 'group_session_state.dart';
part 'group_session_bloc.freezed.dart';

class GroupSessionBloc extends Bloc<GroupSessionEvent, GroupSessionState> {
  final IMediaPickerFacade _iMediaFacade;
  final ISynchrowiseUserStorage _iUserStorage;
  final IGroupRepository _iGroupRepo;
  final IGroupFileRepository _iGroupFileRepository;
  final ISocketFacade _iSocketFacade;

  void init({required GroupData groupData}) =>
      add(GroupSessionEvent.init(groupData: groupData));
  void uploadMedia({required GroupData groupData}) =>
      add(GroupSessionEvent.uploadMedia(groupData: groupData));
  void removeMedia() => add(GroupSessionEvent.removeMedia());
  void deleteGroup({required GroupData groupData}) =>
      add(GroupSessionEvent.deleteGroup(groupData: groupData));
  void leaveGroup({required GroupData groupData}) =>
      add(GroupSessionEvent.leaveGroup(groupData: groupData));
  void deleteMember(
          {required GroupData groupData, required UserSummary member}) =>
      add(GroupSessionEvent.deleteMember(
        groupData: groupData,
        member: member,
      ));
  void playMedia() => add(GroupSessionEvent.playMedia());
  void pauseMedia() => add(GroupSessionEvent.pauseMedia());
  void seekMedia() => add(GroupSessionEvent.seekMedia());

  GroupSessionBloc(
    this._iMediaFacade,
    this._iGroupRepo,
    this._iUserStorage,
    this._iGroupFileRepository,
    this._iSocketFacade,
  ) : super(GroupSessionState.initial()) {
    on<GroupSessionEvent>((event, emit) async {
      await event.map(
        init: (e) async {},
        uploadMedia: (e) async {
          emit(state.copyWith(
            isProgressing: true,
            failureOrMediaOption: none(),
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
              final failureOrFile = await _iGroupFileRepository.create(
                media: media.file,
                groupData: e.groupData,
              );

              return failureOrFile.fold(
                (f) async {
                  return state.copyWith(
                    fileFailureOrUnitOption: some(left(f)),
                    failureOrMediaOption: some(right(media)),
                    storageFailureOrUnitOption: some(right(unit)),
                  );
                },
                (file) async {
                  await _iSocketFacade.sendUploadMediaMessage(file.guid);
                  return state.copyWith(
                    failureOrMediaOption: some(right(media)),
                    storageFailureOrUnitOption: some(right(unit)),
                    fileFailureOrUnitOption: some(right(unit)),
                  );
                },
              );
            },
          );

          emit(newState.copyWith(isProgressing: false));
        },
        deleteGroup: (e) async {
          emit(state.copyWith(
            isProgressing: true,
            groupFailureOrUnitOption: none(),
            storageFailureOrUnitOption: none(),
            failureOrMediaOption: state.failureOrMediaOption.fold(
              () => none(),
              (a) => a.fold((l) => none(), (r) => some(a)),
            ),
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

          emit(newState.copyWith(isProgressing: false));
        },
        leaveGroup: (e) async {
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
            final failureOrUnit = await _iGroupRepo.deleteMember(
              groupData: e.groupData,
              synchrowiseUserId: user.synchrowiseId,
            );

            return await failureOrUnit.fold(
              (f) async {
                return state.copyWith(
                  groupFailureOrUnitOption: some(left(f)),
                );
              },
              (_) async {
                await _iSocketFacade.sendLeaveGroupMessage();

                return state.copyWith(
                  groupFailureOrUnitOption: some(right(unit)),
                );
              },
            );
          });

          emit(newState.copyWith(isProgressing: false));
        },
        deleteMember: (e) async {
          emit(state.copyWith(
            isProgressing: true,
            groupFailureOrUnitOption: none(),
            storageFailureOrUnitOption: none(),
          ));

          final failureOrUnit = await _iGroupRepo.deleteMember(
            groupData: e.groupData,
            synchrowiseUserId: e.member.synchrowiseId,
          );

          final newState = failureOrUnit.fold(
            (f) {
              return state.copyWith(
                groupFailureOrUnitOption: some(left(f)),
              );
            },
            (_) {
              return state.copyWith(
                groupFailureOrUnitOption: some(right(unit)),
              );
            },
          );

          emit(newState.copyWith(isProgressing: false));
        },
        playMedia: (e) async {},
        pauseMedia: (e) async {},
        seekMedia: (e) async {},
        removeMedia: (e) async {
          await _iSocketFacade.deleteFileUploadMessage();

          emit(state.copyWith(failureOrMediaOption: none()));
        },
      );
    });
  }
}
