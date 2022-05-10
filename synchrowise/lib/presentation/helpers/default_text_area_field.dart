import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';

class DefaultTextAreaField extends StatefulWidget {
  const DefaultTextAreaField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.onChanged,
    this.obscrueText = false,
    this.errorText,
    this.controller,
    this.focusNode,
  }) : super(key: key);

  final IconData? icon;
  final String? errorText;
  final bool obscrueText;
  final String hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String text) onChanged;

  @override
  State<DefaultTextAreaField> createState() => _DefaultTextAreaFieldState();
}

class _DefaultTextAreaFieldState extends State<DefaultTextAreaField> {
  late final TextEditingController _controller;
  late final GlobalKey _textFieldKey;
  late final FocusNode _focusNode;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    _textFieldKey = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
      _focusNode.unfocus();
    }
    super.dispose();
  }

  Border? get _getErorrBorder {
    return widget.errorText != null
        ? Border.all(color: primaryColor, width: 1)
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: grayLightColor,
            borderRadius: BorderRadius.circular(15.0),
            border: _getErorrBorder,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 2,
            ),
            child: Row(
              children: [
                if (widget.icon != null)
                  Container(
                    decoration: BoxDecoration(
                      color: primaryLightColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        widget.icon,
                        color: primaryColor,
                        size: 24,
                      ),
                    ),
                  ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    key: _textFieldKey,
                    minLines: 6,
                    maxLines: 6,
                    focusNode: _focusNode,
                    controller: _controller,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: grayDarkColor),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: Theme.of(context).textTheme.subtitle1,
                      hintText: widget.hintText,
                    ),
                    onChanged: (text) => widget.onChanged(text),
                    obscureText: widget.obscrueText,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (widget.errorText != null) ...[
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 5.0),
            child: Text(
              "* " + widget.errorText!,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: primaryColor),
            ),
          )
        ]
      ],
    );
  }
}
