import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/core/widgets/thin_line.dart';

class ThinLineStepper extends StatelessWidget {
  final int lineCount;
  final double? lineHeight;
  final Set<int> activeLineIndex;

  ThinLineStepper({
    Key? key,
    required this.lineCount,
    required this.activeLineIndex,
    this.lineHeight,
  }) : super(key: key) {
    assert(lineCount > 0);
    assert(activeLineIndex.isNotEmpty);
    assert(activeLineIndex.every((index) => index >= 0 && index < lineCount));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        lineCount,
        (index) {
          return ThinLine(
            margin: calculateMarginByIndex(index),
            active: activeLineIndex.contains(index),
            lineHeight: lineHeight,
          );
        },
      ),
    );
  }

  EdgeInsets calculateMarginByIndex(int index) {
    if (index == 0) {
      return const EdgeInsets.only(right: 4);
    } else if (index == lineCount - 1) {
      return const EdgeInsets.only(left: 4);
    } else {
      return const EdgeInsets.symmetric(horizontal: 4);
    }
  }
}
