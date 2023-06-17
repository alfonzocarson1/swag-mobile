import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../blocs/favorite_bloc/favorite_bloc.dart';
import '../../di/injector.dart';
import '../utils/palette.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height = 50,
    this.onRoute,
    this.title,
    this.actions = false,
    this.collections,
    this.color,
    this.onAction,
  }) : super(key: key);

  double? height;
  final VoidCallback? onRoute;
  final String? title;
  final bool actions;
  final int? collections;
  final Color? color;
  final VoidCallback? onAction;

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      backgroundColor: color, //<-- SEE HERE
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Palette.current.black,
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
      title: Text(title ?? ""),
      actions: actions
          ? <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap: onAction,
                  child: Container(
                    height: 35,
                    width: 35,
                    padding: const EdgeInsets.all(7.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.0),
                        color: Palette.current.blackSmoke),
                    child: Image.asset(
                      width: 24,
                      height: 24,
                      'assets/images/plus.png',
                      color: Palette.current.white,
                    ),
                  ),
                ),
              )
            ]
          : null,
      automaticallyImplyLeading: false,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Palette.current.primaryNeonGreen,
            size: 24,
          ),
          onPressed: onRoute ??
              () {
                Navigator.of(context).pop();
              }),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}
