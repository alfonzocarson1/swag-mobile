import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
import 'avatar.dart';

class AccountInfoHeaderWidget extends StatefulWidget {
  const AccountInfoHeaderWidget({super.key});

  @override
  State<AccountInfoHeaderWidget> createState() =>
      _AccountInfoHeaderWidgetState();
}

class _AccountInfoHeaderWidgetState extends State<AccountInfoHeaderWidget> {
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getIt<PreferenceRepositoryService>().saveAccountId(profileData.accountId);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const AvatarPage(
            isFirstUse: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('@${profileData.username}',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: "KnockoutCustom",
                        fontSize: 33,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w300,
                        color: Palette.current.light4)),
              ),
              if (profileData.kycverified == true) ...[
                const SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'assets/images/Verifyindicator.png',
                  width: 25,
                  height: 25,
                ),
              ],
            ],
          ),
          if (profileData.listingsRating >= 1) ...[
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                color: Palette.current.primaryNeonGreen,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageIcon(
                    const AssetImage("assets/icons/thumbs-up.png"),
                    size: 20,
                    color: Palette.current.primaryNero,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    NumberFormat.decimalPattern()
                        .format(profileData.listingsRating.toInt()),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontFamily: "KnockoutCustom",
                        fontSize: 16,
                        color: Palette.current.primaryNero,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.3),
                  ),
                ],
              ),
            ),
          ]
        ],
      ),
    );
  }
}
