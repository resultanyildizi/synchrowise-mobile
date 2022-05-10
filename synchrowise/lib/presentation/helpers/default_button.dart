import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.text,
    required this.padding,
    this.height = 55,
    this.showProgress = false,
    this.style,
    required this.onTap,
  }) : super(key: key);

  final Color backgroundColor;
  final Color? borderColor;
  final Color textColor;
  final String text;
  final double padding;
  final double? height;
  final TextStyle? style;
  final bool showProgress;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: CustomAnimatedButton(
        onTap: onTap,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor != null ? borderColor! : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: showProgress
            ? const SpinKitWave(
                color: Colors.white,
                itemCount: 3,
                size: 14,
                duration: Duration(milliseconds: 1500),
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: style ??
                    Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: textColor),
              ),
      ),
    );
  }
}
