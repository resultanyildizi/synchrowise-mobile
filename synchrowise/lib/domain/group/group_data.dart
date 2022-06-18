import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

import 'package:synchrowise/domain/auth/user_summary.dart';

@immutable
class GroupData extends Equatable {
  final String groupKey;
  final String groupId;
  final String groupDesc;
  final UserSummary groupOwner;
  final DateTime createdAt;
  final KtList<UserSummary> members;

  @override
  List<Object> get props => [groupKey, groupOwner, groupId, members, createdAt];

  const GroupData({
    required this.groupKey,
    required this.groupDesc,
    required this.groupId,
    required this.members,
    required this.createdAt,
    required this.groupOwner,
  });

  factory GroupData.toCreateGroup({
    required String groupName,
    required String groupDesc,
    required UserSummary groupOwner,
  }) {
    return GroupData(
      groupKey: groupName,
      groupOwner: groupOwner,
      createdAt: DateTime.now(),
      groupDesc: '',
      groupId: '',
      members: const KtList.empty(),
    );
  }

  factory GroupData.fromMap(Map<String, dynamic> map) {
    return GroupData(
      groupKey: map['groupName'],
      groupOwner: UserSummary.fromMap(map['groupOwner']),
      groupDesc: map['description'],
      members: KtList.from(map['groupMember'] as List<dynamic>)
          .cast<Map<String, dynamic>>()
          .map((e) => UserSummary.fromMap(e))
          .toList(),
      groupId: map['guid'],
      createdAt: DateTime.parse(map['createdDate']),
    );
  }

  Map<String, dynamic> toCreateMap() {
    return {
      'groupName': groupKey,
      'ownerID': groupOwner.synchrowiseId,
      'description': groupDesc,
    };
  }

  Map<String, dynamic> toUpdateMap() {
    return {
      'groupName': groupKey,
      'description': groupDesc,
      'ownerID': groupOwner.synchrowiseId,
    };
  }

  Map<String, dynamic> toDeleteMap() {
    return {'userID': groupOwner};
  }

  String get groupUrl {
    return 'https://synchrowise-app.com/join/$groupKey';
  }

  GroupData copyWith({
    String? groupKey,
    String? groupId,
    String? groupDesc,
    UserSummary? groupOwner,
    KtList<UserSummary>? members,
    DateTime? createdAt,
  }) {
    return GroupData(
      groupKey: groupKey ?? this.groupKey,
      groupId: groupId ?? this.groupId,
      groupDesc: groupDesc ?? this.groupDesc,
      groupOwner: groupOwner ?? this.groupOwner,
      members: members ?? this.members,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
