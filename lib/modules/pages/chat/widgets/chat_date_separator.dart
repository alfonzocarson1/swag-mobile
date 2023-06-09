import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class ChatlDateSeparator extends StatelessWidget {

  final DateTime date;

  const ChatlDateSeparator({
    super.key, 
    required this.date,
  });

  @override
  Widget build(BuildContext context) {

    DateTime today = DateTime.now();
    DateFormat dateFormat = DateFormat("E, MMM d");
    bool isToday = today.day == this.date.day && today.month == this.date.month;

    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Text(
          (isToday) 
          ? S.current.chatToday
          : dateFormat.format(this.date),
          style: TextStyle(
            fontSize: 14,              
            fontWeight: FontWeight.lerp(FontWeight.w300, FontWeight.w400, 0.5),
            color: Palette.current.grey,
          ),
        ),
      ),
    );
  }
}