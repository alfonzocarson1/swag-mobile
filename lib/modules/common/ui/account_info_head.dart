import 'dart:convert';

import 'package:flutter/material.dart';
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
          const AvatarPage(),
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
