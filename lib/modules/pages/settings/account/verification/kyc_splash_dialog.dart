import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/avatar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/di/injector.dart';

import '../../../../common/assets/icons.dart';
import '../../../../common/utils/custom_route_animations.dart';
import '../../../../common/utils/palette.dart';
import '../../../../data/shared_preferences/shared_preferences_service.dart';

class KycSplashDialog extends StatelessWidget {
  static const name = "/kyc-splash-dialog";
  const KycSplashDialog({super.key});

  static Route route(final BuildContext context) => PageRoutes.dialog(
        settings: const RouteSettings(name: name),
        builder: (context) => const KycSplashDialog(),
        context: context,
      );

  @override
  Widget build(BuildContext context) {
    final profileData = getIt<PreferenceRepositoryService>().profileData();
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  S.of(context).kyc_dialog_title,
                  style: largeTextStyle(context),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                const AvatarPage(
                  disableChangeAvatar: true,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('@${profileData.username}',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                fontFamily: "KnockoutCustom",
                                fontSize: 33,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w300,
                                color: Palette.current.light4)),
                    const SizedBox(width: 5),
                    SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(AppIcons.checkMarkIcon))
                  ],
                ),
                const SizedBox(height: 28),
                Text(
                  S.of(context).kyc_dialog_subtitle,
                  style: smallTextStyle(context).copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                bulletPointWidget(
                  Text(
                    S.of(context).kyc_dialog_point1,
                    style: smallTextStyle(context),
                  ),
                ),
                const SizedBox(height: 10),
                bulletPointWidget(
                  Text(
                    S.of(context).kyc_dialog_point2,
                    style: smallTextStyle(context),
                  ),
                ),
                const SizedBox(height: 10),
                bulletPointWidget(
                  Text(
                    S.of(context).kyc_dialog_point3,
                    style: smallTextStyle(context),
                  ),
                ),
                const SizedBox(height: 10),
                bulletPointWidget(
                  Text(
                    S.of(context).kyc_dialog_point4,
                    style: smallTextStyle(context),
                  ),
                ),
                const SizedBox(height: 43),
                PrimaryButton(
                  title: S.of(context).kyc_dialog_verify,
                  type: PrimaryButtonType.green,
                  onPressed: () {
                    Navigator.of(context).pop();
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

  Widget bulletPointWidget(Widget text) {
    return Row(
      children: [
        ImageIcon(
          const AssetImage("assets/icons/list_green_check.png"),
          color: Palette.current.primaryNeonGreen,
        ),
        const SizedBox(width: 15),
        Expanded(child: text),
      ],
    );
  }

  TextStyle largeTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: 44,
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
