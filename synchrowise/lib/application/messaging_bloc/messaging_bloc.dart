import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/domain/messaging/synchrowise_message.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/messaging/i_synchrowise_messaging.dart';

part 'messaging_event.dart';
part 'messaging_state.dart';
part 'messaging_bloc.freezed.dart';

class MessagingBloc extends Bloc<MessagingEvent, MessagingState> {
  final ISynchrowiseMessaging _iMessaging;
  final ISynchrowiseUserRepository _iUserRepository;
  final ISynchrowiseUserStorage _iUserStorage;

  StreamSubscription<String?>? _tokenSubscription;

  void start() {
    add(const MessagingEvent.start());
  }

  SynchrowiseUser? _user;

  MessagingBloc(this._iMessaging, this._iUserRepository, this._iUserStorage)
      : super(const _Initial()) {
    on<MessagingEvent>(
      (event, emit) async {
        final failureOrUser = await _iUserStorage.get();

        _user = failureOrUser.fold((_) => null, id);

        _tokenSubscription?.cancel();
        _tokenSubscription = _iMessaging.subscribeToken().listen((token) async {
          if (token != null && _user != null) {
            await _iUserRepository.update(
              synchrowiseUser: _user!.copyWith(
                sFirebaseMessagingToken: token,
              ),
            );
          }
        });

        final initialMessage = await _iMessaging.getInitialMessage();
        if (initialMessage != null) {
          emit(_OnMessageOpenedApp(message: initialMessage));
        }

        await emit.forEach(
          _iMessaging.onMessage(),
          onData: (SynchrowiseMessage message) {
            return _OnMessage(message: message);
          },
        );

        await emit.forEach(
          _iMessaging.onMessageOpenedApp(),
          onData: (SynchrowiseMessage message) {
            return _OnMessageOpenedApp(message: message);
          },
        );
      },
      transformer: restartable(),
    );
  }

  @override
  Future<void> close() async {
    _tokenSubscription?.cancel();
    await super.close();
  }
}
