import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';
import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../di/injector.dart';
import 'clickable_text.dart';

class PopUp extends StatefulWidget {
  const PopUp({super.key, this.name});
  final String? name;

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
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
                    widget.name != null
                        ? Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    "${S.of(context).popup_title}${widget.name}"
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
                                          fontSize: 16))
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
                    widget.name != null
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              PrimaryButton(
                                title: S.of(context).popup_btn_yes,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
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
                              ),
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
