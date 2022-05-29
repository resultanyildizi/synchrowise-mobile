import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';
import 'package:synchrowise/presentation/helpers/wave_loading_indicator.dart';

class GroupActionCards extends StatelessWidget {
  const GroupActionCards({
    Key? key,
    required this.cardBackgroundImage,
    required this.title,
    required this.desc,
    required this.onTap,
    required this.showProgress,
    this.color = Colors.white,
  }) : super(key: key);

  final String cardBackgroundImage;
  final String title;
  final String desc;
  final Color? color;
  final bool showProgress;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedButton(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            cardBackgroundImage,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            children: showProgress
                ? [const WaveLoadingIndicator(size: 22)]
                : [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: color),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      desc,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: color),
                      textAlign: TextAlign.center,
                    ),
                  ],
          ),
        ],
      ),
    );
  }
}
