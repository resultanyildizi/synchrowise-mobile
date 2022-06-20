abstract class ISocketFacade {
  Future<void> connectToSocket({required String synchrowiseId});
  Future<void> sendJoinGroupMessage();
  Future<void> sendLeaveGroupMessage();
}
