import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

void registeredSuccessfulBottomSheet(BuildContext context) {
  showFlexibleBottomSheet(
    context: context,
    builder: (
      BuildContext context,
      ScrollController scrollController,
      double bottomSheetOffset,
    ) {
      return Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: kcWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/svg/Successful.svg",
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
              ),
              const SizedBox(height: 35),
              Text(
                "registered_successfully".tr(),
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                "now_you_can_use_synchrowise".tr(),
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              DefaultButton(
                backgroundColor: primaryColor,
                borderColor: null,
                textColor: kcWhiteColor,
                text: "lets_get_started".tr(),
                padding: 35,
                onTap: () {},
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      );
    },
  );
}
