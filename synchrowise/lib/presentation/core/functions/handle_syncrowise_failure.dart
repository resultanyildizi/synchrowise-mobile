import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/infrastructure/core/image_facade/failure/image_failure.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

void handleSynchrowiseFailure(
    BuildContext context, SynchrowiseFailure failure) {
  if (failure is UnknownSynchrowiseFailure) {
    showErrorToast('unknown_error'.tr(), ToastGravity.BOTTOM);
  } else if (failure is ServerSynchrowiseFailure) {
    showErrorToast('server_error'.tr(), ToastGravity.BOTTOM);
  } else if (failure is ConnectionSynchrowiseFailure) {
    showErrorToast('connection_error'.tr(), ToastGravity.BOTTOM);
  } else if (failure is UnauthorizedSynchrowiseFailure) {
    SynchrowiseNavigator.pushNamedAndRemoveUntil(
      context,
      "/welcome",
      (_) => false,
    );
  }
}

void handleImageFailure(ImageFailure failure) {
  failure.map(
    imageCrop: (_) {
      showErrorToast("image_crop_error".tr(), ToastGravity.BOTTOM);
    },
    imagePick: (_) {
      showErrorToast("image_pick_error".tr(), ToastGravity.BOTTOM);
    },
    imageSize: (_) {
      showErrorToast("image_size_error".tr(), ToastGravity.BOTTOM);
    },
    imageCancel: (_) {},
  );
}
