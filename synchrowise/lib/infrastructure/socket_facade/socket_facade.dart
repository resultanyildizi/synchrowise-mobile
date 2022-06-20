import 'dart:convert';
import 'dart:developer';

import 'package:rxdart/subjects.dart';
import 'package:signalr_core/signalr_core.dart';
import 'package:synchrowise/domain/socket/group_file_uploaded_sm.dart';
import 'package:synchrowise/domain/socket/play_video_sm.dart';
import 'package:synchrowise/domain/socket/skip_forward_sm.dart';
import 'package:synchrowise/domain/socket/stop_video_sm.dart';
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
  final _playVideoSubject = BehaviorSubject<PlayVideoSM>();
  final _stopVideoSubject = BehaviorSubject<StopVideoSM>();
  final _skipForwardSubject = BehaviorSubject<SkipForwardSM>();

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
          final message = messages![0]['groupId'] as String;

          _deleteFileUploadedSubject.add(message);
        }
      });

      _connection!.on('PlayVideo', (messages) {
        if ((messages ?? []).isNotEmpty) {
          final message = json.decode(messages!.first) as Map<String, dynamic>;
          final playVideoMsg = PlayVideoSM.fromMap(message);
          _playVideoSubject.add(playVideoMsg);
        }
      });

      _connection!.on('StopVideo', (messages) {
        if ((messages ?? []).isNotEmpty) {
          final message = json.decode(messages!.first) as Map<String, dynamic>;
          final stopVideoMsg = StopVideoSM.fromMap(message);
          _stopVideoSubject.add(stopVideoMsg);
        }
      });

      _connection!.on('SkipForward', (messages) {
        if ((messages ?? []).isNotEmpty) {
          final message = json.decode(messages!.first) as Map<String, dynamic>;
          final skipForwardMsg = SkipForwardSM.fromMap(message);
          _skipForwardSubject.add(skipForwardMsg);
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
  Future<void> sendPauseMessage(int timeMs) {
    return _connection!.invoke('StopVideo', args: [timeMs]);
  }

  @override
  Future<void> sendPlayMesage(int timeMs) {
    log("sending PlayVideo");
    return _connection!.invoke('PlayVideo', args: [timeMs]);
  }

  @override
  Future<void> sendSeekMessage(int timeMs) {
    return _connection!.invoke('SkipForwardVideo', args: [timeMs]);
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

  @override
  Stream<PlayVideoSM> get playVideoStream => _playVideoSubject.stream;

  @override
  Stream<StopVideoSM> get stopVideoStream => _stopVideoSubject.stream;

  @override
  Stream<SkipForwardSM> get skipForwardStream => _skipForwardSubject.stream;
}
