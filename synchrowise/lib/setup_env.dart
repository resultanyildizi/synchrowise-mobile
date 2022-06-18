import 'package:flutter_dotenv/flutter_dotenv.dart';

late final String apiurl;
late final String socketurl;

Future<void> setupEnv() async {
  await dotenv.load();
  final produrl = dotenv.get("API_PROD_URL");
  final testurl = dotenv.get("API_TEST_URL");
  final env = dotenv.get("ENV");

  apiurl = env == "prod" ? produrl : testurl;
  socketurl = dotenv.get("SOCKET_URL");
}
