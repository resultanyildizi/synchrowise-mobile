import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/custom_animated_button.dart';

import '../../../application/signin_form_bloc/signin_form_bloc.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key? key,
    required this.showLoadingIndactor,
    required this.onTap,
  }) : super(key: key);

  final bool showLoadingIndactor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomAnimatedButton(
        width: 50,
        height: 50,
        onTap: onTap,
        child: showLoadingIndactor
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(color: primaryColor),
              )
            : SvgPicture.asset("assets/svg/Google.svg"),
        decoration: BoxDecoration(
          border: Border.all(color: grayColor.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
