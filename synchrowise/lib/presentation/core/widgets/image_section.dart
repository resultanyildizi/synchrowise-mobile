import 'dart:io';

import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/core/widgets/close_icon.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    Key? key,
    required this.image,
    required this.uploadImageButton,
    required this.removeImageButton,
  }) : super(key: key);

  final File image;
  final Function() uploadImageButton;
  final Function() removeImageButton;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      onTap: () => uploadImageButton(),
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.file(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 12,
            top: 12,
            child: CloseIcon(onTap: removeImageButton),
          ),
        ],
      ),
    );
  }
}
