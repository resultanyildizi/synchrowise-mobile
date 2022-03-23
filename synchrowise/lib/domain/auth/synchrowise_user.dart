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
      'firebaseId': firebaseId,
      'guid': synchrowiseId,
      'avatar': avatarUrl,
      'signInMethod': loginProvider,
      'firebaseIdToken': firebaseIdToken,
      'email': emailAddress,
      'premiumType': premium.value,
    };
  }

  factory SynchrowiseUser.fromMap(Map<String, dynamic> map) {
    return SynchrowiseUser(
      username: map['username'],
      firebaseId: map['firebaseId']!,
      synchrowiseId: map['guid']!,
      avatarUrl: map['avatar']!,
      loginProvider: map['signInMethod']!,
      firebaseIdToken: map['firebaseIdToken']!,
      emailAddress: map['email'],
      premium: Premium.fromValue(map['premiumType']),
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
