import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/sign_form_bloc/signin_form_bloc.dart';
import 'package:synchrowise/application/signup_form_bloc/signup_form_bloc.dart';
import 'package:synchrowise/infrastructure/auth_facade.dart';
import 'package:synchrowise/infrastructure/i_auth_facade.dart';

GetIt getIt = GetIt.instance;

Future<void> setupInjector() async {
  await _setupServices();
  await _setupFacades();
  await _setupBlocs();
}

Future<void> _setupServices() async {
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<GoogleSignIn>(GoogleSignIn());
  getIt.registerSingleton<Client>(Client());
}

Future<void> _setupFacades() async {
  getIt.registerSingleton<IAuthFacade>(
    AuthFacade(
      getIt<FirebaseAuth>(),
      getIt<GoogleSignIn>(),
      getIt<Client>(),
    ),
  );
}

Future<void> _setupBlocs() async {
  getIt.registerSingleton<AuthBloc>(AuthBloc(getIt<IAuthFacade>()));
  getIt.registerSingleton<SignupFormBloc>(SignupFormBloc(getIt<IAuthFacade>()));
  getIt.registerSingleton<SigninFormBloc>(SigninFormBloc(getIt<IAuthFacade>()));
}
