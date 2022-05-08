import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class DefaultBackButton extends StatelessWidget {
  final Function()? onTap;
  const DefaultBackButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      shrinkWrap: true,
      onTap: () {
        if (onTap != null) {
          onTap!();
        } else {
          SynchrowiseNavigator.pop(context);
        }
      },
      child: const Padding(
        padding: EdgeInsets.all(0),
        child: Icon(
          Icons.arrow_back_ios,
          color: grayDarkColor,
        ),
      ),
    );
  }
}
