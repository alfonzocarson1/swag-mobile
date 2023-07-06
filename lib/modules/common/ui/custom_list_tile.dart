import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Widget trailing;
  final double? widgetSpacing;
  final double? titleSpacing;
  final VoidCallback onTap;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.trailing,
    this.widgetSpacing = 10.0, // set your default spacing here
    required this.onTap,
    required this.leading,
    this.titleSpacing,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            leading,
            SizedBox(
              width: widgetSpacing ,
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
                  subtitle,
                ],
              ),
            ),
            const SizedBox(
              width: 11 ,
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}
