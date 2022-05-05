import 'package:equatable/equatable.dart';

class GroupMemberData extends Equatable {
  final String memberId;

  const GroupMemberData({
    required this.memberId,
  });

  @override
  List<Object?> get props => [memberId];
}
