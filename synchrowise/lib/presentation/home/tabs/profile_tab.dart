import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/profile_bloc/profile_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';
import 'package:synchrowise/presentation/core/widgets/synchrowise_popup.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

class ProfileTab extends StatelessWidget {
  final SynchrowiseUser synchrowiseUser;
  const ProfileTab({
    Key? key,
    required this.synchrowiseUser,
  }) : super(key: key);

  BlocListener<ProfileBloc, ProfileState> get _getProfileBlocListener {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        return state.failureOrUnitOption.fold(
          () => null,
          (_) {
            final authBloc = context.read<AuthBloc>();
            authBloc.check();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<SettingsSectionModel> settingsSection1 = [
      SettingsSectionModel(
        icon: Icons.add_photo_alternate,
        btnText: "avatar".tr(),
        onTap: () {
          Navigator.pushNamed(context, "/profile_avatar");
        },
      ),
      SettingsSectionModel(
        icon: Icons.person,
        btnText: "username".tr(),
        onTap: () {
          Navigator.pushNamed(context, "/profile_username");
        },
      )
    ];

    List<SettingsSectionModel> settingsSection2 = [
      SettingsSectionModel(
        icon: Icons.logout,
        btnText: "logout".tr(),
        onTap: () {
          final profileBloc = context.read<ProfileBloc>();
          profileBloc.signOut();
        },
      ),
      SettingsSectionModel(
        icon: Icons.delete,
        btnText: "delete_account".tr(),
        onTap: () {
          return synchrowisePopup(
            context,
            "delete_account",
            "are_you_want_to_delete_account",
            "no",
            () => Navigator.pop(context),
            "yes",
            () {
              final profileBloc = context.read<ProfileBloc>();
              profileBloc.deleteAccount();
            },
          );
        },
      )
    ];

    return MultiBlocListener(
      listeners: [
        _getProfileBlocListener,
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: CachedNetworkImage(
                    imageUrl: synchrowiseUser.avatar.getHttpsPath,
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
        ),
      ),
    );
  }
}
