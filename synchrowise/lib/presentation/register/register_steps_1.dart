import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synchrowise/application/register_steps_bloc/registeration_bloc.dart';
import 'package:synchrowise/presentation/core/widgets/default_back_button.dart';
import 'package:synchrowise/presentation/core/widgets/single_text_field_form.dart';

class RegisterSteps1 extends StatefulWidget {
  const RegisterSteps1({Key? key}) : super(key: key);

  @override
  State<RegisterSteps1> createState() => _RegisterSteps1State();
}

class _RegisterSteps1State extends State<RegisterSteps1>
    with AutomaticKeepAliveClientMixin {
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();

    super.initState();
  }

  String? _getUsernameErrorText(RegisterationState state) {
    return state.showErrors
        ? state.valueFailureOrUsernameOption.fold(
            () => "username_is_required".tr(),
            (fou) => fou.fold(
              (l) {
                return l.maybeMap(
                  invalidUsername: (_) {
                    return "username_is_invalid".tr();
                  },
                  minLength: (failure) {
                    return "username_must_be_at_least_min_characters"
                        .tr(namedArgs: {"min": failure.length.toString()});
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
    return BlocConsumer<RegisterationBloc, RegisterationState>(
      listenWhen: (previous, current) {
        return previous.step == 1 && current.step == 2;
      },
      listener: (context, state) {
        if (state.step == 2) {
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
              DefaultBackButton(onTap: () {
                final registerStepsBloc = context.read<RegisterationBloc>();
                registerStepsBloc.goBack();
              }),
              SingleTextFieldForm(
                onTextChanged: (username) {
                  final registerStepsBloc = context.read<RegisterationBloc>();
                  registerStepsBloc.updateUsernameText(username: username);
                },
                saveButton: () {
                  if (state.progressing) return;
                  final registerStepsBloc = context.read<RegisterationBloc>();
                  registerStepsBloc.saveUsername();
                },
                title: "username".tr(),
                desc: "username_description".tr(),
                btnText: "continue".tr(),
                hintText: "username".tr(),
                errorText: _getUsernameErrorText(state),
                focusNode: _focusNode,
                showProgress: state.progressing,
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
