import 'package:equatable/equatable.dart';

class GroupFile extends Equatable {
  final String path;
  final DateTime createdDate;
  final String guid;

  const GroupFile({
    required this.path,
    required this.createdDate,
    required this.guid,
  });

  GroupFile copyWith({
    String? path,
    DateTime? createdDate,
    String? guid,
  }) {
    return GroupFile(
      path: path ?? this.path,
      createdDate: createdDate ?? this.createdDate,
      guid: guid ?? this.guid,
    );
  }

  @override
  List<Object> get props => [path, createdDate, guid];

  Map<String, dynamic> toMap() {
    return {
      'path': path,
      'createdDate': createdDate.millisecondsSinceEpoch,
      'guid': guid,
    };
  }

  factory GroupFile.fromMap(Map<String, dynamic> map) {
    return GroupFile(
      path: map['path'] as String,
      createdDate: DateTime.parse(map['createdDate']),
      guid: map['guid'] as String,
    );
  }
}
