import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/group_bloc/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/group/widgets/group_buttons.dart';
import 'package:synchrowise/presentation/group/widgets/group_header.dart';
import 'package:synchrowise/presentation/group/widgets/group_participant.dart';
import 'package:synchrowise/presentation/group/widgets/media_player.dart';
import 'package:kt_dart/kt.dart';

class GroupSessionPage extends StatelessWidget {
  static const routeName = '/main/group-session';
  const GroupSessionPage({Key? key, required this.groupData}) : super(key: key);

  final GroupData groupData;

  @override
  Widget build(BuildContext context) {
    final participantList = groupData.members.map(
      (member) {
        return Participant(
          member.username,
          member.synchrowiseId == groupData.groupOwner.synchrowiseId,
          false,
        );
      },
    );

    return BlocProvider<GroupSessionBloc>(
      create: (context) {
        final bloc = getIt<GroupSessionBloc>();
        return bloc;
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<GroupSessionBloc, GroupSessionState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MediaPlayer(),
                  const SizedBox(height: 30),
                  GroupHeader(
                    groupName: groupData.groupKey,
                    memberCount: groupData.members.size,
                  ),
                  const SizedBox(height: 20),
                  GroupParticipant(participantList: participantList),
                  GroupButtons(
                    groupOwner: groupData.groupOwner,
                    groupData: groupData,
                  ),
                  const SizedBox(height: 10),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class Participant {
  final String name;
  final bool isAdmin;
  final bool isPaused;

  Participant(this.name, this.isAdmin, this.isPaused);
}
