import 'package:synchrowise/domain/messaging/synchrowise_message.dart';

class MediaMessage extends SynchrowiseMessage {
  final String groupId;
  final String senderId;
  final String senderName;
  final String mediaId;
  final String senderAvatarUrl;
  final int action;

  const MediaMessage({
    required this.groupId,
    required this.senderId,
    required this.senderName,
    required this.mediaId,
    required this.senderAvatarUrl,
    required this.action,
  });

  @override
  List<Object?> get props {
    return [
      groupId,
      senderId,
      senderName,
      mediaId,
      senderAvatarUrl,
      action,
    ];
  }

  factory MediaMessage.fromMap(Map<String, dynamic> map) {
    return MediaMessage(
      groupId: map['groupId'] as String,
      senderId: map['senderId'] as String,
      senderName: map['senderName'] as String,
      mediaId: map['mediaId'] as String,
      senderAvatarUrl: map['senderAvatar'] as String,
      action: map['action'] as int,
    );
  }
}
