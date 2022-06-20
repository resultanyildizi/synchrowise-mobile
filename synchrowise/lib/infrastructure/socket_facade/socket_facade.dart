import 'dart:convert';
import 'dart:developer';

import 'package:rxdart/subjects.dart';
import 'package:signalr_core/signalr_core.dart';
import 'package:synchrowise/domain/socket/group_file_uploaded_sm.dart';
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
  final _groupFileUploadedSubject = BehaviorSubject<GroupFileUploadedSM>();
  final _deleteFileUploadedSubject = BehaviorSubject<String>();

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
        if ((messages ?? []).isNotEmpty) {
          final message = json.decode(messages!.first) as Map<String, dynamic>;

          final userJoinedMsg = UserJoinedSM.fromMap(message);

          _userJoinedSubject.add(userJoinedMsg);
        }
      });

      _connection!.on('LeftGroup', (messages) {
        if ((messages ?? []).isNotEmpty) {
          final message = json.decode(messages!.first) as Map<String, dynamic>;
          final userLeftMsg = UserLeftSM.fromMap(message);
          _userLeftSubject.add(userLeftMsg);
        }
      });

      _connection!.on('GroupFileUploaded', (messages) {
        if ((messages ?? []).isNotEmpty) {
          final message = json.decode(messages!.first) as Map<String, dynamic>;
          final groupMediaMsg = GroupFileUploadedSM.fromMap(message);
          _groupFileUploadedSubject.add(groupMediaMsg);
        }
      });

      _connection!.on('GroupFileDeleted', (messages) {
        if ((messages ?? []).isNotEmpty) {
          final message = json.decode(messages!.first) as Map<String, dynamic>;
          final groupMediaMsg = message["groupId"];
          _deleteFileUploadedSubject.add(groupMediaMsg);
        }
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
    return _connection!.invoke('DeleteFileUploaded');
  }

  @override
  Stream<UserJoinedSM> get userJoinedStream => _userJoinedSubject.stream;

  @override
  Stream<UserLeftSM> get userLeftStream => _userLeftSubject.stream;

  @override
  Stream<GroupFileUploadedSM> get groupFileUploadedStream =>
      _groupFileUploadedSubject.stream;

  @override
  Stream<String> get deleteFileUploadStream =>
      _deleteFileUploadedSubject.stream;
}
