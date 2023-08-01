import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../../generated/l10n.dart';

class DeleteAccountPage extends StatefulWidget {

  static const name = "/DeleteAccountPage";

  const DeleteAccountPage({super.key});

  static Route route() => PageRoutes.material(
    settings: const RouteSettings(name: name),
    builder: (context) => DeleteAccountPage(),
  );

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPage();
}

class _DeleteAccountPage extends State<DeleteAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.current.primaryNero,
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text('Delete account'.toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.primaryNeonGreen)),
        ),
        height: 70,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height  * 0.70,
                child: Text(S.of(context).legal_text,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Palette.current.primaryWhiteSmoke),
              )),
              PrimaryButton(
                title: "Delete".toUpperCase(),
                onPressed: () {

                },
                type: PrimaryButtonType.pink,
              ),
            ],
          )
        ),
    );
  }

}