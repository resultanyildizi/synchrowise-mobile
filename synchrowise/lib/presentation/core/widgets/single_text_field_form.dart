import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class SingleTextFieldForm extends StatelessWidget {
  final Function(String text) onTextChanged;
  final Function() saveButton;
  final String title;
  final String desc;
  final String btnText;
  final String fieldText;
  final String? errorText;
  final FocusNode focusNode;
  final bool showProgress;

  const SingleTextFieldForm({
    Key? key,
    required this.onTextChanged,
    required this.saveButton,
    required this.title,
    required this.desc,
    required this.btnText,
    required this.fieldText,
    required this.errorText,
    required this.focusNode,
    this.showProgress = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          title.tr(),
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          desc.tr(),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 32),
        DefaultTextField(
          focusNode: focusNode,
          icon: null,
          hintText: "username".tr(),
          onChanged: (username) => onTextChanged(username),
          errorText: errorText,
        ),
        const SizedBox(height: 32),
        DefaultButton(
          backgroundColor: primaryColor,
          borderColor: null,
          textColor: kcWhiteColor,
          text: "continue".tr(),
          padding: 0,
          showProgress: showProgress,
          onTap: () => saveButton(),
        ),
      ],
    );
  }
}
