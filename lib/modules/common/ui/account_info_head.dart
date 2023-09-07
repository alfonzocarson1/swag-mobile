import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/ui/profile_username_rating.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../cubits/profile/get_profile_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
import 'avatar.dart';

class AccountInfoHeaderWidget extends StatefulWidget {
   AccountInfoHeaderWidget({super.key, required this.avatarFirstUse});
  final bool avatarFirstUse;

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
    return BlocBuilder<ProfileCubit, ProfileCubitState>(
      builder: (context, state) {

        return Center(
          child: Column(
            children: [
               AvatarPage(
                isFirstUse: widget.avatarFirstUse,
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

      });
  }
}
