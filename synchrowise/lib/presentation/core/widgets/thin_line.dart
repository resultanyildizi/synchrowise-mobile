import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

class ThinLine extends StatelessWidget {
  final bool active;
  final double? lineHeight;

  final double defaultLineHeight = 4.0;
  final double defaultPadding = 2.0;
  final EdgeInsets margin;

  const ThinLine({
    Key? key,
    this.lineHeight,
    this.active = true,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: margin,
        height: lineHeight ?? defaultLineHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            (lineHeight ?? defaultLineHeight) / 2,
          ),
          color: active ? primaryColor : grayLightColor,
        ),
      ),
    );
  }
}
