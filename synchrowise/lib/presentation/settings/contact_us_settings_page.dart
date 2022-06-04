import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/single_text_area_field_form.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';

class ContactUsSettingsPage extends StatefulWidget {
  const ContactUsSettingsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsSettingsPage> createState() => _ContactUsSettingsPageState();
}

class _ContactUsSettingsPageState extends State<ContactUsSettingsPage> {
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
                Row(
                  children: [
                    DefaultBackButton(
                      onTap: () {
                        SynchrowiseNavigator.pop(context);
                      },
                    ),
                    const Spacer(),
                    Text(
                      "contact_us".tr(),
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 20),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 24),
                SingleTextAreaFieldForm(
                  onTextChanged: (desc) {},
                  saveButton: () {},
                  desc: "Bizimle düşüncelerini paylaşmak ister misiniz?",
                  btnText: "complete".tr(),
                  hintText: "Açıklama...",
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
