import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/home/update_avatar_bottom_sheet.dart';

import '../utils/palette.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({super.key});

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  ImageProvider? image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: image != null
              ? image!
              : const AssetImage("assets/images/ProfilePhoto.png"),
          radius: 75,
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
                  padding: const EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90.0),
                      color: Palette.current.primaryNeonPink),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Palette.current.black,
                  )),
            ))
      ]),
    );
  }
}
