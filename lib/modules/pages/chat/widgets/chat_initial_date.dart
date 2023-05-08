import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class ChatInitialDate extends StatelessWidget {

  const ChatInitialDate({super.key});

  @override
  Widget build(BuildContext context) {

    DateFormat dateFormat = DateFormat("E, MMM d");

    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Text(
          dateFormat.format(DateTime.now()),
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