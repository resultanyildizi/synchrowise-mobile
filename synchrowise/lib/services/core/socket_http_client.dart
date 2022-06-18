import 'package:http/http.dart';

class SocketHttpClient extends BaseClient {
  final _httpClient = Client();
  final Map<String, String> headers;

  SocketHttpClient({required this.headers});

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    request.headers.addAll(headers);
    return _httpClient.send(request);
  }
}
