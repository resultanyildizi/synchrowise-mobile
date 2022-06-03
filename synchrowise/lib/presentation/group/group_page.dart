import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/group/widgets/group_header.dart';
import 'package:synchrowise/presentation/group/widgets/group_participant.dart';
import 'package:synchrowise/presentation/group/widgets/media_player.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  late List<Participant> participantList;

  @override
  void initState() {
    super.initState();

    participantList = [
      Participant("Selim Gülce", true, false),
      Participant("Nurettin Resul Tanyıldızı", false, false),
      Participant("Melihcan Kazım Karaca", false, true),
      Participant("Şevval Alpaslan", false, false),
      Participant("Emre Gülce", false, false),
      Participant("Ahmet Varol", false, false),
      Participant("Yasin Kemer", false, false),
      Participant("Mehmet Yavuz", false, false),
      Participant("Doğan Dinçer", false, false),
      Participant("Ali Can", false, false),
      Participant("Semih Taş", false, false),
      Participant("Habib Müküs", false, false),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MediaPlayer(),
            const SizedBox(height: 30),
            const GroupHeader(),
            const SizedBox(height: 20),
            GroupParticipant(participantList: participantList),
            const SizedBox(height: 10),
          ],
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
