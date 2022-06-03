import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/auth_bloc/auth_bloc.dart';
import 'package:synchrowise/application/profile_bloc/profile_bloc.dart';
import 'package:synchrowise/extensions/build_context_ext.dart';
import 'package:synchrowise/presentation/core/functions/handle_syncrowise_failure.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';
import 'package:synchrowise/presentation/core/widgets/synchrowise_popup.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  BlocListener<ProfileBloc, ProfileState> get _getProfileBlocListener {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        return state.failureOrUnitOption.fold(
          () {},
          (failureOrUnit) {
            failureOrUnit.fold(
              (f) {
                SynchrowiseNavigator.pop(context);
                handleSynchrowiseFailure(context, f);
              },
              (r) {
                final authBloc = context.read<AuthBloc>();
                authBloc.check();
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<SettingsSectionModel> settingsSection1 = [
      SettingsSectionModel(
        prefixIcon: Icons.add_photo_alternate,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "avatar".tr(),
        onTap: () {
          SynchrowiseNavigator.pushNamed(context, "/profile-update-avatar");
        },
      ),
      SettingsSectionModel(
        prefixIcon: Icons.person,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "username".tr(),
        onTap: () {
          SynchrowiseNavigator.pushNamed(context, "/profile-update-username");
        },
      )
    ];

    List<SettingsSectionModel> settingsSection2 = [
      SettingsSectionModel(
        prefixIcon: Icons.logout,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "sign_out".tr(),
        onTap: () {
          return synchrowisePopup(
            context,
            "signout".tr(),
            "signout_desc".tr(),
            "no".tr(),
            () => SynchrowiseNavigator.pop(context),
            "yes".tr(),
            () {
              final profileBloc = context.read<ProfileBloc>();
              profileBloc.signOut();
            },
          );
        },
      ),
      SettingsSectionModel(
        prefixIcon: Icons.delete,
        suffixIcon: Icons.keyboard_arrow_right,
        btnText: "delete_account".tr(),
        onTap: () {
          return synchrowisePopup(
            context,
            "delete_your_account".tr(),
            "delete_your_account_desc".tr(),
            "no".tr(),
            () => SynchrowiseNavigator.pop(context),
            "yes".tr(),
            () {
              final profileBloc = context.read<ProfileBloc>();
              profileBloc.deleteAccount();
            },
          );
        },
      )
    ];

    log(context.synchrowiseUser.toMap().toString());

    return MultiBlocListener(
      listeners: [_getProfileBlocListener],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Image.network(
                        context.synchrowiseUser.avatar.getHttpsPath,
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      "${context.synchrowiseUser.username}",
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
          },
        ),
      ),
    );
  }
}
