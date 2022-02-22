import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

GetIt getIt = GetIt.instance;

Future<void> setupInjector() async {}

Future<void> setupExternalLibraries() async {
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<GoogleSignIn>(GoogleSignIn());
}
