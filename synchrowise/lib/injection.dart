import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sembast/sembast.dart';
import 'package:signalr_core/signalr_core.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/bottom_navbar_bloc/bottom_navbar_bloc.dart';
import 'package:synchrowise/application/core/share_content_bloc/share_content_bloc.dart';
import 'package:synchrowise/application/group/create_group_bloc/create_group_bloc.dart';
import 'package:synchrowise/application/group/get_group_bloc/get_group_bloc.dart';
import 'package:synchrowise/application/group/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/application/group/join_group_bloc/join_group_bloc.dart';
import 'package:synchrowise/application/language_bloc/language_bloc.dart';
import 'package:synchrowise/application/notification_settings_bloc/notification_settings_bloc.dart';
import 'package:synchrowise/application/messaging_bloc/messaging_bloc.dart';
import 'package:synchrowise/application/profile_bloc/profile_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/registeration_bloc.dart';
import 'package:synchrowise/application/signin_form_bloc/signin_form_bloc.dart';
import 'package:synchrowise/application/signup_form_bloc/signup_form_bloc.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/i_auth_facade.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/avatar_repository.dart';
import 'package:synchrowise/infrastructure/auth/avatar_repository/i_avatar_repository.dart';
import 'package:synchrowise/infrastructure/auth/socket_facade/i_socket_facade.dart';
import 'package:synchrowise/infrastructure/auth/socket_facade/socket_facade.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/i_synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_repository/synchrowise_user_repository.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/i_synchrowise_user_storage.dart';
import 'package:synchrowise/infrastructure/auth/synchrowise_user_storage/syncrowise_user_sembast_storage.dart';
import 'package:synchrowise/infrastructure/core/image_facade/i_image_facade.dart';
import 'package:synchrowise/infrastructure/core/image_facade/image_facade.dart';
import 'package:synchrowise/infrastructure/core/media_facade/i_media_picker_facade.dart';
import 'package:synchrowise/infrastructure/core/media_facade/media_picker_facade.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/group_file_repository.dart';
import 'package:synchrowise/infrastructure/group/group_file_repository/i_group_file_repository.dart';
import 'package:synchrowise/infrastructure/core/share_facade/i_share_facade.dart';
import 'package:synchrowise/infrastructure/core/share_facade/share_facade.dart';
import 'package:synchrowise/infrastructure/group/group_repository/group_repository.dart';
import 'package:synchrowise/infrastructure/group/group_repository/i_group_repository.dart';
import 'package:synchrowise/infrastructure/notification/i_notification_repository.dart';
import 'package:synchrowise/infrastructure/notification/notification_repository.dart';
import 'package:synchrowise/infrastructure/messaging/i_synchrowise_messaging.dart';
import 'package:synchrowise/infrastructure/messaging/synchrowise_firebase_messaging.dart';
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
  getIt.registerSingleton<FilePicker>(FilePicker.platform);
  getIt.registerFactory<HubConnectionBuilder>(() => HubConnectionBuilder());
}

Future<void> _setupInfrastructure() async {
  getIt.registerSingleton<IGroupFileRepository>(
    GroupFileRepository(),
  );
  getIt.registerSingleton<INotificationRepository>(
    NotificationRepository(getIt<Client>()),
  );
  getIt.registerSingleton<IAuthFacade>(
    AuthFacade(
      getIt<FirebaseAuth>(),
      getIt<GoogleSignIn>(),
    ),
  );
  getIt.registerSingleton<ISocketFacade>(
    SocketFacade(getIt<HubConnectionBuilder>()),
  );
  getIt.registerSingleton<IImageFacade>(
    ImageFacade(getIt<ImagePicker>(), getIt<ImageCropper>()),
  );
  getIt.registerSingleton<ISynchrowiseUserStorage>(SyncrowiseUserSembastStorage(
    getIt<Database>(),
    StoreRef<String, Map<String, dynamic>?>.main(),
  ));
  getIt.registerSingleton<ISynchrowiseUserRepository>(
    SynchrowiseUserRepository(getIt<Client>()),
  );
  getIt.registerSingleton<IGroupRepository>(
    GroupRepository(getIt<Client>()),
  );
  getIt.registerSingleton<IAvatarRepository>(
    AvatarRepository(getIt<Client>()),
  );
  getIt.registerSingleton<ISynchrowiseMessaging>(
    SynchrowiseFirebaseMessaging(),
  );
  getIt.registerSingleton<IMediaPickerFacade>(
    MediaPickerFacade(getIt<FilePicker>()),
  );
  getIt.registerSingleton<IShareFacade>(ShareFacade());
}

Future<void> _setupBlocs() async {
  getIt.registerFactory<NotificationSettingsBloc>(() {
    return NotificationSettingsBloc(
      getIt<INotificationRepository>(),
      getIt<ISynchrowiseUserStorage>(),
    );
  });
  getIt.registerFactory<AuthBloc>(() {
    return AuthBloc(
      getIt<IAuthFacade>(),
      getIt<ISynchrowiseUserStorage>(),
      getIt<ISocketFacade>(),
    );
  });
  getIt.registerFactory<SigninFormBloc>(() {
    return SigninFormBloc(
      getIt<IAuthFacade>(),
      getIt<ISynchrowiseUserRepository>(),
      getIt<ISynchrowiseUserStorage>(),
    );
  });
  getIt.registerFactory<SignupFormBloc>(() {
    return SignupFormBloc(
      getIt<IAuthFacade>(),
      getIt<ISynchrowiseUserRepository>(),
      getIt<ISynchrowiseUserStorage>(),
    );
  });
  getIt.registerFactory<RegisterationBloc>(() {
    return RegisterationBloc(
      getIt<ISynchrowiseUserRepository>(),
      getIt<IAvatarRepository>(),
      getIt<ISynchrowiseUserStorage>(),
      getIt<IImageFacade>(),
    );
  });
  getIt.registerFactory<CreateGroupBloc>(() {
    return CreateGroupBloc(
      getIt<ISynchrowiseUserStorage>(),
      getIt<IGroupRepository>(),
    );
  });
  getIt.registerFactory<ProfileBloc>(() {
    return ProfileBloc(
      getIt<IAuthFacade>(),
      getIt<ISynchrowiseUserStorage>(),
      getIt<ISynchrowiseUserRepository>(),
    );
  });
  getIt.registerFactory<BottomNavbarBloc>(() {
    return BottomNavbarBloc();
  });
  getIt.registerFactory<LanguageBloc>(() {
    return LanguageBloc();
  });
  getIt.registerFactory<GetGroupBloc>(() {
    return GetGroupBloc(
      getIt<IGroupRepository>(),
      getIt<ISynchrowiseUserStorage>(),
    );
  });
  getIt.registerFactory<JoinGroupBloc>(() {
    return JoinGroupBloc(
      getIt<IGroupRepository>(),
      getIt<ISynchrowiseUserStorage>(),
    );
  });
  getIt.registerFactory<MessagingBloc>(() {
    return MessagingBloc(
      getIt<ISynchrowiseMessaging>(),
      getIt<ISynchrowiseUserRepository>(),
      getIt<ISynchrowiseUserStorage>(),
    );
  });
  getIt.registerFactory<GroupSessionBloc>(() {
    return GroupSessionBloc(
      getIt<IMediaPickerFacade>(),
      getIt<IGroupRepository>(),
      getIt<ISynchrowiseUserStorage>(),
      getIt<IGroupFileRepository>(),
    );
  });

  getIt.registerLazySingleton<ShareContentBloc>(
    () {
      return ShareContentBloc(getIt<IShareFacade>());
    },
  );
}
