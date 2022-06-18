import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/domain/core/media.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/infrastructure/core/media_facade/i_media_picker_facade.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';
import 'package:synchrowise/infrastructure/group/group_repository/i_group_repository.dart';

part 'group_session_event.dart';
part 'group_session_state.dart';
part 'group_session_bloc.freezed.dart';

class GroupSessionBloc extends Bloc<GroupSessionEvent, GroupSessionState> {
  final IMediaPickerFacade _iMediaFacade;
  final IGroupRepository _iGroupRepo;

  void init({required GroupData groupData}) {
    add(GroupSessionEvent.init(groupData: groupData));
  }

  void uploadMedia() {
    add(GroupSessionEvent.uploadMedia());
  }

  GroupSessionBloc(
    this._iMediaFacade,
    this._iGroupRepo,
  ) : super(GroupSessionState.initial()) {
    on<GroupSessionEvent>((event, emit) async {
      await event.map(
        init: (e) async {},
        uploadMedia: (e) async {
          emit(state.copyWith(
              failureOrMediaOption: none(), isProgressing: true));

          final failureOrMedia = await _iMediaFacade.uploadFromDevice();

          final newState = failureOrMedia.fold(
            (f) {
              return state.copyWith(failureOrMediaOption: some(left(f)));
            },
            (media) {
              return state.copyWith(failureOrMediaOption: some(right(media)));
            },
          );

          emit(newState.copyWith(isProgressing: true));
        },
        removeMedia: (e) async {},
        leaveGroup: (e) async {},
        playMedia: (e) async {},
        pauseMedia: (e) async {},
        seekMedia: (e) async {},
      );
    });
  }
}
