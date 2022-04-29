import 'package:easy_localization/easy_localization.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/infrastructure/failures/synchrowise_failure.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';

void handleSynchrowiseFailure(SynchrowiseFailure failure) {
  if (failure is UnknownSynchrowiseFailure) {
    showErrorToast('unknown_error'.tr(), ToastGravity.BOTTOM);
  } else if (failure is ServerSynchrowiseFailure) {
    showErrorToast('server_error'.tr(), ToastGravity.BOTTOM);
  } else if (failure is ConnectionSynchrowiseFailure) {
    showErrorToast('connection_error'.tr(), ToastGravity.BOTTOM);
  }
}
