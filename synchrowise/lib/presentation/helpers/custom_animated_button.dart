import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:matrix4_transform/matrix4_transform.dart';

// ignore: must_be_immutable
class CustomAnimatedButton extends StatefulWidget {
  CustomAnimatedButton({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.onTap,
    this.onDoubleTap,
    this.scale = 0.96,
    this.onLongPress,
    this.shrinkWrap = false,
    this.decoration,
  }) : super(key: key);
  final double? width;
  final double? height;
  final Widget child;
  final Decoration? decoration;
  double scale = 0.96;
  bool shrinkWrap = false;

  final Function()? onTap;
  final Function()? onDoubleTap;
  final Function()? onLongPress;
  @override
  _CustomAnimatedButtonState createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  final _debounceDuration = const Duration(milliseconds: 200);
  bool _isEnabled = true;

  bool isScale = false;
  Size measureSize = Size.zero;
  @override
  Widget build(BuildContext context) {
    return MeasureSize(
      onChange: (size) {
        measureSize = size;
      },
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () async {
          await Future.delayed(const Duration(milliseconds: 100));
          setState(() => isScale = false);

          if (!_isEnabled) return;
          _isEnabled = false;
          if (widget.onTap != null) widget.onTap!();
          Timer(_debounceDuration, () => _isEnabled = true);
        },
        onTapDown: (x) {
          setState(() => isScale = true);
        },
        onTapCancel: () async {
          await Future.delayed(const Duration(milliseconds: 110));
          setState(() => isScale = false);
        },
        onDoubleTap: widget.onDoubleTap,
        onLongPress: widget.onLongPress,
        child: AnimatedContainer(
          decoration: widget.decoration,
          alignment: widget.shrinkWrap ? null : FractionalOffset.center,
          duration: const Duration(milliseconds: 100),
          width: widget.width,
          height: widget.height,
          transform: Matrix4Transform()
              .scale(
                isScale ? widget.scale : 1,
                origin: Offset(
                  measureSize.width / 2,
                  measureSize.height / 2,
                ),
              )
              .matrix4,
          child: widget.child,
        ),
      ),
    );
  }
}

class MeasureSize extends StatefulWidget {
  final Widget child;
  final OnWidgetSizeChange onChange;

  const MeasureSize({
    Key? key,
    required this.onChange,
    required this.child,
  }) : super(key: key);

  @override
  _MeasureSizeState createState() => _MeasureSizeState();
}

class _MeasureSizeState extends State<MeasureSize> {
  Size? oldSize;

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance?.addPostFrameCallback(getSize);
    return Container(
      child: widget.child,
    );
  }

  void getSize(_) {
    if (mounted) {
      final Size newSize = context.size!;

      if (oldSize == newSize) return;

      oldSize = newSize;
      widget.onChange(newSize);
    }
  }
}

typedef OnWidgetSizeChange = void Function(Size size);
