import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../utils/palette.dart';
import 'clickable_text.dart';
import 'popup_image_guidelines.dart';

class AddPhotoWidget extends StatefulWidget {
  AddPhotoWidget({super.key, this.addPhoto});

  final Function()? addPhoto;

  @override
  State<AddPhotoWidget> createState() => _AddPhotoWidgetState();
}

class _AddPhotoWidgetState extends State<AddPhotoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Stack(
        children: [
          ClipRRect(
              child: Image.asset(
            "assets/images/bagAddList.png",
            fit: BoxFit.cover,
          )),
          Positioned.fill(
            top: 60,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(S.of(context).list_item_for_sale,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      letterSpacing: 0.8,
                      fontWeight: FontWeight.w300,
                      fontFamily: "KnockoutCustom",
                      fontSize: 30,
                      color: Palette.current.primaryNeonGreen)),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  widget.addPhoto!();
                },
                child: Center(
                  child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Palette.current.primaryNeonGreen),
                          color: Palette.current.blackSmoke),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/camera.png",
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(S.of(context).add_photos,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontFamily: "KnockoutCustom",
                                      fontSize: 20,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w300,
                                      color: Palette.current.white)),
                        ],
                      )),
                ),
              ),
            ),
          ),
          Positioned.fill(
            bottom: 50,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ClickableText(
                  title: SimpleRichText(
                    S.of(context).see_photo_guidelines,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14,
                        letterSpacing: 0.015,
                        color: Palette.current.grey,
                        fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return const PopUpImageGuideline();
                        });
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
