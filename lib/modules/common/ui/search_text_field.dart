import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/constants/constants.dart';

class SearchTextField extends StatefulWidget {
  SearchTextField({
    Key? key,
    required this.focusNode,
    required this.controller,
    this.labelText = defaultString,
    this.inputType = TextInputType.text,
    this.borderColor,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.onSubmitted,
    this.inputFormatters,
    this.maxLength,
    this.style,
    this.secure = false,
    this.isEnabled = true,
    this.errorText,
    this.helperText,
    this.autofocus = true,
  }) : super(key: key);
  final String labelText;
  final FocusNode focusNode;
  final Color? borderColor;
  final TextEditingController controller;
  final TextInputType inputType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLength;
  final TextStyle? style;
  final String? errorText;
  final String? helperText;
  final bool secure;
  final bool isEnabled;
  final bool autofocus;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 55,
          decoration: BoxDecoration(color: Palette.current.primaryNero),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 7, bottom: 5),
            child: TextField(
              maxLines: 1,
              enabled: widget.isEnabled,
              autofocus: widget.autofocus,
              maxLength: widget.maxLength,
              onChanged: widget.onChanged,
              onSubmitted: widget.onSubmitted,
              controller: widget.controller,
              focusNode: widget.focusNode,
              cursorColor: Palette.current.darkGray,
              keyboardType: widget.inputType,
              textInputAction: TextInputAction.search,
              obscureText: widget.secure,
              style: widget.style,
              decoration: InputDecoration(
                  hintText: widget.helperText,
                  hintStyle: widget.style,
                  icon: widget.prefixIcon != null
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 6.0),
                          child: widget.prefixIcon,
                        )
                      : null,
                  border: InputBorder.none,
                  suffixIcon: widget.suffixIcon),
            ),
          ),
        ),
      ],
    );
  }
}
