import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'dynamic_toast_messages.dart';

class DeleteMessagePopup extends StatefulWidget {
  const DeleteMessagePopup({super.key});

  @override
  State<DeleteMessagePopup> createState() => _DeleteMessagePopup();
}

class _DeleteMessagePopup extends State<DeleteMessagePopup> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Stack(
          children: [
            Container(
              color: Palette.current.blackSmoke,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Can’t Delete'.toUpperCase(),
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                fontFamily: "KnockoutCustom",
                                fontSize: 44,
                                fontWeight: FontWeight.w300,
                                color: Palette.current.primaryNeonGreen,
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('You currently have outstanding sales and/or purchases. Before you can delete your account you must first complete any pending sales and/or purchases.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                fontSize: 15,
                                fontFamily: "Ringside",
                                letterSpacing: 0.3,
                                color: Palette.current.primaryWhiteSmoke,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),


                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 3,
              child: IconButton(
                iconSize: 30,
                color: Palette.current.primaryNeonGreen,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.clear_outlined,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}