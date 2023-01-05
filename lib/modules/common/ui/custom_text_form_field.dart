import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField(
      {Key? key,
      required this.labelText,
      required this.focusNode,
      required this.borderColor,
      required this.accountController,
      required this.inputType,
      this.suffix,
      this.onChanged,
      this.onSubmitted,
      this.inputFormatters,
      this.maxLength,
      this.style,
      this.secure = false,
      this.isEnabled = true,
      this.errorText,
      this.autofocus = true,
      this.dropdownForm = false,
      this.dropdownFormItems,
      this.dropdownOnChanged,
      this.dropdownvalue})
      : super(key: key);
  final String labelText;
  final FocusNode focusNode;
  final Color borderColor;
  final TextEditingController accountController;
  final TextInputType inputType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  Widget? suffix;
  final int? maxLength;
  final TextStyle? style;
  final String? errorText;
  final bool secure;
  final bool isEnabled;
  final bool autofocus;
  final bool dropdownForm;
  final List<String>? dropdownFormItems;
  void Function(String?)? dropdownOnChanged;
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
                    border: Border.all(
                      color: widget.errorText != null
                          ? Palette.current.primaryNeonPink
                          : widget.borderColor,
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
                        padding:
                            const EdgeInsets.only(left: 16, top: 0, bottom: 8),
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                              counterText: "",
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Palette.current.primaryNero),
                              contentPadding: const EdgeInsets.only(top: 0),
                              border: InputBorder.none,
                              labelText: ""),
                          value: widget.dropdownvalue,
                          onChanged: widget.dropdownOnChanged,
                          items: widget.dropdownFormItems?.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: widget.errorText != null
                          ? Palette.current.primaryNeonPink
                          : widget.borderColor,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          color: Palette.current.primaryWhiteSmoke),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, top: 4, bottom: 8),
                        child: TextField(
                          enabled: widget.isEnabled,
                          autofocus: widget.autofocus,
                          maxLength: widget.maxLength,
                          onChanged: widget.onChanged,
                          onSubmitted: widget.onSubmitted,
                          inputFormatters: widget.inputFormatters ??
                              [
                                FilteringTextInputFormatter.deny(RegExp(r'\s')),
                              ],
                          controller: widget.accountController,
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
                                  .copyWith(color: Palette.current.primaryNero),
                              contentPadding: const EdgeInsets.only(top: 8),
                              border: InputBorder.none,
                              labelText: widget.labelText,
                              suffixIcon: widget.suffix),
                        ),
                      ),
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
            : Container(),
      ],
    );
  }
}
