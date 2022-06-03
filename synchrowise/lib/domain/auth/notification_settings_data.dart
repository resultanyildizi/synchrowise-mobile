import 'package:equatable/equatable.dart';

class NotificationSettingsData extends Equatable {
  final bool messageNotification;
  final bool groupNotification;

  const NotificationSettingsData({
    required this.messageNotification,
    required this.groupNotification,
  });

  @override
  List<Object?> get props => [
        messageNotification,
        groupNotification,
      ];

  NotificationSettingsData copyWith({
    bool? messageNotification,
    bool? groupNotification,
  }) {
    return NotificationSettingsData(
      messageNotification: messageNotification ?? this.messageNotification,
      groupNotification: groupNotification ?? this.groupNotification,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'messageNotification': messageNotification,
      'groupNotification': groupNotification,
    };
  }

  factory NotificationSettingsData.fromMap(Map<String, dynamic> map) {
    return NotificationSettingsData(
      messageNotification: map['messageNotification'] as bool,
      groupNotification: map['groupNotification'] as bool,
    );
  }

  NotificationSettingsData updateMessageNotification() {
    return NotificationSettingsData(
      groupNotification: groupNotification,
      messageNotification: !messageNotification,
    );
  }

  NotificationSettingsData updateGroupNotification() {
    return NotificationSettingsData(
      groupNotification: !groupNotification,
      messageNotification: messageNotification,
    );
  }

  factory NotificationSettingsData.empty() => const NotificationSettingsData(
        groupNotification: false,
        messageNotification: false,
      );
}
