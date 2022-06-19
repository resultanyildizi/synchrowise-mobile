abstract class ISocketFacade {
  Future<void> connectToSocket({required String synchrowiseId});
  Future<void> sendJoinGroupMessage(String groupId);
  Future<void> sendLeaveGroupMessage(String groupId);
}
