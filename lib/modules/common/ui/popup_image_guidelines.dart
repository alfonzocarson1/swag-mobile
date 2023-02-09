import 'package:flutter/material.dart';

import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';

class PopUpImageGuideline extends StatefulWidget {
  const PopUpImageGuideline({super.key});

  @override
  State<PopUpImageGuideline> createState() => _PopUpImageGuidelineState();
}

class _PopUpImageGuidelineState extends State<PopUpImageGuideline> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        insetPadding: EdgeInsets.all(20),
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
                          child: Text(
                              S.of(context).image_guidelines.toUpperCase(),
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontFamily: "Knockout",
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
                          child: Text(
                              S.of(context).image_guidelines_description,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 15,
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("${S.of(context).sealed.toUpperCase()}:",
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontFamily: "Knockout",
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Palette.current.primaryNeonGreen,
                                  )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(S.of(context).sealed_item_one,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(S.of(context).sealed_item_two,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(S.of(context).sealed_item_three,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              S.of(context).displayed_gamed.toUpperCase(),
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontFamily: "Knockout",
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    color: Palette.current.primaryNeonGreen,
                                  )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(S.of(context).sealed_item_one,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(S.of(context).sealed_item_two,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    S.of(context).displayed_gamed_item_three,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    S.of(context).displayed_gamed_item_four,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 14,
                                          letterSpacing: 0.3,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                              ),
                            ],
                          ),
                        ),
                      ],
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
