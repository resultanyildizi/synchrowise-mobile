import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/group_bloc/create_group/create_group_bloc.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/single_text_area_field_form.dart';

class CreateGroupSteps1 extends StatefulWidget {
  const CreateGroupSteps1({Key? key}) : super(key: key);

  @override
  State<CreateGroupSteps1> createState() => _CreateGroupSteps1State();
}

class _CreateGroupSteps1State extends State<CreateGroupSteps1>
    with AutomaticKeepAliveClientMixin {
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  String? _getGroupDescErrorText(CreateGroupState state) {
    return state.showErrors
        ? state.failureOrGroupDescOption.fold(
            () => "group_desc_is_required".tr(),
            (fou) => fou.fold(
              (l) {
                return l.maybeMap(
                  minLength: (failure) {
                    return "group_desc_must_be_at_least_min_characters"
                        .tr(namedArgs: {"min": failure.length.toString()});
                  },
                  maxLength: (failure) {
                    return "group_desc_must_be_at_least_max_characters"
                        .tr(namedArgs: {"max": failure.length.toString()});
                  },
                  orElse: () {
                    return null;
                  },
                );
              },
              (_) => null,
            ),
          )
        : null;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<CreateGroupBloc, CreateGroupState>(
      builder: (context, state) {
        final createGroupBloc = context.read<CreateGroupBloc>();
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              DefaultBackButton(
                onTap: () {
                  createGroupBloc.goBack();
                },
              ),
              Text(
                "group_desc_title".tr(),
                style: Theme.of(context).textTheme.headline2,
              ),
              SingleTextAreaFieldForm(
                onTextChanged: (groupDesc) {
                  final createGroupBloc = context.read<CreateGroupBloc>();
                  createGroupBloc.updateGroupDescText(groupDesc: groupDesc);
                },
                saveButton: () {
                  final createGroupBloc = context.read<CreateGroupBloc>();
                  createGroupBloc.submitGroup();
                },
                desc: "group_desc_subtitle".tr(),
                btnText: "complete".tr(),
                hintText: "group_desc_title".tr(),
                errorText: _getGroupDescErrorText(state),
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
