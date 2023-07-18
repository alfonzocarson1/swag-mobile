import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import '../../../generated/l10n.dart';
import '../../common/ui/pushed_header.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../login/forgot_password_page.dart';

class ProfileDetailPage extends StatefulWidget {
  static const name = '/ProfileDetailPage';

  const ProfileDetailPage({super.key});

  static Route route() => PageRoutes.material(
        settings: RouteSettings(name: name),
        builder: (context) => const ProfileDetailPage(),
      );

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPage();
}

class _ProfileDetailPage extends State<ProfileDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();

    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(S.of(context).profile_title.toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.primaryNeonGreen)),
        ),
        height: 70,
      ),
      backgroundColor: Palette.current.primaryNero,
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(builder: (context, viewportConstraints) {
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      children: [
                        _selectTile(
                            'assets/icons/BlockUserWhite.png',
                            S.of(context).profile_name_title,
                            '',
                            () {},
                            true,
                            '',
                            '',
                            true),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/account_icon.png',
                            S.of(context).profile_username_title,
                            profileData.username,
                            () {},
                            profileData.kycverified! ? true : false,
                            '',
                            profileData.kycverified! ? 'assets/icons/Verifiedindicator_icon.png' : '',
                            false),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/security_icon.png',
                            S.of(context).profile_password_title,
                            '*************', () {
                          getIt<PreferenceRepositoryService>()
                              .saveForgotPasswordFlow(true);
                          Navigator.of(context, rootNavigator: true)
                              .push(ForgotPasswordPage.route(true));
                        }, true, '', '', true),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/email.png',
                            S.of(context).profile_email_title,
                            profileData.email,
                            () {},
                            profileData.emailVerified ? false : true,
                            profileData.emailVerified
                                ? S.of(context).email_verified
                                : '',
                            profileData.emailVerified
                                ? ''
                                : 'assets/icons/unverifiedindicator.png',
                            false),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/contact_us_icon.png',
                            S.of(context).profile_mobile_number_title,
                            profileData.phoneNumber,
                            () {},
                            true,
                            '',
                            '',
                            true),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/trash.png',
                            S.of(context).profile_delete_title,
                            '',
                            () {},
                            true,
                            '',
                            '',
                            true),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: PrimaryButton(
                            title: S.of(context).sign_out.toUpperCase(),
                            onPressed: () {},
                            type: PrimaryButtonType.pink,
                          ),
                        )
                      ],
                    )),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _selectTile(
      String iconUrl,
      String title,
      String subTitle,
      Function()? onTap,
      bool showRightIcon,
      String status,
      String rightIconUrl,
      bool hasArrowIcon) {
    return InkWell(
      onTap: onTap,
      splashColor: Palette.current.primaryNero,
      child: ListTile(
          leading: ImageIcon(
            AssetImage(iconUrl),
            size: 25,
            color: Colors.white,
          ),
          visualDensity: VisualDensity(vertical: 2),
          title: subTitle != ''
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(title,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Palette.current.primaryWhiteSmoke,
                          fontSize: 16)),
                )
              : SizedBox(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(title,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Palette.current.primaryWhiteSmoke,
                            fontSize: 16)),
                  )),
          subtitle: subTitle != ''
              ? Text(subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Palette.current.grey, fontSize: 14))
              : null,
          trailing: showRightIcon
              ? hasArrowIcon
                  ? Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 10,
                      color: Palette.current.darkGray,
                    )
                  : Image.asset(rightIconUrl, width: 20, height: 20)
              : Text(status,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.w300,
                      color: Palette.current.primaryNeonGreen,
                      fontSize: 16))),
    );
  }
}
