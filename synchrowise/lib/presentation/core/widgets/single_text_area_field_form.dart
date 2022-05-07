import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/presentation/helpers/default_button.dart';
import 'package:synchrowise/presentation/helpers/default_text_area_field.dart';
import 'package:synchrowise/presentation/helpers/default_text_field.dart';

class SingleTextAreaFieldForm extends StatefulWidget {
  final Function(String text) changedButton;
  final Function() saveButton;
  final String title;
  final String desc;
  final String btnText;
  final String hintText;
  final String? errorText;
  final FocusNode focusNode;

  const SingleTextAreaFieldForm({
    Key? key,
    required this.changedButton,
    required this.saveButton,
    required this.title,
    required this.desc,
    required this.btnText,
    required this.hintText,
    required this.errorText,
    required this.focusNode,
  }) : super(key: key);

  @override
  State<SingleTextAreaFieldForm> createState() =>
      _SingleTextAreaFieldFormState();
}

class _SingleTextAreaFieldFormState extends State<SingleTextAreaFieldForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          widget.title.tr(),
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          widget.desc.tr(),
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 32),
        DefaultTextAreaField(
          focusNode: widget.focusNode,
          icon: null,
          hintText: widget.hintText.tr(),
          onChanged: (username) => widget.changedButton(username),
          errorText: widget.errorText,
        ),
        const SizedBox(height: 32),
        DefaultButton(
          backgroundColor: primaryColor,
          borderColor: null,
          textColor: kcWhiteColor,
          text: widget.btnText.tr(),
          padding: 0,
          onTap: () => widget.saveButton(),
        ),
      ],
    );
  }
}
