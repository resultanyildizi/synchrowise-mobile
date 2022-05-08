import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SettingsSectionModel> settingsSection1 = [
      SettingsSectionModel(
        icon: Icons.language,
        btnText: "language".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        icon: Icons.notifications,
        btnText: "notifications".tr(),
        onTap: () {},
      )
    ];

    List<SettingsSectionModel> settingsSection2 = [
      SettingsSectionModel(
        icon: Icons.language,
        btnText: "about_us".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        icon: Icons.mail,
        btnText: "contact_us".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        icon: Icons.privacy_tip,
        btnText: "privacy_policy".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        icon: Icons.article,
        btnText: "terms_of_service".tr(),
        onTap: () {},
      )
    ];

    List<SettingsSectionModel> settingsSection3 = [
      SettingsSectionModel(
        icon: Icons.thumb_up,
        btnText: "rate_us".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        icon: Icons.share,
        btnText: "share_us".tr(),
        onTap: () {},
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "settings".tr(),
              style: Theme.of(context).textTheme.headline3!,
            ),
            Text(
              "settings_desc".tr(),
              style: Theme.of(context).textTheme.subtitle1!,
            ),
            const SizedBox(height: 24),
            SettingSections(settingSectionList: settingsSection1),
            const SizedBox(height: 32),
            SettingSections(settingSectionList: settingsSection2),
            const SizedBox(height: 32),
            SettingSections(settingSectionList: settingsSection3),
          ],
        ),
      ),
    );
  }
}
