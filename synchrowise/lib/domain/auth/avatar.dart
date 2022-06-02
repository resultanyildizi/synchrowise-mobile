import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Avatar extends Equatable {
  final String url;
  final String id;

  const Avatar({required this.url, required this.id});

  Map<String, dynamic> toMap() {
    return {'url': url, 'guid': id};
  }

  factory Avatar.fromMap(Map<String, dynamic> map) {
    if (map['url'] == null) {
      return Avatar.defaultAvatar();
    }

    return Avatar(url: map['url'], id: map['guid']);
  }

  factory Avatar.defaultAvatar() {
    return const Avatar(
      url:
          'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png',
      id: 'default',
    );
  }

  String get getHttpsPath {
    if (url.startsWith('http://') || url.startsWith('https://')) {
      return url.replaceAll('\\', '/');
    } else {
      return "https://${url.replaceAll("\\", "/")}";
    }
  }

  bool get maybeDefault {
    return url.toLowerCase().contains("default");
  }

  @override
  List<Object?> get props => [url];
}
