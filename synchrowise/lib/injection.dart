import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:localstorage/localstorage.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/application/signin_form_bloc/signin_form_bloc.dart';
import 'package:synchrowise/application/signup_form_bloc/signup_form_bloc.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/i_auth_facade.dart';
import 'package:synchrowise/infrastructure/register/i_register_facade.dart';
import 'package:synchrowise/infrastructure/register/register_facade.dart';

GetIt getIt = GetIt.instance;

Future<void> setupInjector() async {
  await _setupServices();
  await _setupFacades();
  await _setupBlocs();
}

Future<void> _setupServices() async {
  final localStorage = LocalStorage('synchrowise');
  await localStorage.ready;

  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<GoogleSignIn>(GoogleSignIn());
  getIt.registerSingleton<Client>(Client());
  getIt.registerSingleton<ImagePicker>(ImagePicker());
  getIt.registerSingleton<ImageCropper>(ImageCropper());
  getIt.registerSingleton<LocalStorage>(localStorage);
}

Future<void> _setupFacades() async {
  getIt.registerSingleton<IAuthFacade>(
    AuthFacade(
      getIt<FirebaseAuth>(),
      getIt<GoogleSignIn>(),
      getIt<LocalStorage>(),
      getIt<Client>(),
    ),
  );
  getIt.registerSingleton<IRegisterFacade>(RegisterFacade(
    getIt<Client>(),
    getIt<ImagePicker>(),
    getIt<ImageCropper>(),
  ));
}

Future<void> _setupBlocs() async {
  getIt.registerSingleton<AuthBloc>(AuthBloc(getIt<IAuthFacade>()));
  getIt.registerSingleton<SignupFormBloc>(SignupFormBloc(getIt<IAuthFacade>()));
  getIt.registerSingleton<SigninFormBloc>(SigninFormBloc(getIt<IAuthFacade>()));
  getIt.registerSingleton<RegisterStepsBloc>(
      RegisterStepsBloc(getIt<IRegisterFacade>()));
}
