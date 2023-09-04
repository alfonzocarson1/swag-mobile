import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/avatar.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/cubits/kyc/kyc_cubit.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/ui_models/async_operation.dart';
import 'package:swagapp/modules/pages/settings/account/verification/stripe_kyc_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../common/assets/icons.dart';
import '../../../../common/ui/dynamic_toast_messages.dart';
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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocConsumer<KycCubit, KycCubitState>(
        listener: (context, state) {
          state.whenWithValue(
            error: (e, previousData) {
              if (Loading.isVisible()) {
                Loading.hide(context);
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 3),
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height / 1.3,
                  ),
                  backgroundColor: Colors.transparent,
                  content: ToastMessage(
                    message: S.of(context).kyc_session_creation_failed,
                  ),
                  dismissDirection: DismissDirection.none,
                ),
              );
            },
            loaded: (data) async {
              if (Loading.isVisible()) {
                Loading.hide(context);
              }
              if (data.sessionUrl != null) {
                await Navigator.of(context).push(StripeKycPage.route(
                  context,
                  data.sessionUrl!,
                ));
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 3),
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height / 1.3,
                    ),
                    backgroundColor: Colors.transparent,
                    content: ToastMessage(
                      message: S.of(context).kyc_session_validating,
                    ),
                    dismissDirection: DismissDirection.none,
                  ),
                );
              }
            },
            loading: (previousDat) {
              if (!Loading.isVisible()) {
                Loading.show(context);
              }
            },
            idle: () {
              if (Loading.isVisible()) {
                Loading.hide(context);
              }
            },
          );
        },
        builder: (context, state) {
          return Dialog(
            insetPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: Palette.current.primaryEerieBlack,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Stack(
                fit: StackFit.loose,
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 40),
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
                          style: smallTextStyle(context)
                              .copyWith(color: Colors.white),
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
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).kyc_verified_with,
                              style: smallTextStyle(context).copyWith(
                                color: const Color(0xFF635BFF),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Image.asset(
                              "assets/images/stripe_image.png",
                              width: 55,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        PrimaryButton(
                          title: S.of(context).kyc_dialog_verify,
                          type: PrimaryButtonType.green,
                          maxHeight: 56,
                          onPressed: () {
                            getIt<KycCubit>().createKycSession();
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
            ),
          );
        },
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
