class SynchrowiseUser {
  final String username;
  final String firebaseId;
  final String synchrowiseId;
  final String avatarUrl;
  final String loginProvider;
  final String firebaseIdTOken;

  const SynchrowiseUser(
    this.username,
    this.firebaseId,
    this.synchrowiseId,
    this.avatarUrl,
    this.loginProvider,
    this.firebaseIdTOken,
  );

  SynchrowiseUser copyWith({
    String? username,
    String? firebaseId,
    String? synchrowiseId,
    String? avatarUrl,
    String? loginProvider,
    String? firebaseIdTOken,
  }) {
    return SynchrowiseUser(
      username ?? this.username,
      firebaseId ?? this.firebaseId,
      synchrowiseId ?? this.synchrowiseId,
      avatarUrl ?? this.avatarUrl,
      loginProvider ?? this.loginProvider,
      firebaseIdTOken ?? this.firebaseIdTOken,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'firebase_id': firebaseId,
      'synchrowise_id': synchrowiseId,
      'avatar_url': avatarUrl,
      'login_provider': loginProvider,
      'firebase_id_token': firebaseIdTOken,
    };
  }

  factory SynchrowiseUser.fromMap(Map<String, dynamic> map) {
    return SynchrowiseUser(
      map['username']!,
      map['firebase_id']!,
      map['synchrowise_id']!,
      map['avatar_url']!,
      map['login_provider']!,
      map['firebase_id_token']!,
    );
  }
}
