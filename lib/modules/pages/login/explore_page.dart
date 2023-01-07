import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import 'package:swagapp/modules/pages/login/create_account_page.dart';
import 'package:swagapp/modules/pages/login/sign_in_page.dart';

import '../home/home_page.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class ExplorePage extends StatelessWidget {
  static const name = '/Explore';
  const ExplorePage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const ExplorePage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          ColorFiltered(
            colorFilter:
                const ColorFilter.mode(Colors.black38, BlendMode.darken),
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null),
          ),
          Center(
              child: Image.asset(
            'assets/images/logo.png',
            width: 239,
            height: 98,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        getIt<PreferenceRepositoryService>()
                            .saveIsLogged(false);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(S.of(context).explore_as_guest,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontFamily: "Knockout",
                                    fontSize: 36,
                                    fontWeight: FontWeight.w300,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                          const SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Palette.current.primaryWhiteSmoke,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    title: S.of(context).create_account,
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true)
                          .push(CreateAccountPage.route());
                    },
                    type: PrimaryButtonType.green,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    title: S.of(context).sign_in,
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true)
                          .push(SignInPage.route());
                    },
                    type: PrimaryButtonType.black,
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
