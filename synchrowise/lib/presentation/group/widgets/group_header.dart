import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class GroupHeader extends StatelessWidget {
  final String groupName;
  final int memberCount;

  const GroupHeader({
    Key? key,
    required this.groupName,
    required this.memberCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                groupName,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 20),
              ),
              Row(
                children: [
                  Text(
                    (memberCount > 1
                            ? "x_people_in_group"
                            : "x_person_in_group")
                        .tr(
                      namedArgs: {
                        "count": memberCount.toString(),
                      },
                    ),
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: grayDarkColor2),
                  ),
                  Text(
                    " · ",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: grayDarkColor2),
                  ),
                  Text(
                    "12 dakika önce başladı",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: grayDarkColor2),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CustomAnimatedButton(
              onTap: () {},
              child: const Icon(
                Icons.share,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
