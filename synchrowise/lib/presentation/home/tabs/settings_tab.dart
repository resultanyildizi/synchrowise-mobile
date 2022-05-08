import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SettingsSectionModel> settingsSection1 = [
      SettingsSectionModel(
        icon: Icons.add_photo_alternate,
        btnText: "avatar".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        icon: Icons.person,
        btnText: "username".tr(),
        onTap: () {},
      )
    ];

    List<SettingsSectionModel> settingsSection2 = [
      SettingsSectionModel(
        icon: Icons.logout,
        btnText: "logout".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        icon: Icons.delete,
        btnText: "delete_account".tr(),
        onTap: () {},
      )
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          "settings".tr(),
          style: Theme.of(context).textTheme.headline3!,
        ),
        const SizedBox(height: 24),
        SettingSections(settingSectionList: settingsSection1),
        const SizedBox(height: 32),
        SettingSections(settingSectionList: settingsSection2)
      ],
    );
  }
}
