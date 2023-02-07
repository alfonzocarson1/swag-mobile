import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';

class PopUpExistingItemErro extends StatefulWidget {
  const PopUpExistingItemErro({super.key, this.name});
  final String? name;

  @override
  State<PopUpExistingItemErro> createState() => _PopUpExistingItemErroState();
}

class _PopUpExistingItemErroState extends State<PopUpExistingItemErro> {
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
                              S
                                  .of(context)
                                  .existing_item_to_collection_error_title
                                  .toUpperCase(),
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
                              S
                                  .of(context)
                                  .existing_item_to_collection_error_sub_desc,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 15,
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryButton(
                      title:
                          S.of(context).existing_item_to_collection_error_btn,
                      onPressed: () {},
                      type: PrimaryButtonType.green,
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
