import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/group_bloc/join_group_bloc/join_group_bloc.dart';
import 'package:synchrowise/injection.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
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

  String? _getGroupKeyErrorText(JoinGroupState state) {
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
                (_) => null,
              );
            },
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<JoinGroupBloc>(
      create: (context) => getIt<JoinGroupBloc>(),
      child: Scaffold(
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
                  MultiBlocListener(
                    listeners: [
                      BlocListener<JoinGroupBloc, JoinGroupState>(
                        listener: (context, state) {},
                      ),
                    ],
                    child: BlocBuilder<JoinGroupBloc, JoinGroupState>(
                      builder: (context, state) {
                        return SingleTextFieldForm(
                          onTextChanged: (value) {
                            log("onTextChanged: $value");
                            context
                                .read<JoinGroupBloc>()
                                .updateGroupKeyText(groupKey: value);
                          },
                          saveButton: () {
                            context.read<JoinGroupBloc>().submit();
                          },
                          title: "join_group".tr(),
                          desc: "join_group_desc".tr(),
                          btnText: "join".tr(),
                          hintText: "group_key".tr(),
                          errorText: _getGroupKeyErrorText(state),
                          focusNode: _focusNode,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
