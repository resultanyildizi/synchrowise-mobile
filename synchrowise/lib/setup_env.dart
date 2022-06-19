import 'package:flutter_dotenv/flutter_dotenv.dart';

late final String apiurl;
late final String socketurl;

Future<void> setupEnv() async {
  await dotenv.load();
  final apiprodurl = dotenv.get("API_PROD_URL");
  final apitesturl = dotenv.get("API_TEST_URL");
  final sockeprodturl = dotenv.get("SOCKET_PROD_URL");
  final socketesturl = dotenv.get("SOCKET_TEST_URL");
  final env = dotenv.get("ENV");

  apiurl = env == "prod" ? apiprodurl : apitesturl;
  socketurl = env == "prod" ? sockeprodturl : socketesturl;
}
