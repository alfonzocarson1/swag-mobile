import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/pages/explore/update_avatar_bottom_sheet.dart';

import '../../blocs/update_profile_bloc/update_profile_bloc.dart';
import '../../cubits/profile/get_profile_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/avator_model.dart';
import '../../models/profile/profile_model.dart';
import '../../models/update_profile/update_profile_payload_model.dart';
import '../utils/palette.dart';
import '../utils/utils.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage(
      {super.key, this.isFirstUse = false, this.disableChangeAvatar = false});
  final bool isFirstUse;
  final bool disableChangeAvatar;

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  ImageProvider? image;
  ProfileModel? profileData;

  String defaultImage = '';
  var randomAvatar = '';
  var avatars = [];

  getUpdatedProfileData() async {
    await getIt<ProfileCubit>().loadProfileResults();
    profileData = getIt<PreferenceRepositoryService>().profileData();
    Future.delayed(const Duration(seconds: 1))
        .then((value) => getProfileAvatar());
  }

  @override
  void initState() {
    super.initState();
    getUpdatedProfileData();
  }

  getProfileAvatar() {
    for (var map in imagesList) {
      avatars.add(AvatorModel.fromJson(map));
    }
    profileData = getIt<PreferenceRepositoryService>().profileData();
    if (widget.isFirstUse && profileData!.useAvatar == 'AVATAR1') {
      final tempRandomElement = getRandomElement(avatars);
      setState(() {
        defaultImage = tempRandomElement.url;
        randomAvatar = tempRandomElement.id;
      });
    } else if (profileData!.useAvatar != 'CUSTOM') {
      var avatarModel = avatars
          .where((avatar) => (avatar.id.contains(profileData!.useAvatar)))
          .first;
      setState(() {
        defaultImage = avatarModel.url;
      });
    } else {
      final tempRandomElement = getRandomElement(avatars);
      if (profileData!.avatarUrl != null) {
        setState(() {
          defaultImage = profileData!.avatarUrl!;
        });
      } else {
        setState(() {
          defaultImage = tempRandomElement.url;
          randomAvatar = tempRandomElement.id;
        });
      }
    }
    Future.delayed(const Duration(seconds: 1)).then((value) {
      getIt<UpdateProfileBloc>().add(UpdateProfileEvent.update(
          UpdateProfilePayloadModel(
              useAvatar: randomAvatar,
              firstName: profileData!.firstName ?? '',
              lastName: profileData!.lastName ?? '')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        SizedBox(
          height: 125,
          width: 128,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage:
                image != null ? image! : NetworkImage("${defaultImage}"),
            radius: 75,
          ),
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                if (widget.disableChangeAvatar == false) {
                  Navigator.of(context, rootNavigator: true)
                      .push(UpdateAvatarBottomSheet.route(context, null))
                      .then((imageParam) => {
                            if (imageParam != null)
                              {
                                setState(() {
                                  image = imageParam;
                                })
                              }
                          });
                } else {}
              },
              child: (widget.disableChangeAvatar == false)
                  ? Container(
                      height: 35,
                      width: 35,
                      padding: const EdgeInsets.all(7.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.0),
                          color: Palette.current.primaryNeonGreen),
                      child: Image.asset(
                        width: 24,
                        height: 24,
                        'assets/images/plus.png',
                        color: Palette.current.black,
                      ),
                    )
                  : const SizedBox.shrink(),
            ))
      ]),
    );
  }
}
