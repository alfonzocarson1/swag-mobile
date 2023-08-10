import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/auth_bloc/auth_bloc.dart';
import 'package:swagapp/modules/common/ui/email_verification_popup.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/cubits/profile/get_profile_cubit.dart';
import 'package:swagapp/modules/data/secure_storage/storage_repository_service.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/pages/login/landing_page.dart';
import 'package:swagapp/modules/pages/login/sign_in_page.dart';
import 'package:swagapp/modules/pages/profile/delete_account/delete_account_page.dart';
import 'package:swagapp/modules/pages/profile/update_email_page.dart';
import 'package:swagapp/modules/pages/profile/update_name_page.dart';
import 'package:swagapp/modules/pages/splash/splash_page.dart';
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
    callApi();

  }

  @override
  void dispose() {
    print("PROFILE DSPOSE");
    super.dispose();
  }

  void callApi() async {
    await getIt<ProfileCubit>().loadProfileResults();
    setState(() {});
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
      body: BlocListener<AuthBloc, AuthState>(
    listener: (context, state) => state.maybeWhen(

    orElse: () {
      Loading.hide(context);
      print("ELSE");
    return null;
    },

    unauthenticated: ()  {

        Loading.hide(context);
        Navigator.of(context, rootNavigator: true).pop();
        Navigator.of(context).pushAndRemoveUntil(LandingPage.route(), (route) => true);
        Future.delayed(const Duration(milliseconds: 1000), () async {
        await getIt<StorageRepositoryService>().deleteAll();
        await getIt<PreferenceRepositoryService>().deleteAll();
        });
    print("UNAUTHENTICATED");
    return null;
    },

      logging: (){
        return Loading.show(context);
      },

      error: (message) => {
      print("ERRROR"),
    Loading.hide(context),
    // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
    },
    ),
    child: Column(
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
                                '${profileData.firstName ?? ''} ${profileData.lastName ?? ''}',
                                    () async {
                                  final result = await Navigator.of(context, rootNavigator: true)
                                      .push(UpdateNamePage.route());
                                  if(result) {
                                    print("BACK");
                                    setState(() {

                                    });
                                  }
                                },
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
                                    () async {
                                      final result = await Navigator.of(context, rootNavigator: true)
                                          .push(UpdateEmailPage.route());

                                      if(result) {
                                        Navigator.of(context).pop();
                                        print("BACK");
                                        // setState(() {
                                        //
                                        // });
                                      }

                                    },
                                false,
                                profileData.emailVerified
                                    ? S.of(context).email_verified
                                    : S.of(context).unverified,
                                '',
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
                                    () {
                                      Navigator.of(context)
                                          .push(DeleteAccountPage.route());
                                    },
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
                                onPressed: () async {
                                  context.read<AuthBloc>().add(const AuthEvent.logout());
                                },
                                type: PrimaryButtonType.pink,
                              ),
                            )
                          ],
                        )),
                  );
                }),
              ),
            ],
          )
      )
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
       //   visualDensity: VisualDensity(vertical: 2),
          title: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(title,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Palette.current.primaryWhiteSmoke,
                          fontSize: 16)),
                ),
          subtitle: Text(subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Palette.current.grey, fontSize: 14)),

          trailing: showRightIcon
              ? hasArrowIcon
                  ? Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 10,
                      color: Palette.current.darkGray,
                    )
                  : Image.asset(rightIconUrl, width: 20, height: 20)
              : GestureDetector(
            onTap: () async {
              final profile = await getIt<ProfileCubit>().getProfil();
              print("GET PROFILE");
              if(profile != null && !profile!.emailVerified){
                print("NOT VERIFIED");
                if(status != S.of(context).email_verified) {
                  final result = await showDialog(
                      context: context,
                      barrierDismissible: false,
                      barrierColor: Colors.black,
                      builder: (BuildContext context) {
                        return EmailVerificationPopup();
                      });
                  if(result){
                    Navigator.of(context).pop();
                    print("UPDATE STATE");
                    setState(() {

                    });
                  }
                }
              }
              print("Before set state");
              setState(() {});
            },
            child: Text(status,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w300,
                    color: status == S.of(context).email_verified ?
                    Palette.current.primaryNeonGreen
                        : Palette.current.primaryNeonPink,
                    fontSize: 16)),
          )
      ),
    );
  }
}
