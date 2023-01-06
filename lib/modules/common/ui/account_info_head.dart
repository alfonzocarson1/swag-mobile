import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';
import 'avatar.dart';

class AccountInfoHeaderWidget extends StatefulWidget {
  const AccountInfoHeaderWidget({super.key});

  @override
  State<AccountInfoHeaderWidget> createState() =>
      _AccountInfoHeaderWidgetState();
}

class _AccountInfoHeaderWidgetState extends State<AccountInfoHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(S.of(context).title_welcome,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontFamily: "Knockout",
                    fontSize: 50,
                    fontWeight: FontWeight.w300,
                    color: Palette.current.primaryNeonGreen,
                  )),
          Text(S.of(context).subtitle_welcome,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    letterSpacing: 0.3,
                    color: Palette.current.primaryWhiteSmoke,
                  )),
          const SizedBox(
            height: 20,
          ),
          const AvatarPage(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(S.of(context).verify_name,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontFamily: "Knockout",
                      fontSize: 30,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w500,
                      color: Palette.current.light4)),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                'assets/images/Verifyindicator.png',
                width: 25,
                height: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
