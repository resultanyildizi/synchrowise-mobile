import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

import 'package:synchrowise/domain/auth/synchrowise_user.dart';

@immutable
class GroupData extends Equatable {
  final String groupKey;
  final String groupId;
  final String groupDesc;
  final SynchrowiseUser groupOwner;
  final KtList<SynchrowiseUser> members;

  const GroupData({
    required this.groupKey,
    required this.groupDesc,
    required this.groupId,
    required this.members,
    required this.groupOwner,
  });

  factory GroupData.toCreateGroup({
    required String groupName,
    required SynchrowiseUser groupOwner,
    required String groupDesc,
  }) {
    return GroupData(
      groupKey: groupName,
      groupOwner: groupOwner,
      groupDesc: '',
      groupId: '',
      members: const KtList.empty(),
    );
  }

  factory GroupData.fromMap(Map<String, dynamic> map) {
    // Todo: fix this
    return GroupData(
      groupKey: map['groupName'],
      groupOwner: SynchrowiseUser.fromMap(map['groupOwner']),
      groupDesc: map['description'],
      members: KtList.from(map['groupMember'] as List<dynamic>)
          .cast<Map<String, dynamic>>()
          .map((e) => SynchrowiseUser.fromMap(e))
          .toList(),
      groupId: map['guid'],
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
    return {
      'userID': groupOwner,
    };
  }

  @override
  List<Object> get props => [groupKey, groupOwner, groupId, members];

  GroupData copyWith({
    String? groupKey,
    String? groupId,
    String? groupDesc,
    SynchrowiseUser? groupOwner,
    KtList<SynchrowiseUser>? members,
  }) {
    return GroupData(
      groupKey: groupKey ?? this.groupKey,
      groupId: groupId ?? this.groupId,
      groupDesc: groupDesc ?? this.groupDesc,
      groupOwner: groupOwner ?? this.groupOwner,
      members: members ?? this.members,
    );
  }
}
