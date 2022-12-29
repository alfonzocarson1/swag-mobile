import 'package:flutter/material.dart';

import '../utils/palette.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({super.key});

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        const CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage("assets/images/ProfilePhoto.png"),
          radius: 75,
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {},
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
