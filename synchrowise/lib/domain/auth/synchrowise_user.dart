import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:synchrowise/domain/auth/avatar.dart';
import 'package:synchrowise/domain/auth/notification_settings_data.dart';
import 'package:synchrowise/domain/auth/premium.dart';

/// The parameters below are only used when the user is created by the server.
/// They must not be used in the client.
/// * `sEmailVerified`: The email verification status of the user.
/// * `sIsNewUser`: The status of the user.
/// * `sFirebaseCreationTimeMs`: The creation time of the user.
/// * `sFirebaseLastSigninTimeMs`: The last sign in time of the user.
/// * `sFirebaseMessagingToken`: The last sign in time of the user.

@immutable
class SynchrowiseUser extends Equatable {
  final String firebaseId;
  final String synchrowiseId;
  final Avatar avatar;
  final String signInMethod;
  final String firebaseIdToken;
  final String? username;
  final String? emailAddress;
  final Premium premium;
  final NotificationSettingsData notificationData;

  final String? sFirebaseMessagingToken;
  final bool sEmailVerified;
  final bool sIsNewUser;
  final int sFirebaseCreationTimeMs;
  final int sFirebaseLastSigninTimeMs;

  const SynchrowiseUser({
    required this.firebaseId,
    required this.synchrowiseId,
    required this.avatar,
    required this.signInMethod,
    required this.firebaseIdToken,
    required this.username,
    required this.emailAddress,
    required this.premium,
    required this.notificationData,
    this.sEmailVerified = false,
    this.sIsNewUser = false,
    this.sFirebaseCreationTimeMs = -1,
    this.sFirebaseLastSigninTimeMs = -1,
    this.sFirebaseMessagingToken,
  });

  @override
  List<Object?> get props {
    return [
      firebaseId,
      synchrowiseId,
      avatar,
      signInMethod,
      firebaseIdToken,
      username,
      emailAddress,
      premium,
      notificationData,
      sEmailVerified,
      sIsNewUser,
      sFirebaseCreationTimeMs,
      sFirebaseLastSigninTimeMs,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'firebase_uid': firebaseId,
      'firebase_id_token': firebaseIdToken,
      'email': emailAddress,
      'guid': synchrowiseId,
      'avatar': avatar.toMap(),
      'sign_in_method': signInMethod,
      'username': username,
      'premium': premium.value,
      'notifications': notificationData.toMap(),
      // --
      'email_verified': sEmailVerified,
      'is_New_user': sIsNewUser,
      'firebase_Creation_Time': sFirebaseCreationTimeMs,
      'firebase_Last_Signin_Time': sFirebaseLastSigninTimeMs,
    };
  }

  Map<String, dynamic> toUpdateMap() {
    return {
      'firebase_id_token': firebaseIdToken,
      'username': username,
      'email': emailAddress,
      'email_verified': sEmailVerified,
      'firebase_Last_Signin_Time': sFirebaseLastSigninTimeMs,
      'firebase_messaging_token': sFirebaseMessagingToken,
    };
  }

  Map<String, dynamic> toCreateMap() {
    return {
      'firebase_uid': firebaseId,
      'firebase_id_token': firebaseIdToken,
      'email': emailAddress,
      'email_verified': sEmailVerified,
      'is_New_user': sIsNewUser,
      'signin_Method': signInMethod,
      'firebase_Creation_Time': sFirebaseCreationTimeMs,
      'firebase_Last_Signin_Time': sFirebaseLastSigninTimeMs,
    };
  }

  static SynchrowiseUser fromMap(Map<String, dynamic> map) {
    return SynchrowiseUser(
      username: map['username'] as String?,
      firebaseId: map['firebase_uid'] as String,
      synchrowiseId: map['guid'] as String,
      avatar: map['avatar'] != null
          ? Avatar.fromMap(map['avatar'] as Map<String, dynamic>)
          : Avatar.defaultAvatar(),
      signInMethod: map['sign_in_method'] as String,
      firebaseIdToken: map['firebase_id_token'] as String,
      emailAddress: map['email'] as String,
      premium: Premium.fromValue(map['premium'] as int),
      notificationData: NotificationSettingsData.fromMap(
          map['notifications'] as Map<String, dynamic>),
      sEmailVerified: map['email_verified'] as bool,
      sIsNewUser: map['is_New_user'] as bool,
      sFirebaseCreationTimeMs: map['firebase_Creation_Time'] as int,
      sFirebaseLastSigninTimeMs: map['firebase_Last_Signin_Time'] as int,
      sFirebaseMessagingToken: map['firebase_messaging_token'] as String?,
    );
  }

  SynchrowiseUser copyWithMap(Map<String, dynamic> data) {
    return SynchrowiseUser(
      synchrowiseId: data['guid'],
      username: data['username'],
      emailAddress: data['email'],
      avatar: Avatar.fromMap(data['avatar']),
      premium: Premium.fromValue(data['premiumType']),
      // --
      notificationData: notificationData,
      firebaseId: firebaseId,
      firebaseIdToken: firebaseIdToken,
      sFirebaseCreationTimeMs: sFirebaseCreationTimeMs,
      sFirebaseLastSigninTimeMs: sFirebaseLastSigninTimeMs,
      sEmailVerified: sEmailVerified,
      sIsNewUser: sIsNewUser,
      signInMethod: signInMethod,
      sFirebaseMessagingToken: sFirebaseMessagingToken,
    );
  }

  SynchrowiseUser copyWith({
    String? firebaseId,
    String? synchrowiseId,
    Avatar? avatar,
    String? signInMethod,
    String? firebaseIdToken,
    String? username,
    String? emailAddress,
    Premium? premium,
    NotificationSettingsData? notificationData,
    String? sFirebaseMessagingToken,
    bool? sEmailVerified,
    bool? sIsNewUser,
    int? sFirebaseCreationTimeMs,
    int? sFirebaseLastSigninTimeMs,
  }) {
    return SynchrowiseUser(
      firebaseId: firebaseId ?? this.firebaseId,
      synchrowiseId: synchrowiseId ?? this.synchrowiseId,
      avatar: avatar ?? this.avatar,
      signInMethod: signInMethod ?? this.signInMethod,
      firebaseIdToken: firebaseIdToken ?? this.firebaseIdToken,
      username: username ?? this.username,
      emailAddress: emailAddress ?? this.emailAddress,
      premium: premium ?? this.premium,
      notificationData: notificationData ?? this.notificationData,
      sFirebaseMessagingToken:
          sFirebaseMessagingToken ?? this.sFirebaseMessagingToken,
      sEmailVerified: sEmailVerified ?? this.sEmailVerified,
      sIsNewUser: sIsNewUser ?? this.sIsNewUser,
      sFirebaseCreationTimeMs:
          sFirebaseCreationTimeMs ?? this.sFirebaseCreationTimeMs,
      sFirebaseLastSigninTimeMs:
          sFirebaseLastSigninTimeMs ?? this.sFirebaseLastSigninTimeMs,
    );
  }
}
