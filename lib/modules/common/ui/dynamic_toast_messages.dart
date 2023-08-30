import 'package:flutter/material.dart';

import '../utils/palette.dart';

class ToastMessage extends StatelessWidget {
  const ToastMessage({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
            color: Palette.current.blackSmoke,
            borderRadius: const BorderRadius.all(Radius.circular(5))),
        child: Row(
          children: [
            Image.asset(
              scale: 3,
              "assets/images/Favorite.png",
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                message,
                maxLines: 3,
              ),
            ),
          ],
        ));
  }
}
