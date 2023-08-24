import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import '../utils/custom_route_animations.dart';
import '../utils/palette.dart';

enum GrantPermissionDialogType {
  camera,
  photos,
  microphone,
  cameraMicrophone,
}

extension on GrantPermissionDialogType {
  String name(BuildContext context) {
    switch (this) {
      case GrantPermissionDialogType.camera:
        return S.of(context).permission_camera;
      case GrantPermissionDialogType.photos:
        return S.of(context).permission_photos;
      case GrantPermissionDialogType.microphone:
        return S.of(context).permission_microphone;
      case GrantPermissionDialogType.cameraMicrophone:
      return  S.of(context).permission_camera_microphone;
    }
  }
}

class GrantPermissionDialog extends StatelessWidget {
  static const name = "/permissions-dialog";
  final GrantPermissionDialogType type;
  const GrantPermissionDialog({super.key, required this.type});

  static Route route(
          final BuildContext context, GrantPermissionDialogType type) =>
      PageRoutes.dialog(
        settings: const RouteSettings(name: name),
        builder: (context) => GrantPermissionDialog(type: type),
        context: context,
      );

  @override
  Widget build(BuildContext context) {
    permission() => type.name(context);
    os() {
      if (Platform.isAndroid) return "android";
      if (Platform.isIOS) return "ios";
      return "other";
    }

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: Palette.current.primaryEerieBlack,
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  S
                      .of(context)
                      .permission_dialog_title(permission().toUpperCase()),
                  style: largeTextStyle(context),
                ),
                const SizedBox(height: 24),
                Text(
                  S
                      .of(context)
                      .permission_dialog_description(permission()),
                  style: smallTextStyle(context),
                ),
                const SizedBox(height: 21),
                PrimaryButton(
                  title: S
                      .of(context)
                      .permission_dialog_button(permission().toUpperCase()),
                  type: PrimaryButtonType.green,
                  onPressed: () {
                    Navigator.of(context).pop();
                    openAppSettings();
                  },
                ),
              ],
            ),
          ),
          PositionedDirectional(
            end: 12,
            top: 12,
            child: IconButton(
              iconSize: 30,
              color: Palette.current.primaryNeonGreen,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.clear_outlined,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle largeTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 43,
            fontFamily: "KnockoutCustom",
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
            color: Palette.current.primaryNeonGreen,
          );

  TextStyle smallTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 16,
            letterSpacing: 0.24,
            fontWeight: FontWeight.w300,
            color: Palette.current.primaryWhiteSmoke,
          );

  TextStyle buttonTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 24,
            fontFamily: "KnockoutCustom",
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
            color: Palette.current.primaryWhiteSmoke,
          );
}
