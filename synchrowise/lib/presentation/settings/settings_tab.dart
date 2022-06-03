import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SettingsSectionModel> settingsSection1 = [
      SettingsSectionModel(
        prefixIcon: Icons.language,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "language".tr(),
        onTap: () {
          SynchrowiseNavigator.pushNamed(context, "/language");
        },
      ),
      SettingsSectionModel(
        prefixIcon: Icons.notifications,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "notifications".tr(),
        onTap: () {
          SynchrowiseNavigator.pushNamed(context, "/notification-settings");
        },
      )
    ];

    List<SettingsSectionModel> settingsSection2 = [
      SettingsSectionModel(
        prefixIcon: Icons.language,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "about_us".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        prefixIcon: Icons.mail,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "contact_us".tr(),
        onTap: () {
          SynchrowiseNavigator.pushNamed(context, "/contact_us");
        },
      ),
      SettingsSectionModel(
        prefixIcon: Icons.privacy_tip,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "privacy_policy".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        prefixIcon: Icons.article,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "terms_of_service".tr(),
        onTap: () {},
      )
    ];

    List<SettingsSectionModel> settingsSection3 = [
      SettingsSectionModel(
        prefixIcon: Icons.thumb_up,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "rate_us".tr(),
        onTap: () {},
      ),
      SettingsSectionModel(
        prefixIcon: Icons.share,
        suffixIcon: Icons.keyboard_arrow_right,
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
