import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/group_bloc/create_group_bloc/create_group_bloc.dart';
import 'package:synchrowise/route/synchrowise_navigator.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/single_text_field_form.dart';

class CreateGroupSteps0 extends StatefulWidget {
  const CreateGroupSteps0({Key? key}) : super(key: key);

  @override
  State<CreateGroupSteps0> createState() => _CreateGroupSteps0State();
}

class _CreateGroupSteps0State extends State<CreateGroupSteps0>
    with AutomaticKeepAliveClientMixin {
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  String? _getGroupNameErrorText(CreateGroupState state) {
    return state.showErrors
        ? state.failureOrGroupKeyOption.fold(
            () {
              return "group_key_is_required".tr();
            },
            (fou) {
              return fou.fold(
                (l) {
                  return l.maybeMap(
                    minLength: (failure) {
                      return "group_key_must_be_at_least_min_characters"
                          .tr(namedArgs: {"min": failure.length.toString()});
                    },
                    invalidGroupName: (_) {
                      return "group_key_is_invalid".tr();
                    },
                    orElse: () {
                      return null;
                    },
                  );
                },
                (_) {
                  return null;
                },
              );
            },
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<CreateGroupBloc, CreateGroupState>(
      listenWhen: (previous, current) {
        return previous.step == 0;
      },
      listener: (context, state) {
        if (state.step == 1) {
          _focusNode.unfocus();
        }
      },
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              DefaultBackButton(
                onTap: () {
                  SynchrowiseNavigator.pop(context);
                },
              ),
              SingleTextFieldForm(
                onTextChanged: (groupName) {
                  final createGroupBloc = context.read<CreateGroupBloc>();
                  createGroupBloc.updateGroupNameText(groupName: groupName);
                },
                initialValue:
                    "${WordPair.random().asString}${Random().nextInt(100)}",
                saveButton: () {
                  final createGroupBloc = context.read<CreateGroupBloc>();
                  createGroupBloc.saveUsername();
                },
                title: "group_key".tr(),
                desc: "group_key_desc".tr(),
                btnText: "continue".tr(),
                hintText: "group_key".tr(),
                errorText: _getGroupNameErrorText(state),
                focusNode: _focusNode,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
