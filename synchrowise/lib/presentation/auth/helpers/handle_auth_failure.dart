import 'package:easy_localization/easy_localization.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/infrastructure/auth/auth_facade/failure/auth_facade_failure.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';

void handleAuthFailures(AuthFacadeFailure failure) {
  failure.map(
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
    userCancelled: (_) {
      showErrorToast("login_cancelled".tr(), ToastGravity.BOTTOM);
    },
    signInRequired: (_) {
      showErrorToast("login_required".tr(), ToastGravity.BOTTOM);
    },
    userNotFound: (_) {
      showErrorToast("user_not_found".tr(), ToastGravity.BOTTOM);
    },
  );
}
