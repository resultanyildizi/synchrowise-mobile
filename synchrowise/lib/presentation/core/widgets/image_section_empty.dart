import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class ImageSectionEmpty extends StatelessWidget {
  const ImageSectionEmpty({
    Key? key,
    required this.showLoadingIndicator,
    required this.uploadImageButton,
  }) : super(key: key);

  final bool showLoadingIndicator;
  final Function() uploadImageButton;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      height: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        color: grayLightColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: showLoadingIndicator
          ? const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(color: primaryColor),
            )
          : const Icon(
              Icons.add_photo_alternate,
              color: grayColor,
              size: 48,
            ),
      onTap: () {
        if (showLoadingIndicator) {
          return;
        } else {
          return uploadImageButton();
        }
      },
    );
  }
}
