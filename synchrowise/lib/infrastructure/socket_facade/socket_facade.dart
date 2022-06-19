import 'dart:convert';
import 'dart:developer';

import 'package:rxdart/subjects.dart';
import 'package:signalr_core/signalr_core.dart';
import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/infrastructure/socket_facade/i_socket_facade.dart';

import 'package:synchrowise/services/core/socket_http_client.dart';
import 'package:synchrowise/setup_env.dart';

class SocketFacade implements ISocketFacade {
  final HubConnectionBuilder _connectionBuilder;

  SocketFacade(this._connectionBuilder);

  HubConnection? _connection;

  BehaviorSubject<UserSummary> _userJoinedSubject = BehaviorSubject();
  BehaviorSubject<UserSummary> _userLeftSubject = BehaviorSubject();

  @override
  Future<void> connectToSocket({required String synchrowiseId}) async {
    try {
      await _connection?.stop();

      final client = SocketHttpClient(headers: {"guid": synchrowiseId});

      _connection = _connectionBuilder
          .withUrl(socketurl, HttpConnectionOptions(client: client))
          .build();

      await _connection!.start();

      _connection!.on('ConnectionStart', (messages) {
        log("x");
        if (messages != null && messages.isNotEmpty) {
          String encoded = messages.first;
          final data = jsonDecode(encoded);
          log(data.toString());
        }
      });

      _connection!.on('JoinedGroup', (messages) {
        log(messages.toString());
      });

      _connection!.on('LeftGroup', (messages) {
        log(messages.toString());
      });
    } catch (_) {
      await _connection?.stop();
      _connection = null;
    }
  }

  @override
  Future<void> sendJoinGroupMessage(String groupId) {
    return _connection!.send(methodName: 'JoinGroup', args: [groupId]);
  }

  @override
  Future<void> sendLeaveGroupMessage(String groupId) {
    return _connection!.send(methodName: 'LeaveGroup', args: [groupId]);
  }
}
