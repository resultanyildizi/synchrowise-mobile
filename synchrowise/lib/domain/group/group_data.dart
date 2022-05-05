import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:synchrowise/domain/group/group_member_data.dart';

@immutable
class GroupData extends Equatable {
  final String groupName;
  final String ownerId;
  final String groupId;
  final KtList<GroupMemberData> members;

  const GroupData({
    required this.groupName,
    required this.ownerId,
    required this.groupId,
    required this.members,
  });

  factory GroupData.toCreateGroup({
    required String groupName,
    required String ownerId,
  }) {
    return GroupData(
      groupName: groupName,
      ownerId: ownerId,
      groupId: 'unknown',
      members: const KtList.empty(),
    );
  }

  factory GroupData.fromMap(Map<String, dynamic> map) {
    // Todo: fix this
    return GroupData(
      groupName: map['groupName'],
      ownerId: map['ownerId'],
      members: KtList.from(map['members']),
      groupId: map['groupId'],
    );
  }

  Map<String, dynamic> toCreateMap() {
    return {
      'groupName': groupName,
      'ownerId': ownerId,
    };
  }

  Map<String, dynamic> toDeleteMap() {
    return {
      'userId': ownerId,
    };
  }

  @override
  List<Object> get props => [groupName, ownerId, groupId, members];
}
