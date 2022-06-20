import 'dart:convert';
import 'dart:developer';

import 'package:rxdart/subjects.dart';
import 'package:signalr_core/signalr_core.dart';
import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/domain/socket/user_joined_sm.dart';
import 'package:synchrowise/domain/socket/user_left_sm.dart';
import 'package:synchrowise/infrastructure/socket_facade/i_socket_facade.dart';

import 'package:synchrowise/services/core/socket_http_client.dart';
import 'package:synchrowise/setup_env.dart';

class SocketFacade implements ISocketFacade {
  final HubConnectionBuilder _connectionBuilder;

  SocketFacade(this._connectionBuilder);

  HubConnection? _connection;

  final _userJoinedSubject = BehaviorSubject<UserJoinedSM>();
  final _userLeftSubject = BehaviorSubject<UserLeftSM>();

  @override
  Future<void> connectToSocket(String synchrowiseId) async {
    try {
      await _connection?.stop();

      final client = SocketHttpClient(headers: {"guid": synchrowiseId});

      _connection = _connectionBuilder
          .withUrl(socketurl, HttpConnectionOptions(client: client))
          .build();

      await _connection!.start();

      _connection!.on('JoinedGroup', (messages) {
        try {
          if ((messages ?? []).isNotEmpty) {
            final message =
                json.decode(messages!.first) as Map<String, dynamic>;

            final userJoinedMsg = UserJoinedSM.fromMap(message);

            _userJoinedSubject.add(userJoinedMsg);
          }
        } catch (_) {
          log(_.toString());
        }
      });

      _connection!.on('LeftGroup', (messages) {
        log("asdfojasdfjasdf poasdkfopasdkfopaskf ");
        if ((messages ?? []).isNotEmpty) {
          log(messages.toString());

          final message = json.decode(messages!.first) as Map<String, dynamic>;
          final userLeftMsg = UserLeftSM.fromMap(message);
          _userLeftSubject.add(userLeftMsg);
        }
      });

      _connection!.on('GroupFileUploaded', (messages) {
        log(messages.toString());
      });

      _connection!.on('GroupFileDeleted', (messages) {
        log(messages.toString());
      });
    } catch (_) {
      await _connection?.stop();
      _connection = null;
    }
  }

  @override
  Future<void> sendJoinGroupMessage() {
    return _connection!.invoke('JoinGroup');
  }

  @override
  Future<void> sendLeaveGroupMessage(String groupId) {
    return _connection!.invoke('LeaveGroup', args: [groupId]);
  }

  @override
  Future<void> sendUploadMediaMessage(String fileGuid) {
    return _connection!.invoke('UploadGroupFile', args: [fileGuid]);
  }

  @override
  Future<void> deleteFileUploadMessage() {
    return _connection!.invoke('DeleteFileUploadMessage');
  }

  @override
  Stream<UserJoinedSM> get userJoinedStream => _userJoinedSubject.stream;

  @override
  Stream<UserLeftSM> get userLeftStream => _userLeftSubject.stream;
}
