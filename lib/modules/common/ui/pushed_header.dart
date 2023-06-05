import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class PushedHeader extends StatefulWidget implements PreferredSizeWidget {

  static const _defaultActions = <Widget>[];
  final List<Widget> actions;
  final bool showBackButton;
  final Widget? customWidget;
  final Widget? title;
  final double height;
  final bool isDarkBackground;
  final Widget? suffixIconButton;

  PushedHeader(
      {Key? key,
      this.actions = _defaultActions,
      this.showBackButton = false,
      this.customWidget,
      this.title,
      this.height = 55, //125, 180
      this.isDarkBackground = false,
      this.suffixIconButton})
      : super(key: key);

  @override
  State<PushedHeader> createState() => _PushedHeaderState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _PushedHeaderState extends State<PushedHeader>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(22),
      child: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Palette.current.black,
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: NavigationToolbar(
            middleSpacing: 0,
            centerMiddle: false,
            middle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: 12, top: widget.suffixIconButton != null ? 0 : 6),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      widget.showBackButton
                          ? IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Palette.current.primaryNeonGreen,
                                size: 24,
                              ),
                              onPressed: () {
                                Navigator.maybePop(context);
                              })
                          : Container(),
                      widget.title ?? Container(),
                      widget.suffixIconButton != null
                          ? Expanded(
                              child: Row(
                                children: [
                                  const Spacer(),
                                  widget.suffixIconButton!,
                                ],
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                widget.customWidget ?? Container(),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widget.actions,
            ),
          ),
        ),
      ),
    );
  }
}
