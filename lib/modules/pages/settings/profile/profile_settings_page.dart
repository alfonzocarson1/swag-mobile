import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../login/forgot_password_page.dart';

class ProfileSettingsPage extends StatefulWidget {
  static const name = '/ProfileSettingsPage';
  const ProfileSettingsPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const ProfileSettingsPage(),
      );

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  @override
  Widget build(BuildContext context) {
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
      backgroundColor: Palette.current.primaryEerieBlack,
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
                        selectSettings(
                            context,
                            'assets/icons/BlockUserWhite.png',
                            S.of(context).name,
                            'Name Goes Here',
                            () {},
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Palette.current.darkGray,
                            ),
                            null,
                            scale: 2
                            ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        selectSettings(
                            context,
                            'assets/icons/lock.png',
                            S.of(context).password,
                            '**********', () {
                          getIt<PreferenceRepositoryService>()
                              .saveForgotPasswordFlow(true);
                          Navigator.of(context, rootNavigator: true,)
                              .push(ForgotPasswordPage.route(true));
                        },
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Palette.current.darkGray,
                            ),
                            null,
                            scale: 1
                            ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                      ],
                    )),
              );
            }),
          ),
        ],
      ),
    );
  }
}
