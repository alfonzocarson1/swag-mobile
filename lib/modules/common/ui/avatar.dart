import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/explore/update_avatar_bottom_sheet.dart';

import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/avator_model.dart';
import '../../models/profile/profile_model.dart';
import '../utils/palette.dart';
import '../utils/utils.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({super.key, this.isFirstUse=false});
  final bool isFirstUse;

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  ImageProvider? image;
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();

  String defaultImage = '';
  var avators = [];

 

  @override
  void initState() {
    super.initState();
    getProfileAvatar();
  }

  getProfileAvatar() {
    for (var map in imagesList) {
      avators.add(AvatorModel.fromJson(map));
    }
    profileData = getIt<PreferenceRepositoryService>().profileData();
    if (widget.isFirstUse && profileData.useAvatar == 'AVATAR1') {
      setState(() {
        defaultImage = getRandomElement(avators).url;
      });
    } else if (profileData.useAvatar != 'CUSTOM') {
      var vatorMoedl = avators
          .where((avatar) => (avatar.id.contains(profileData.useAvatar))).first;
      setState(() {
        defaultImage = vatorMoedl.url;
      });
    } else {
      setState(() {
        defaultImage = profileData.avatarUrl ?? getRandomElement(avators).url;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          getProfileAvatar();
        }));
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
              },
              child: Container(
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
              ),
            ))
      ]),
    );
  }
}
