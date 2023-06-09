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
              collections != null
                  ? collections != 0
                      ? Padding(
                          padding: const EdgeInsets.only(right: 15, top: 10),
                          child: GestureDetector(
                            onTap: onAction,
                            child: Text(
                              "${collections}X",
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "KnockoutCustom",
                                      fontSize: 30,
                                      color: Palette.current.primaryNeonGreen),
                            ),
                          ),
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Palette.current.gray4,
                            size: 20,
                          ),
                          onPressed: onAction,
                        )
                  : Container()
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
                Navigator.of(context, rootNavigator: true).pop();
              }),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}
