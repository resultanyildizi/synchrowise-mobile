import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/close_icon.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class ImageSectionEmpty extends StatelessWidget {
  ImageSectionEmpty({
    Key? key,
    required this.onUploadButton,
    required this.onCloseButtonTap,
    required this.currentAvatarUrl,
    required this.showLoadingIndicator,
  }) : super(key: key) {
    assert((currentAvatarUrl != null && onCloseButtonTap != null) ||
        currentAvatarUrl == null && onCloseButtonTap == null);
  }

  final Function() onUploadButton;
  final Function()? onCloseButtonTap;

  final bool showLoadingIndicator;
  final String? currentAvatarUrl;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
        color: grayLightColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (currentAvatarUrl == null)
            const Icon(
              Icons.add_photo_alternate,
              color: grayColor,
              size: 48,
            )
          else
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                width: MediaQuery.of(context).size.width - 70,
                height: MediaQuery.of(context).size.height / 2.5,
                imageUrl: currentAvatarUrl!,
                fit: BoxFit.cover,
              ),
            ),
          if (showLoadingIndicator)
            const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(color: primaryColor),
            ),
          if (onCloseButtonTap != null)
            Positioned(
              right: 12,
              top: 12,
              child: CloseIcon(onTap: onCloseButtonTap!),
            )
        ],
      ),
      onTap: () {
        if (showLoadingIndicator) {
          return;
        } else {
          return onUploadButton();
        }
      },
    );
  }
}
