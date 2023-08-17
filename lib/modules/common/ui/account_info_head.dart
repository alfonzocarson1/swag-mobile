import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/ui/profile_username_rating.dart';
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
          ProfileUsernameRating(
            username: profileData.username,
            kycVerified: profileData.kycverified ?? false,
            rating: profileData.listingsRating,
          ),
        ],
      ),
    );
  }
}
