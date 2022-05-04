import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';
import 'package:synchrowise/domain/group/group_member.dart';

@immutable
class GroupData extends Equatable {
  final String groupName;
  final String ownerId;
  final String groupId;
  final KtList<GroupMember> members;

  const GroupData({
    required this.groupName,
    required this.ownerId,
    required this.groupId,
    required this.members,
  });

  factory GroupData.toCreateGroup(String groupName, String ownerId) {
    return GroupData(
      groupName: groupName,
      ownerId: ownerId,
      groupId: 'unknown',
      members: const KtList.empty(),
    );
  }

  Map<String, dynamic> toCreateMap() {
    return {
      'groupName': groupName,
      'ownerId': ownerId,
    };
  }

  @override
  List<Object> get props => [groupName, ownerId, groupId, members];
}
