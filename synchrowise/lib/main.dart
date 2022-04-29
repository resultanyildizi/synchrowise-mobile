import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/app.dart';
import 'package:synchrowise/injection.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  await setupInjector();
  await dotenv.load();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('tr')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      child: const SynchrowiseApp(),
    ),
  );
}
