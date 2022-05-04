import 'package:equatable/equatable.dart';

class GroupMember extends Equatable {
  final String memberId;

  const GroupMember({
    required this.memberId,
  });

  @override
  List<Object?> get props => [memberId];
}
