import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

import 'package:synchrowise/domain/auth/synchrowise_user.dart';

@immutable
class GroupData extends Equatable {
  final String groupName;
  final String groupId;
  final String groupDesc;
  final SynchrowiseUser groupOwner;
  final KtList<SynchrowiseUser> members;

  const GroupData({
    required this.groupName,
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
      groupName: groupName,
      groupOwner: groupOwner,
      groupDesc: '',
      groupId: '',
      members: const KtList.empty(),
    );
  }

  factory GroupData.fromMap(Map<String, dynamic> map) {
    // Todo: fix this
    return GroupData(
      groupName: map['groupName'],
      groupOwner: map['ownerId'],
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
      'groupName': groupName,
      'ownerID': groupOwner.synchrowiseId,
      'description': groupDesc,
    };
  }

  Map<String, dynamic> toUpdateMap() {
    return {
      'groupName': groupName,
      'description': groupDesc,
      'ownerID': groupOwner.synchrowiseId,
      'groupId': groupId,
    };
  }

  Map<String, dynamic> toDeleteMap() {
    return {
      'userId': groupOwner,
    };
  }

  @override
  List<Object> get props => [groupName, groupOwner, groupId, members];

  GroupData copyWith({
    String? groupName,
    String? groupId,
    String? groupDesc,
    SynchrowiseUser? groupOwner,
    KtList<SynchrowiseUser>? members,
  }) {
    return GroupData(
      groupName: groupName ?? this.groupName,
      groupId: groupId ?? this.groupId,
      groupDesc: groupDesc ?? this.groupDesc,
      groupOwner: groupOwner ?? this.groupOwner,
      members: members ?? this.members,
    );
  }
}

// {
//   "data": {
//     "id": 1,
//     "guid": "fd78109a-c063-4a51-81cb-84ba2b053990",
//     "groupName": "melihcankaracanın grubu",
//     "groupMemberCount": 1,
//     "createdDate": "2022-05-04T19:15:41.817151Z",
//     "groupOwner": {
//       "id": 5,
//       "guid": "d9102eec-22e1-482d-8042-65847aa837e3",
//       "username": "melihcankaraca",
//       "email": "karacamelihcan2@gmail.com",
//       "avatar": {
//         "id": 3,
//         "guid": "bdfd2af0-59a5-44b2-9429-fb9f6b7c3bd8",
//         "path": "https://localhost:7228/Sources/Users/a5d25429-67b5-48c8-898f-ed1878eb7ada/f90f3b3d-c1b1-4707-b88a-944948157fdb.jpg",
//         "uploadDate": "0001-01-01T00:00:00",
//         "updatedDate": "0001-01-01T00:00:00",
//         "ownerGuid": "d9102eec-22e1-482d-8042-65847aa837e3"
//       },
//       "premiumType": 0
//     },
//     "groupMember": [
//       {
//         "id": 5,
//         "guid": "d9102eec-22e1-482d-8042-65847aa837e3",
//         "username": "melihcankaraca",
//         "email": "karacamelihcan2@gmail.com",
//         "avatar": {
//           "id": 3,
//           "guid": "bdfd2af0-59a5-44b2-9429-fb9f6b7c3bd8",
//           "path": "https://localhost:7228/Sources/Users/a5d25429-67b5-48c8-898f-ed1878eb7ada/f90f3b3d-c1b1-4707-b88a-944948157fdb.jpg",
//           "uploadDate": "0001-01-01T00:00:00",
//           "updatedDate": "0001-01-01T00:00:00",
//           "ownerGuid": "d9102eec-22e1-482d-8042-65847aa837e3"
//         },
//         "premiumType": 0
//       }
//     ]
//   },
//   "statusCode": 200,
//   "isSuccessfull": true,
//   "error": null
// }