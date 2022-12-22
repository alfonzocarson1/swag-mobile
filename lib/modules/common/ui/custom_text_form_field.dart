import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {Key? key,
      required this.labelText,
      required this.focusNode,
      required this.accountController,
      required this.inputType,
      this.suffix,
      this.onChanged,
      this.onSubmitted,
      this.inputFormatters,
      this.maxLength,
      this.style,
      this.secure = false,
      this.autofocus = true})
      : super(key: key);
  final String labelText;
  final FocusNode focusNode;
  final TextEditingController accountController;
  final TextInputType inputType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  Widget? suffix;
  final int? maxLength;
  final TextStyle? style;
  final bool secure;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Palette.current.primaryWhiteSmoke,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              color: Palette.current.primaryWhiteSmoke,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 4, bottom: 8),
              child: TextField(
                autofocus: autofocus,
                maxLength: maxLength,
                onChanged: onChanged,
                onSubmitted: onSubmitted,
                inputFormatters: inputFormatters,
                controller: accountController,
                focusNode: focusNode,
                cursorColor: Colors.black,
                keyboardType: inputType,
                obscureText: secure,
                style: style,
                decoration: InputDecoration(
                    counterText: "",
                    labelStyle: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Palette.current.primaryNero),
                    contentPadding: const EdgeInsets.only(top: 8),
                    border: InputBorder.none,
                    labelText: labelText,
                    suffixIcon: suffix),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
