import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/notification_settings_bloc/notification_settings_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/extensions/build_context_ext.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/functions/show_toast.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class NotificationSettingsPage extends StatelessWidget {
  static const routeName = '/main/notification-settings';
  const NotificationSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotificationSettingsBloc>(
      create: (context) => getIt<NotificationSettingsBloc>(),
      child: BlocConsumer<NotificationSettingsBloc, NotificationSettingsState>(
        listenWhen: (previous, current) {
          return current.failureOrUnitOption.isSome();
        },
        listener: (context, state) {
          final failureOrUnit =
              state.failureOrUnitOption.getOrElse(() => throw AssertionError());

          failureOrUnit.fold(
            (f) {
              f.maybeMap(
                connection: (_) {
                  showErrorToast("connection_error".tr(), ToastGravity.BOTTOM);
                },
                server: (_) {
                  showErrorToast("server_error".tr(), ToastGravity.BOTTOM);
                },
                orElse: () {
                  showErrorToast("unknown_error".tr(), ToastGravity.BOTTOM);
                },
              );
            },
            (_) {},
          );
        },
        builder: (context, state) {
          List<SettingsSectionModel> settingsSection = [
            SettingsSectionModel(
              suffixWidget: CupertinoSwitch(
                activeColor: primaryColor,
                value:
                    context.synchrowiseUser.notificationData.groupNotification,
                onChanged: (bool value) async {
                  HapticFeedback.vibrate();
                },
              ),
              btnText: "group_notifications".tr(),
              onTap: () {
                final notificationSettingsBloc =
                    context.read<NotificationSettingsBloc>();
                final authBloc = getIt<AuthBloc>();
                notificationSettingsBloc.updateGroupNotification();
                authBloc.check();
              },
            ),
            SettingsSectionModel(
              suffixWidget: CupertinoSwitch(
                activeColor: primaryColor,
                value: context
                    .synchrowiseUser.notificationData.messageNotification,
                onChanged: (bool value) async {
                  HapticFeedback.vibrate();
                },
              ),
              btnText: "message_notifications".tr(),
              onTap: () {
                final notificationSettingsBloc =
                    context.read<NotificationSettingsBloc>();
                final authBloc = getIt<AuthBloc>();
                notificationSettingsBloc.updateMessageNotification();
                authBloc.check();
              },
            ),
          ];

          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        DefaultBackButton(
                          onTap: () {
                            SynchrowiseNavigator.pop(context);
                          },
                        ),
                        const Spacer(),
                        Text(
                          "notifications".tr(),
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(fontSize: 20),
                        ),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 24),
                    SettingSections(settingSectionList: settingsSection),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
