import 'package:firebase_auth/firebase_auth.dart';
import 'package:synchrowise/domain/auth/avatar.dart';
import 'package:synchrowise/domain/auth/notification_settings_data.dart';
import 'package:synchrowise/domain/auth/premium.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';

extension UserCredentialExt on UserCredential {
  Future<SynchrowiseUser?> toSynchrowiseUser() async {
    if (user == null) return null;

    final firebaseToken = await user!.getIdToken();

    return SynchrowiseUser(
      firebaseId: user!.uid,
      emailAddress: user!.email,
      firebaseIdToken: firebaseToken,
      signInMethod: credential?.signInMethod ?? 'null',
      username: null,
      synchrowiseId: 'unknown',
      avatar: Avatar.defaultAvatar(),
      premium: Premium.none(),
      notificationData: NotificationSettingsData.empty(),
      sEmailVerified: user!.emailVerified,
      sIsNewUser: additionalUserInfo?.isNewUser ?? false,
      sFirebaseCreationTimeMs:
          user!.metadata.creationTime?.millisecondsSinceEpoch ?? -1,
      sFirebaseLastSigninTimeMs:
          user!.metadata.lastSignInTime?.millisecondsSinceEpoch ?? -1,
    );
  }
}
