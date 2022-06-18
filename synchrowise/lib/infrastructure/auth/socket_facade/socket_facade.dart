import 'dart:developer';

import 'package:signalr_core/signalr_core.dart';

import 'package:synchrowise/infrastructure/auth/socket_facade/i_socket_facade.dart';
import 'package:synchrowise/services/core/socket_http_client.dart';
import 'package:synchrowise/setup_env.dart';

class SocketFacade implements ISocketFacade {
  final HubConnectionBuilder _connectionBuilder;

  SocketFacade(this._connectionBuilder);

  HubConnection? _connection;

  @override
  Future<void> connectToSocket({required String synchrowiseId}) async {
    await _connection?.stop();

    final client = SocketHttpClient(headers: {"guid": synchrowiseId});

    _connection = _connectionBuilder
        .withUrl(socketurl, HttpConnectionOptions(client: client))
        .build();

    await _connection!.start();

    log(_connection!.connectionId.toString());

    _connection!.on('Greetings', (message) {
      log(message.toString());
    });
  }
}
