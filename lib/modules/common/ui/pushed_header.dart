import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../cubits/paywall/paywall_cubit.dart';
import '../../cubits/profile/get_profile_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
import '../utils/utils.dart';

class PushedHeader extends StatefulWidget implements PreferredSizeWidget {
  static const _defaultActions = <Widget>[];
  final List<Widget> actions;
  final bool showBackButton;
  Widget? customWidget = Container();
  Widget? title;
  double height;
  bool isDarkBackground;
  Widget? suffixIconButton;
  Color? backgroundColor;

  PushedHeader(
      {Key? key,
      this.actions = _defaultActions,
      this.showBackButton = false,
      this.customWidget,
      this.title,
      this.height = 55, //125, 180
      this.isDarkBackground = false,
      this.suffixIconButton,
      this.backgroundColor})
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

  // resetPaywall()async{
  //    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
  //   if (isLogged == true){
  //    await getIt<ProfileCubit>().loadProfileResults();
  //    ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();
  //     if(profileData.hasActiveSubscription == false){
  //       getIt<PaywallCubit>().reset();
  //     }
  // }
  // }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(22),
      child: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: widget.backgroundColor ?? Palette.current.primaryNero,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
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
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              icon: Icon(
                                Icons.arrow_back,
                                color: Palette.current.primaryNeonGreen,
                                size: 24,
                              ),
                              onPressed: () {
                                resetPaywall();
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
