import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_settings_event.dart';
part 'notification_settings_state.dart';
part 'notification_settings_bloc.freezed.dart';

class NotificationSettingsBloc extends Bloc<NotificationSettingsEvent, NotificationSettingsState> {
  NotificationSettingsBloc() : super(_Initial()) {
    on<NotificationSettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
