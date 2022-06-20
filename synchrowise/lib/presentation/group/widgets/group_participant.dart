import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:provider/provider.dart';
import 'package:synchrowise/application/group/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/auth/user_summary.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/extensions/build_context_ext.dart';
import 'package:synchrowise/presentation/core/widgets/close_icon.dart';
import 'package:synchrowise/presentation/core/widgets/synchrowise_popup.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class GroupParticipant extends StatelessWidget {
  const GroupParticipant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _groupSessionBloc = context.read<GroupSessionBloc>();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const ParticipantHeader(),
            const SizedBox(height: 20),
            ParticipantBody(groupSessionBloc: _groupSessionBloc),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class ParticipantBody extends StatelessWidget {
  const ParticipantBody({
    Key? key,
    required this.groupSessionBloc,
  }) : super(key: key);

  final GroupSessionBloc groupSessionBloc;

  @override
  Widget build(BuildContext context) {
    final groupData = context.read<GroupData>();

    return BlocBuilder<GroupSessionBloc, GroupSessionState>(
      builder: (context, state) {
        final members = state.membersOption.fold(
          () => const KtList<UserSummary>.empty(),
          (members) => members,
        );
        return Expanded(
          child: ListView.builder(
            itemCount: members.size,
            itemBuilder: (context, index) {
              final member = members[index];
              final isAdmin =
                  member.synchrowiseId == groupData.groupOwner.synchrowiseId;
              final myId = context.synchrowiseUser.synchrowiseId;

              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: grayLightColor,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 1.5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: CachedNetworkImage(
                            width: 35,
                            height: 35,
                            imageUrl: member.avatar.getHttpsPath,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              member.username,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(fontSize: 16),
                            ),
                            if (isAdmin)
                              Text(
                                isAdmin ? "admin".tr() : "",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        fontStyle: FontStyle.italic,
                                        color: grayDarkColor2),
                              ),
                          ],
                        ),
                        const Spacer(),
                        if (myId == groupData.groupOwner.synchrowiseId &&
                            myId != member.synchrowiseId)
                          CloseIcon(
                            onTap: () {
                              return synchrowisePopup(
                                context,
                                "delete_member".tr(),
                                "delete_member_desc".tr(),
                                "no".tr(),
                                () => SynchrowiseNavigator.pop(context),
                                "yes".tr(),
                                () {
                                  groupSessionBloc.deleteMember(
                                    groupData: groupData,
                                    member: member,
                                  );
                                  SynchrowiseNavigator.pop(context);
                                },
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class ParticipantHeader extends StatelessWidget {
  const ParticipantHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Katılımcılar",
      style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 20),
    );
  }
}
