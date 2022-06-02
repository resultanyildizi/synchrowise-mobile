import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

class CircleStepper extends StatelessWidget {
  const CircleStepper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: grayDarkColor,
          ),
          width: 8,
          height: 8,
        ),
        const SizedBox(width: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: grayColor,
          ),
          width: 8,
          height: 8,
        )
      ],
    );
  }
}
