import 'package:equatable/equatable.dart';

import 'package:synchrowise/domain/auth/premium.dart';

class SynchrowiseUser extends Equatable {
  final String firebaseId;
  final String synchrowiseId;
  final String avatarUrl;
  final String loginProvider;
  final String firebaseIdToken;
  final String? username;
  final String? emailAddress;
  final Premium premium;

  const SynchrowiseUser({
    required this.username,
    required this.firebaseId,
    required this.synchrowiseId,
    required this.avatarUrl,
    required this.loginProvider,
    required this.firebaseIdToken,
    required this.emailAddress,
    required this.premium,
  });

  @override
  List<Object?> get props {
    return [
      username,
      firebaseId,
      synchrowiseId,
      avatarUrl,
      loginProvider,
      firebaseIdToken,
      emailAddress,
      premium,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'firebase_id': firebaseId,
      'synchrowise_id': synchrowiseId,
      'avatar_url': avatarUrl,
      'login_provider': loginProvider,
      'firebase_id_token': firebaseIdToken,
      'email_address': emailAddress,
      'premium_type': premium.value,
    };
  }

  factory SynchrowiseUser.fromMap(Map<String, dynamic> map) {
    return SynchrowiseUser(
      username: map['username']!,
      firebaseId: map['firebase_id']!,
      synchrowiseId: map['synchrowise_id']!,
      avatarUrl: map['avatar_url']!,
      loginProvider: map['login_provider']!,
      firebaseIdToken: map['firebase_id_token']!,
      emailAddress: map['email_address'],
      premium: Premium.fromValue(map['premium_type']),
    );
  }

  SynchrowiseUser copyWith({
    String? firebaseId,
    String? synchrowiseId,
    String? avatarUrl,
    String? loginProvider,
    String? firebaseIdToken,
    String? username,
    String? emailAddress,
    Premium? premium,
  }) {
    return SynchrowiseUser(
      firebaseId: firebaseId ?? this.firebaseId,
      synchrowiseId: synchrowiseId ?? this.synchrowiseId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      loginProvider: loginProvider ?? this.loginProvider,
      firebaseIdToken: firebaseIdToken ?? this.firebaseIdToken,
      username: username ?? this.username,
      emailAddress: emailAddress ?? this.emailAddress,
      premium: premium ?? this.premium,
    );
  }
}
