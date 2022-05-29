import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';
import 'package:synchrowise/infrastructure/group/group_repository/failure/group_repository_failure.dart';
import 'package:synchrowise/infrastructure/group/group_repository/i_group_repository.dart';

part 'get_group_event.dart';
part 'get_group_state.dart';
part 'get_group_bloc.freezed.dart';

class GetGroupBloc extends Bloc<GetGroupEvent, GetGroupState> {
  final IGroupRepository _iGroupRepository;
  final ISynchrowiseUserStorage _iUserStorage;

  void fetch() => add(const GetGroupEvent.fetch());

  GetGroupBloc(this._iGroupRepository, this._iUserStorage)
      : super(const _GetGroupInitialState()) {
    on<GetGroupEvent>(
      (event, emit) async {
        await event.map(
          fetch: (_) async {
            emit(const _GetGroupLoadingState());

            final userOrFailure = await _iUserStorage.get();

            final newState = await userOrFailure.fold(
              (failure) async {
                return _GetGroupFailureState(failure: failure);
              },
              (user) async {
                final failureOrGroupData = await _iGroupRepository.getByUserId(
                  synchrowiseUserId: user.synchrowiseId,
                );

                log(failureOrGroupData.toString());

                return failureOrGroupData.fold(
                  (failure) => _GetGroupFailureState(failure: failure),
                  (groupData) => _GetGroupLoadedState(groupData: groupData),
                );
              },
            );

            emit(newState);
          },
        );
      },
    );
  }
}
