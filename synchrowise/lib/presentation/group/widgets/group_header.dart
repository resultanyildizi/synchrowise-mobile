import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

class MediaHeader extends StatelessWidget {
  const MediaHeader({
    Key? key,
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
                "Forest Gump",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 20),
              ),
              Row(
                children: [
                  Text(
                    "8 kişi izliyor",
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
