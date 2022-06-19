import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:synchrowise/application/core/share_content_bloc/share_content_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/group/group_data.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class GroupHeader extends StatelessWidget {
  const GroupHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final groupData = context.read<GroupData>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  groupData.groupKey,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 20),
                ),
                Text(
                  groupData.groupDesc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 14),
                ),
                RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                      text: (groupData.members.size > 1
                              ? "x_people_in_group"
                              : "x_person_in_group")
                          .tr(
                        namedArgs: {
                          "count": groupData.members.size.toString(),
                        },
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: grayDarkColor2),
                    ),
                    TextSpan(
                      text: " · ",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: grayDarkColor2),
                    ),
                    TextSpan(
                      text: convertToString(groupData.createdAt),
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: grayDarkColor2),
                    ),
                  ],
                )),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: CustomAnimatedButton(
              onTap: () {
                getIt<ShareContentBloc>().share(
                  text:
                      "${groupData.groupUrl}\n\nAramıza katılmak için bağlantı linkine tıklayabilirsin!",
                  subject: "Synchrowise grup daveti",
                );
              },
              child: const Icon(Icons.share),
            ),
          ),
        ],
      ),
    );
  }
}

String convertToString(DateTime createdAt) {
  final ms = DateTime.now().toUtc().difference(createdAt);

  final mins = ms.inMinutes;

  if (mins > 60) {
    return (ms.inHours > 1 ? "hours_ago" : "hour_ago").tr(
      namedArgs: {"time": ms.inHours.toString()},
    );
  } else if (mins > 0) {
    return (ms.inMinutes > 1 ? "minutes_ago" : "minute_ago").tr(
      namedArgs: {"time": ms.inMinutes.toString()},
    );
  } else {
    return "just now";
  }
}
