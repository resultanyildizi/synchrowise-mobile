import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';

Future synchrowisePopup(
  BuildContext context,
  String title,
  String desc,
  String btnText1,
  Function()? onTap1,
  String btnText2,
  Function() onTap2,
) {
  return showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.75),
    builder: (_) => Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Material(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title.tr(),
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 215,
                    child: Text(
                      desc.tr(),
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: grayDarkColor,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: DefaultButton(
                          backgroundColor: Colors.white,
                          borderColor: primaryColor,
                          textColor: primaryColor,
                          text: btnText1.tr(),
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: primaryColor),
                          height: 35,
                          padding: 0,
                          onTap: () {
                            if (onTap1 != null) {
                              onTap1();
                            } else {
                              return SynchrowiseNavigator.pop(context);
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: DefaultButton(
                          backgroundColor: primaryColor,
                          borderColor: null,
                          textColor: Colors.white,
                          text: btnText2.tr(),
                          height: 35,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                          padding: 0,
                          onTap: onTap2,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
