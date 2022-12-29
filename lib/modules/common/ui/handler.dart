import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class HandlerWidget extends StatelessWidget {
  const HandlerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.loose(const Size(60, 3)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Palette.current.light1,
        ),
      ),
    );
  }
}
