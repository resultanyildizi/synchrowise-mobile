import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/setting_sections.dart';
import 'package:synchrowise/presentation/core/widgets/single_text_field_form.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class JoinGroupPage extends StatefulWidget {
  const JoinGroupPage({Key? key}) : super(key: key);

  @override
  State<JoinGroupPage> createState() => _JoinGroupPageState();
}

class _JoinGroupPageState extends State<JoinGroupPage> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultBackButton(
                  onTap: () {
                    SynchrowiseNavigator.pop(context);
                  },
                ),
                SingleTextFieldForm(
                  onTextChanged: (groupName) {},
                  saveButton: () {},
                  title: "join_group".tr(),
                  desc: "join_group_desc".tr(),
                  btnText: "join".tr(),
                  hintText: "group_key".tr(),
                  errorText: null,
                  focusNode: _focusNode,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
