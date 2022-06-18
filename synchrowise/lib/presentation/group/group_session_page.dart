import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:synchrowise/application/group/group_session_bloc/group_session_bloc.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/group/widgets/group_buttons.dart';
import 'package:synchrowise/presentation/group/widgets/group_header.dart';
import 'package:synchrowise/presentation/group/widgets/group_participant.dart';
import 'package:synchrowise/presentation/group/widgets/media_player.dart';

class GroupSessionPage extends StatelessWidget {
  static const routeName = '/main/group-session';
  const GroupSessionPage({Key? key, required this.groupData}) : super(key: key);

  final GroupData groupData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GroupSessionBloc>(
      create: (context) {
        final bloc = getIt<GroupSessionBloc>();
        return bloc;
      },
      child: Provider<GroupData>(
        create: (context) => groupData,
        child: Scaffold(
          body: SafeArea(
            child: BlocBuilder<GroupSessionBloc, GroupSessionState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    MediaPlayer(),
                    SizedBox(height: 30),
                    GroupHeader(),
                    SizedBox(height: 20),
                    GroupParticipant(),
                    GroupButtons(),
                    SizedBox(height: 10),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
