import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sembast/sembast.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/register_steps_bloc.dart';
import 'package:synchrowise/application/signin_form_bloc/signin_form_bloc.dart';
import 'package:synchrowise/application/signup_form_bloc/signup_form_bloc.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/i_auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/i_avatar_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/syncrowise_user_sembast_storage.dart';
import 'package:synchrowise/infrastructure/core/image_facade/i_image_facade.dart';
import 'package:synchrowise/infrastructure/core/image_facade/image_facade.dart';
import 'package:synchrowise/services/core/synchrowise_database.dart';

GetIt getIt = GetIt.instance;

Future<void> setupInjector() async {
  await _setupServices();
  await _setupInfrastructure();
  await _setupBlocs();
}

Future<void> _setupServices() async {
  final database = await SynchrowiseDatabase.database;

  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<GoogleSignIn>(GoogleSignIn());
  getIt.registerSingleton<Client>(Client());
  getIt.registerSingleton<ImagePicker>(ImagePicker());
  getIt.registerSingleton<ImageCropper>(ImageCropper());
  getIt.registerSingleton<Database>(database);
}

Future<void> _setupInfrastructure() async {
  getIt.registerSingleton<IAuthFacade>(
    AuthFacade(
      getIt<FirebaseAuth>(),
      getIt<GoogleSignIn>(),
    ),
  );

  getIt.registerSingleton<IImageFacade>(
    ImageFacade(
      getIt<ImagePicker>(),
      getIt<ImageCropper>(),
    ),
  );

  getIt.registerSingleton<ISynchrowiseUserStorage>(SyncrowiseUserSembastStorage(
    getIt<Database>(),
    StoreRef<String, Map<String, dynamic>?>.main(),
  ));

  getIt.registerSingleton<ISynchrowiseUserRepository>(
    SynchrowiseUserRepository(getIt<Client>()),
  );
}

Future<void> _setupBlocs() async {
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      getIt<IAuthFacade>(),
      getIt<ISynchrowiseUserStorage>(),
    ),
  );
  getIt.registerFactory<SigninFormBloc>(
    () => SigninFormBloc(
      getIt<IAuthFacade>(),
      getIt<ISynchrowiseUserRepository>(),
      getIt<ISynchrowiseUserStorage>(),
    ),
  );
  getIt.registerFactory<SignupFormBloc>(
    () => SignupFormBloc(
      getIt<IAuthFacade>(),
      getIt<ISynchrowiseUserRepository>(),
      getIt<ISynchrowiseUserStorage>(),
    ),
  );

  getIt.registerFactory<RegisterStepsBloc>(
    () => RegisterStepsBloc(
      getIt<ISynchrowiseUserRepository>(),
      getIt<IAvatarRepository>(),
      getIt<ISynchrowiseUserStorage>(),
      getIt<IImageFacade>(),
    ),
  );
}
