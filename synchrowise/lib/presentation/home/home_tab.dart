import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/domain/auth/synchrowise_user.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/home/widgets/group_action_cards.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "hi_wave_icon".tr(namedArgs: {
                "username": context.read<SynchrowiseUser>().username!
              }),
              style:
                  Theme.of(context).textTheme.headline2!.copyWith(fontSize: 28),
            ),
            Text(
              "what_would_you_like_to_do".tr(),
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: grayColor, fontSize: 16),
            ),
            const SizedBox(height: 16),
            if (false)
              GroupActionCards(
                cardBackgroundImage: whiteCardImagePath,
                title: "r123cKl14",
                desc: "open_your_group".tr(),
                color: primaryColor,
                onTap: () {},
              )
            else
              GroupActionCards(
                cardBackgroundImage: redCardImagePath,
                title: "create_a_group".tr(),
                desc: "create_a_group_description".tr(),
                onTap: () {
                  SynchrowiseNavigator.pushNamed(context, "/create_group");
                },
              ),
            GroupActionCards(
              cardBackgroundImage: blueCardImagePath,
              title: "join_a_group".tr(),
              desc: "join_a_group_description".tr(),
              onTap: () {
                SynchrowiseNavigator.pushNamed(context, "/join_group");
              },
            ),
          ],
        ),
      ),
    );
  }
}
