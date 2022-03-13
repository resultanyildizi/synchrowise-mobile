import 'package:equatable/equatable.dart';

class Premium extends Equatable {
  final PremiumType type;

  const Premium(this.type);

  @override
  List<Object> get props => [type];

  factory Premium.fromValue(int value) {
    if (value == 1) {
      return const Premium(PremiumType.normal);
    } else {
      return const Premium(PremiumType.none);
    }
  }

  int get value {
    switch (type) {
      case PremiumType.none:
        return 0;
      case PremiumType.normal:
        return 1;
    }
  }

  bool get isNormal => type == PremiumType.normal;
  bool get isNone => type == PremiumType.none;
}

enum PremiumType { none, normal }
