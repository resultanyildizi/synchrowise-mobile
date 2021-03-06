import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_area_field.dart';

class SingleTextAreaFieldForm extends StatelessWidget {
  final Function(String text) onTextChanged;
  final Function() saveButton;
  final String desc;
  final String btnText;
  final String hintText;
  final String? errorText;
  final FocusNode focusNode;

  const SingleTextAreaFieldForm({
    Key? key,
    required this.onTextChanged,
    required this.saveButton,
    required this.desc,
    required this.btnText,
    required this.hintText,
    required this.errorText,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          desc.tr(),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 32),
        DefaultTextAreaField(
          focusNode: focusNode,
          icon: null,
          hintText: hintText.tr(),
          onChanged: (username) => onTextChanged(username),
          errorText: errorText,
        ),
        const SizedBox(height: 32),
        DefaultButton(
          backgroundColor: primaryColor,
          borderColor: null,
          textColor: Colors.white,
          text: btnText.tr(),
          padding: 0,
          onTap: () => saveButton(),
        ),
      ],
    );
  }
}
