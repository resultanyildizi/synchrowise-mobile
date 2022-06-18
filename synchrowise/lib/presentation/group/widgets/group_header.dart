import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/group/group_data.dart';
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                groupData.groupKey,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 20),
              ),
              Row(
                children: [
                  Text(
                    (groupData.members.size > 1
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
