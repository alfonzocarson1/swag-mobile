import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';
import 'clickable_text.dart';

class PopUp extends StatelessWidget {
  const PopUp({super.key, this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    //TODO: To launch the PopUp it can be used in this way and to prove the cases you can also send the name parameter in null
    // showDialog(
    // context: context,
    // builder: (BuildContext context) {
    //   return const PopUp(
    //     name: "NICO",
    //   );
    // });
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Stack(
        children: [
          Container(
            color: Palette.current.blackSmoke,
            height: 350,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    name != null
                        ? Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    "${S.of(context).popup_title}$name"
                                        .toUpperCase(),
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                          fontFamily: "Knockout",
                                          fontSize: 44,
                                          fontWeight: FontWeight.w300,
                                          color:
                                              Palette.current.primaryNeonGreen,
                                        )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(S.of(context).popup_description,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                          fontSize: 18))
                            ],
                          )
                        : Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(S.of(context).verify_email,
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                          fontFamily: "Knockout",
                                          fontSize: 44,
                                          fontWeight: FontWeight.w300,
                                          color:
                                              Palette.current.primaryNeonPink,
                                        )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(S.of(context).verify_email_description,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                          color:
                                              Palette.current.primaryNeonPink,
                                          fontSize: 18))
                            ],
                          ),
                    const SizedBox(
                      height: 30,
                    ),
                    name != null
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              PrimaryButton(
                                title: S.of(context).popup_btn_yes,
                                onPressed: () {},
                                type: PrimaryButtonType.green,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                S.of(context).import_late,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 12.5,
                                        color: Palette.current.grey,
                                        fontWeight: FontWeight.w300),
                              )
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: ClickableText(
                                    title: SimpleRichText(
                                      S.of(context).get_an_email,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                              fontWeight: FontWeight.w300),
                                    ),
                                    onPressed: () {}),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              PrimaryButton(
                                title: S.of(context).resend_verification_email,
                                onPressed: () {},
                                type: PrimaryButtonType.green,
                              ),
                            ],
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
