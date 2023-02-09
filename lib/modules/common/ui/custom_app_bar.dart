import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../pages/add/collection/add_collection_page.dart';
import '../utils/palette.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height = 50,
      this.onRoute,
      this.title,
      this.actions = false,
      this.collections})
      : super(key: key);

  double? height;
  final VoidCallback? onRoute;
  final String? title;
  final bool actions;
  final int? collections;

  @override
  AppBar build(BuildContext context) {
    return AppBar(
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
                          child: Text(
                            "${collections}X",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Knockout",
                                    fontSize: 30,
                                    color: Palette.current.primaryNeonGreen),
                          ),
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Palette.current.gray4,
                            size: 20,
                          ),
                          tooltip: 'Open shopping cart',
                          onPressed: () {
                            // handle the press
                            Navigator.of(context, rootNavigator: true)
                                .push(AddCollection.route(context));
                          },
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
          onPressed: onRoute ?? () => Navigator.maybePop(context)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}
