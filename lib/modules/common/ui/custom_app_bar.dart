import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/palette.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key, this.height = 50}) : super(key: key);

  double? height;

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Palette.current.black,
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Palette.current.primaryNeonGreen,
          size: 30,
        ),
        onPressed: () {
          Navigator.maybePop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}
