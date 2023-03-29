import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  const ClickableText({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final Widget title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: title,
    );
  }
}
