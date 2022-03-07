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
}
