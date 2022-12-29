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
          radius: 80,
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: MaterialButton(
              onPressed: () {},
              color: Palette.current.primaryNeonPink,
              textColor: Palette.current.black,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.add,
                size: 20,
              ),
            ))
      ]),
    );
  }
}
