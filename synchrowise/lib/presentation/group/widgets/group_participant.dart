import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/core/widgets/close_icon.dart';
import 'package:synchrowise/presentation/group/group_session_page.dart';

class GroupParticipant extends StatelessWidget {
  const GroupParticipant({
    Key? key,
    required this.participantList,
  }) : super(key: key);

  final KtList<Participant> participantList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const ParticipantHeader(),
            const SizedBox(height: 20),
            ParticipantBody(participantList: participantList),
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
    required this.participantList,
  }) : super(key: key);

  final KtList<Participant> participantList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: participantList.size,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: grayLightColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: participantList[index].isPaused
                      ? primaryColor
                      : Colors.transparent,
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
                        imageUrl:
                            "https://lh4.googleusercontent.com/-nM2qPired7A/AAAAAAAAAAI/AAAAAAAAAAA/WVQBNKTRsgI/photo.jpg",
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          participantList[index].name,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(fontSize: 16),
                        ),
                        if (participantList[index].isAdmin ||
                            participantList[index].isPaused)
                          Text(
                            participantList[index].isAdmin
                                ? "Kurucu"
                                : "Duraklattı",
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
                    if (index != 0) CloseIcon(onTap: () {}),
                  ],
                ),
              ),
            ),
          );
        },
      ),
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
