import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/group/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/extensions/build_context_ext.dart';
import 'package:synchrowise/presentation/core/widgets/synchrowise_popup.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class GroupButtons extends StatelessWidget {
  const GroupButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _groupSessionBloc = context.read<GroupSessionBloc>();

    final _groupData = context.read<GroupData>();

    final _buttonList = [
      BlocBuilder<GroupSessionBloc, GroupSessionState>(
        builder: (context, state) {
          final isStateNone = state.failureOrMediaOption.isNone();
          return _GroupButton(
            onTap: () {
              if (isStateNone) {
                _groupSessionBloc.uploadMedia();
              } else {
                _groupSessionBloc.removeMedia();
              }
            },
            icon: isStateNone ? Icons.upload : Icons.delete,
          );
        },
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
              _groupSessionBloc.deleteGroup(groupData: _groupData);
              SynchrowiseNavigator.pop(context);
            },
          );
        },
        icon: Icons.close,
      ),
    ];

    final isAdmin = context.synchrowiseUser.synchrowiseId ==
        _groupData.groupOwner.synchrowiseId;

    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: !isAdmin
            ? _LeaveButton(
                groupData: _groupData,
                groupSessionBloc: _groupSessionBloc,
              )
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
    required this.groupSessionBloc,
    required this.groupData,
  }) : super(key: key);

  final GroupSessionBloc groupSessionBloc;
  final GroupData groupData;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      onTap: () {
        return synchrowisePopup(
          context,
          "leave_group".tr(),
          "leave_group_desc".tr(),
          "no".tr(),
          () => SynchrowiseNavigator.pop(context),
          "yes".tr(),
          () {
            groupSessionBloc.leaveGroup(groupData: groupData);
            SynchrowiseNavigator.pop(context);
          },
        );
      },
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
              "leave_group".tr(),
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
          size: 32,
          color: secondaryColor,
        ),
      ),
    );
  }
}
