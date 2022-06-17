import 'package:equatable/equatable.dart';
import 'package:synchrowise/domain/auth/avatar.dart';
import 'package:synchrowise/domain/auth/premium.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';

class UserSummary extends Equatable {
  final String synchrowiseId;
  final Avatar avatar;
  final String username;
  final String? email;
  final Premium premium;

  const UserSummary({
    required this.synchrowiseId,
    required this.avatar,
    required this.username,
    required this.email,
    required this.premium,
  });

  @override
  List<Object?> get props => [synchrowiseId, avatar, username, email, premium];

  factory UserSummary.fromMap(Map<String, dynamic> map) {
    return UserSummary(
      synchrowiseId: map['guid'],
      avatar: Avatar.fromMap(map['avatar']),
      username: map['username'],
      email: map['email'],
      premium: Premium.fromValue(map['premium']),
    );
  }

  factory UserSummary.fromSynchrowiseUser(SynchrowiseUser user) {
    return UserSummary(
      synchrowiseId: user.synchrowiseId,
      avatar: user.avatar,
      username: user.username!,
      email: user.emailAddress,
      premium: user.premium,
    );
  }
}
