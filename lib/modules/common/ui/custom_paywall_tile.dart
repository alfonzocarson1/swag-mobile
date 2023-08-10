import 'package:flutter/material.dart';

class CustomPaywallListTile extends StatelessWidget {
  final Widget leading;
  final double? leadingSpacing;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;
  final double? trailingSpacing;
  final double? widgetSpacing;
  final double? titleSpacing;
  final VoidCallback? onTap;

  const CustomPaywallListTile({
    Key? key,
    required this.title,
    required this.trailing,
    this.widgetSpacing = 10.0, // set your default spacing here
    this.onTap,
    required this.leading,
    this.titleSpacing,
    this.subtitle, 
    this.leadingSpacing = 0.0, 
    this.trailingSpacing = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          leading,
          SizedBox(
            width: this.leadingSpacing,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
              children: [
                title,
                SizedBox(
                  height: titleSpacing,
                ),
                subtitle ?? const SizedBox.shrink(),
              ],
            ),
          ),
           SizedBox(
            width: this.trailingSpacing,
          ),
          trailing ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
