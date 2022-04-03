import 'package:easy_localization/easy_localization.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/infrastructure/auth/failure/auth_failure.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';

void handleAuthFailures(AuthFailure failure) {
  failure.maybeMap(
    invalidCredentials: (_) {
      showErrorToast("invalid_email_or_password".tr(), ToastGravity.BOTTOM);
    },
    userDisabled: (_) {
      showErrorToast("account_disabled".tr(), ToastGravity.BOTTOM);
    },
    invalidEmail: (_) {
      showErrorToast("invalid_email_or_password".tr(), ToastGravity.BOTTOM);
    },
    emailAlreadyInUse: (_) {
      showErrorToast("user_already_exists".tr(), ToastGravity.BOTTOM);
    },
    weakPassword: (_) {
      showErrorToast("weak_password".tr(), ToastGravity.BOTTOM);
    },
    connection: (_) {
      showErrorToast("connection_error".tr(), ToastGravity.BOTTOM);
    },
    unknown: (_) {
      showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
    },
    orElse: () {},
  );
}
