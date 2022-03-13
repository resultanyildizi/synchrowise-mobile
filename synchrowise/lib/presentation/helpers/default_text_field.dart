import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.onChanged,
    this.obscrueText = false,
    this.errorText,
  }) : super(key: key);

  final IconData? icon;
  final String? errorText;
  final bool obscrueText;
  final String hintText;
  final Function(String text) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: grayLightColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 2,
        ),
        child: Row(
          children: [
            if (icon != null)
              Container(
                decoration: BoxDecoration(
                  color: primaryLightColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    icon,
                    color: primaryColor,
                    size: 24,
                  ),
                ),
              ),
            const SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: grayDarkColor),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: Theme.of(context).textTheme.subtitle1,
                  hintText: hintText,
                  errorText: errorText,
                ),
                onChanged: (text) => onChanged(text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
