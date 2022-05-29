import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class NotificationsSettingsPage extends StatelessWidget {
  const NotificationsSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SettingsSectionModel> settingsSection = [
      SettingsSectionModel(
        suffixWidget: CupertinoSwitch(
          activeColor: primaryColor,
          value: true,
          onChanged: (bool value) async {
            HapticFeedback.vibrate();
          },
        ),
        btnText: "group_notifications".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        suffixWidget: CupertinoSwitch(
          activeColor: primaryColor,
          value: true,
          onChanged: (bool value) async {
            HapticFeedback.vibrate();
          },
        ),
        btnText: "message_notifications".tr(),
        onTap: () {},
      )
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35.0),
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
      ),
    );
  }
}
