import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/search_text_field.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

typedef ResultViewBuilder = Widget Function(
  BuildContext context,
  TextEditingController textEditingController,
);

class SearchInput extends StatefulWidget {
  final String hint;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final Function? onCancel;
  final FocusNode? focusNode;
  final ResultViewBuilder resultViewBuilder;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool showIconAlways;

  const SearchInput({
    required this.hint,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onSubmitted,
    this.onCancel,
    this.enabled = true,
    required this.resultViewBuilder,
    this.suffixIcon,
    this.prefixIcon,
    this.showIconAlways = false,
  });

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  late FocusNode _focusNode;
  late TextEditingController _textEditingController;

  bool get _shouldShowSuffixIcon =>
      _focusNode.hasFocus; // || _textEditingController.text.isNotEmpty;

  void _onChangedField() {
    setState(() {});
  }

  void _onChangedFocus() {
    setState(() {});
  }

  void _updateTextEditingController(
      TextEditingController? old, TextEditingController? current) {
    if ((old == null && current == null) || old == current) {
      return;
    }
    if (old == null) {
      _textEditingController.removeListener(_onChangedField);
      _textEditingController.dispose();
      _textEditingController = current!;
    } else if (current == null) {
      _textEditingController.removeListener(_onChangedField);
      _textEditingController = TextEditingController();
    } else {
      _textEditingController.removeListener(_onChangedField);
      _textEditingController = current;
    }
    _textEditingController.addListener(_onChangedField);
  }

  void _updateFocusNode(FocusNode? old, FocusNode? current) {
    if ((old == null && current == null) || old == current) {
      return;
    }
    if (old == null) {
      _focusNode.removeListener(_onChangedFocus);
      _focusNode.dispose();
      _focusNode = current!;
    } else if (current == null) {
      _focusNode.removeListener(_onChangedFocus);
      _focusNode = FocusNode();
    } else {
      _focusNode.removeListener(_onChangedFocus);
      _focusNode = current;
    }
    _focusNode.addListener(_onChangedFocus);
  }

  @override
  void initState() {
    super.initState();
    _textEditingController = widget.controller ?? TextEditingController();
    _textEditingController.addListener(_onChangedField);
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onChangedFocus);
  }

  @override
  void didUpdateWidget(covariant SearchInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateTextEditingController(
      oldWidget.controller,
      widget.controller,
    );
    _updateFocusNode(oldWidget.focusNode, widget.focusNode);
  }

  @override
  void dispose() {
    _textEditingController.removeListener(_onChangedField);
    if (widget.controller == null) {
      _textEditingController.dispose();
    }
    _focusNode.removeListener(_onChangedFocus);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchTextField(
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(
                  letterSpacing: 0.015,
                  color: Palette.current.darkGray),
            isEnabled: widget.enabled,
            helperText: widget.hint,
            controller: _textEditingController,
            focusNode: _focusNode,
            onChanged: widget.onChanged,
            onSubmitted: widget.onSubmitted,
            prefixIcon: widget.prefixIcon,
            suffixIcon: _shouldShowSuffixIcon
                ? AnimatedSwitcher(
                    duration: const Duration(milliseconds: 150),
                    child: SizedBox.fromSize(
                      size: const Size(56, 56),
                      child: ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              _focusNode.unfocus();
                              _textEditingController.clear();
                              setState(() {});
                              widget.onCancel?.call();
                            },
                            child: widget.suffixIcon,
                          ),
                        ),
                      ),
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
