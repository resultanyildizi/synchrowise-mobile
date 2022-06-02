import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/circle_stepper.dart';
import 'package:synchrowise/presentation/media/widgets/media_buttons.dart';
import 'package:synchrowise/presentation/media/widgets/media_header.dart';
import 'package:synchrowise/presentation/media/widgets/media_participant.dart';
import 'package:synchrowise/presentation/media/widgets/video_player.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({Key? key}) : super(key: key);

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  late List<Participant> participantList;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

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

    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MediaPlayer(),
              const SizedBox(height: 30),
              const MediaHeader(),
              const SizedBox(height: 20),
              const CircleStepper(),
              const SizedBox(height: 20),
              SizedBox(
                height: 450,
                child: PageView(
                  controller: _pageController,
                  children: [
                    MediaParticipant(participantList: participantList),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
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
