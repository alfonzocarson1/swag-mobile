import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/constants/constants.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {Key? key,
      required this.focusNode,
      required this.controller,
      this.labelText = defaultString,
      this.inputType = TextInputType.text,
      this.borderColor,
      this.suffix,
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
      this.dropdownForm = false,
      this.dropdownFormItems,
      this.dropdownOnChanged,
      this.dropdownvalue})
      : super(key: key);
  final String labelText;
  final FocusNode focusNode;
  final Color? borderColor;
  final TextEditingController controller;
  final TextInputType inputType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffix;
  final int? maxLength;
  final TextStyle? style;
  final String? errorText;
  final String? helperText;
  final bool secure;
  final bool isEnabled;
  final bool autofocus;
  final bool dropdownForm;
  final List<String>? dropdownFormItems;
  final void Function(String?)? dropdownOnChanged;
  final String? dropdownvalue;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.dropdownForm
            ? Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: widget.borderColor != null
                        ? Border.all(
                            color: widget.errorText != null
                                ? Palette.current.primaryNeonPink
                                : widget.borderColor!,
                          )
                        : null,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: [
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Palette.current.primaryWhiteSmoke,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 0, bottom: 8, right: 10),
                            child: DropdownButtonFormField(
                              icon: Image.asset(
                                'assets/images/IconDropdow.png',
                                width: 20,
                                height: 20,
                              ),
                              decoration: InputDecoration(
                                  counterText: "",
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w100,
                                          color: Palette.current.primaryNero),
                                  contentPadding: const EdgeInsets.only(top: 0),
                                  border: InputBorder.none,
                                  labelText: ""),
                              value: widget.dropdownvalue,
                              onChanged: widget.dropdownOnChanged,
                              items:
                                  widget.dropdownFormItems?.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        Container(
                          height: widget.errorText != null ? 1.5 : 0,
                          width: MediaQuery.of(context).size.width,
                          color: Palette.current.primaryNeonPink,
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: widget.borderColor != null
                        ? Border.all(
                            color: widget.errorText != null
                                ? Palette.current.primaryNeonPink
                                : widget.borderColor!,
                          )
                        : null,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Column(
                      children: [
                        Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: Palette.current.primaryWhiteSmoke),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 4),
                            child: TextField(
                              enabled: widget.isEnabled,
                              autofocus: widget.autofocus,
                              maxLength: widget.maxLength,
                              onChanged: widget.onChanged,
                              onSubmitted: widget.onSubmitted,
                              inputFormatters: widget.inputFormatters ??
                                  [
                                    FilteringTextInputFormatter.deny(
                                        RegExp(r'\s')),
                                  ],
                              controller: widget.controller,
                              focusNode: widget.focusNode,
                              cursorColor: Colors.black,
                              keyboardType: widget.inputType,
                              obscureText: widget.secure,
                              style: widget.style,
                              decoration: InputDecoration(
                                  counterText: "",
                                  labelStyle: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontFamily: "Ringside",
                                        color: Palette.current.primaryNero,
                                      ),
                                  contentPadding: const EdgeInsets.only(top: 8),
                                  border: InputBorder.none,
                                  labelText: widget.labelText,
                                  suffixIcon: widget.suffix),
                            ),
                          ),
                        ),
                        Container(
                          height: widget.errorText != null ? 1.5 : 0,
                          width: MediaQuery.of(context).size.width,
                          color: Palette.current.primaryNeonPink,
                        )
                      ],
                    ),
                  ),
                ),
              ),
        const SizedBox(
          height: 4,
        ),
        widget.errorText != null
            ? Text(
                widget.errorText!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Palette.current.primaryNeonPink),
              )
            : widget.helperText != null
                ? Text(
                    widget.helperText!,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: Palette.current.primaryWhiteSmoke),
                  )
                : Container(),
      ],
    );
  }
}
