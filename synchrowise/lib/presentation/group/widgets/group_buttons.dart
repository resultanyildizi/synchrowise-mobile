import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/group_bloc/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/extensions/build_context_ext.dart';
import 'package:synchrowise/presentation/core/widgets/synchrowise_popup.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class GroupButtons extends StatelessWidget {
  const GroupButtons({
    Key? key,
    required this.groupOwner,
    required this.groupData,
  }) : super(key: key);

  final UserSummary groupOwner;
  final GroupData groupData;

  @override
  Widget build(BuildContext context) {
    final _groupSessionBloc = context.read<GroupSessionBloc>();

    final _buttonList = [
      _GroupButton(
        onTap: () => _groupSessionBloc.uploadMedia(),
        icon: Icons.upload,
      ),
      _GroupButton(onTap: () {}, icon: Icons.settings),
      _GroupButton(
        onTap: () {
          return synchrowisePopup(
            context,
            "delete_group".tr(),
            "delete_group_desc".tr(),
            "no".tr(),
            () => SynchrowiseNavigator.pop(context),
            "yes".tr(),
            () {
              _groupSessionBloc.deleteGroup(groupData: groupData);
            },
          );
        },
        icon: Icons.close,
      ),
    ];

    final isAdmin =
        context.synchrowiseUser.synchrowiseId == groupOwner.synchrowiseId;

    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: !isAdmin
            ? const _LeaveButton()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [for (final _button in _buttonList) _button],
              ),
      ),
    );
  }
}

class _LeaveButton extends StatelessWidget {
  const _LeaveButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width - 80,
        height: 60,
        decoration: BoxDecoration(
          color: primaryExtraLightColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.logout,
              size: 35,
              color: primaryColor,
            ),
            const SizedBox(width: 15),
            Text(
              "leave".tr(),
              style:
                  Theme.of(context).textTheme.headline6!.copyWith(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

class _GroupButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;

  const _GroupButton({
    Key? key,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: secondaryLightColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          size: 35,
          color: secondaryDarkColor,
        ),
      ),
    );
  }
}
