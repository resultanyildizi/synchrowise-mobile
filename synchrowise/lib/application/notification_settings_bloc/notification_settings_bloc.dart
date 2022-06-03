import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/notification/failure/notification_repository_failure.dart';
import 'package:synchrowise/infrastructure/notification/i_notification_repository.dart';

part 'notification_settings_event.dart';
part 'notification_settings_state.dart';
part 'notification_settings_bloc.freezed.dart';

class NotificationSettingsBloc
    extends Bloc<NotificationSettingsEvent, NotificationSettingsState> {
  ///* Dependencies
  final INotificationRepository _iNotificationRepository;
  final ISynchrowiseUserStorage _iUserStorage;

  void updateGroupNotification() =>
      add(const NotificationSettingsEvent.updateGroupNotification());
  void updateMessageNotification() =>
      add(const NotificationSettingsEvent.updateMessageNotification());

  NotificationSettingsBloc(
    this._iNotificationRepository,
    this._iUserStorage,
  ) : super(NotificationSettingsState.initial()) {
    on<NotificationSettingsEvent>((event, emit) async {
      await event.map(
        updateGroupNotification: (_) async {
          emit(state.copyWith(failureOrUnitOption: none()));

          final failureOrUser = await _iUserStorage.get();

          final newState = await failureOrUser.fold(
            (_) async => state.copyWith(
                failureOrUnitOption: some(
                    left(const NotificationRepositoryFailure.unknown("")))),
            (user) async {
              final updatedNotifData =
                  user.notificationData.updateGroupNotification();

              final failureOrUnit = await _iNotificationRepository.update(
                notificationData: updatedNotifData,
                owner: user,
              );

              return failureOrUnit.fold(
                (failure) async =>
                    state.copyWith(failureOrUnitOption: some(left(failure))),
                (_) async {
                  final failureOrUser = await _iUserStorage.update(
                    user: user.copyWith(notifications: updatedNotifData),
                  );

                  return failureOrUser.fold(
                    (_) => state.copyWith(
                        failureOrUnitOption: some(left(
                            const NotificationRepositoryFailure.unknown("")))),
                    (_) =>
                        state.copyWith(failureOrUnitOption: some(right(unit))),
                  );
                },
              );
            },
          );

          emit(newState);
        },
        updateMessageNotification: (_) async {
          emit(state.copyWith(failureOrUnitOption: none()));

          final failureOrUser = await _iUserStorage.get();

          final newState = await failureOrUser.fold(
            (_) async => state.copyWith(
                failureOrUnitOption: some(
                    left(const NotificationRepositoryFailure.unknown("")))),
            (user) async {
              final updatedNotifData =
                  user.notificationData.updateMessageNotification();

              final failureOrUnit = await _iNotificationRepository.update(
                notificationData: updatedNotifData,
                owner: user,
              );

              return failureOrUnit.fold(
                (failure) async =>
                    state.copyWith(failureOrUnitOption: some(left(failure))),
                (_) async {
                  final failureOrUser = await _iUserStorage.update(
                    user: user.copyWith(notifications: updatedNotifData),
                  );

                  return failureOrUser.fold(
                    (_) => state.copyWith(
                        failureOrUnitOption: some(left(
                            const NotificationRepositoryFailure.unknown("")))),
                    (_) =>
                        state.copyWith(failureOrUnitOption: some(right(unit))),
                  );
                },
              );
            },
          );

          emit(newState);
        },
      );
    });
  }
}
