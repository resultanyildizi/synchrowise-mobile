import 'package:flutter/material.dart';
import 'package:matrix4_transform/matrix4_transform.dart';
import 'package:synchrowise/presentation/helpers/measure_size.dart';

// ignore: must_be_immutable
class CustomAnimatedContainer extends StatefulWidget {
  CustomAnimatedContainer({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.onTap,
    this.onDoubleTap,
    this.isDelay = true,
    this.scale = 0.96,
    this.onLongPress,
    this.shrinkWrap = false,
    this.decoration,
  }) : super(key: key);
  final double? width;
  final double? height;
  final Widget child;
  final Decoration? decoration;
  final Function()? onTap;
  final Function()? onDoubleTap;
  final Function()? onLongPress;
  bool shrinkWrap = false;
  bool isDelay;
  double scale = 0.96;
  @override
  _CustomAnimatedContainerState createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
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
          if (widget.isDelay) {
            await Future.delayed(const Duration(milliseconds: 100));
          }

          setState(() {
            isScale = false;
          });
          if (widget.onTap != null) {
            widget.onTap!();
          }
        },
        onTapDown: (x) {
          setState(() {
            isScale = true;
          });
        },
        onTapCancel: () async {
          await Future.delayed(const Duration(milliseconds: 110));
          setState(() {
            isScale = false;
          });
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
