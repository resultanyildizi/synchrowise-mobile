import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Avatar extends Equatable {
  final String path;

  const Avatar({required this.path});

  Map<String, dynamic> toMap() {
    return {'path': path};
  }

  factory Avatar.fromMap(Map<String, dynamic> map) {
    return Avatar(path: map['path'] as String);
  }

  factory Avatar.defaultAvatar() {
    return const Avatar(
        path:
            'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png');
  }

  String get getHttpsPath {
    return "https://${path.replaceAll("\\", "/")}";
  }

  @override
  List<Object?> get props => [path];
}
