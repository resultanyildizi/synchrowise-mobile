import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class Avatar extends Equatable {
  final String url;

  const Avatar({required this.url});

  Map<String, dynamic> toMap() {
    return {'url': url};
  }

  factory Avatar.fromMap(Map<String, dynamic> map) {
    if (map['url'] == null) {
      return Avatar.defaultAvatar();
    }

    log('Avatar.fromMap: map: $map');

    return Avatar(url: map['url']);
  }

  factory Avatar.defaultAvatar() {
    return const Avatar(
        url:
            'https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png');
  }

  String get getHttpsPath {
    if (url.startsWith('http://') || url.startsWith('https://')) {
      return url.replaceAll('\\', '/');
    } else {
      return "https://${url.replaceAll("\\", "/")}";
    }
  }

  @override
  List<Object?> get props => [url];
}
