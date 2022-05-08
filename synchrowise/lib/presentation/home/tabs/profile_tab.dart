import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/presentation/core/widgets/app_logo_and_name.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';

class ProfileTab extends StatelessWidget {
  final SynchrowiseUser synchrowiseUser;
  const ProfileTab({
    Key? key,
    required this.synchrowiseUser,
  }) : super(key: key);

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
        const AppLogoAndName(),
        const SizedBox(height: 32),
        Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: CachedNetworkImage(
                imageUrl: synchrowiseUser.avatar.path,
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              "${synchrowiseUser.username}",
              style: Theme.of(context).textTheme.headline3!,
            ),
          ],
        ),
        const SizedBox(height: 24),
        SettingSections(settingSectionList: settingsSection1),
        const SizedBox(height: 32),
        SettingSections(settingSectionList: settingsSection2)
      ],
    );
  }
}
