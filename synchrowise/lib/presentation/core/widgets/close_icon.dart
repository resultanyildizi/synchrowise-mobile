import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      onTap: () => onTap(),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 25,
      height: 25,
      child: const Icon(
        Icons.close,
        color: Colors.white,
        size: 16,
      ),
    );
  }
}
