import 'package:flutter/material.dart';

import '../../common/ui/custom_app_bar.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/explore_utils.dart';
import '../../common/utils/palette.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/explore/explore.dart';

import '../login/create_account_page.dart';

class ExplorePageList extends StatefulWidget {
  static const name = '/ExplorePageList';
  const ExplorePageList({super.key});

  static Route route() => PageRoutes.slideUp(
        settings: const RouteSettings(name: name),
        builder: (context) => const ExplorePageList(),
      );

  @override
  State<ExplorePageList> createState() => _ExplorePageListState();
}

class _ExplorePageListState extends State<ExplorePageList> {
  bool _isLogged = false;
  List<Explore> exploreList = ExploreUtils.getExploreList();

  @override
  void initState() {
    super.initState();
    _isLogged = getIt<PreferenceRepositoryService>().isLogged();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: !_isLogged ? CustomAppBar() : null,
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: exploreList.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          return GestureDetector(
                            onTap: () {
                              // switch (exploreList[index].route) {
                              //   case '/CreateAccount':
                              //     Navigator.of(context, rootNavigator: true)
                              //         .push(CreateAccountPage.route());
                              //     break;

                              //   default:
                              // }
                            },
                            child: Container(
                              height: 400,
                              child: Stack(children: [
                                Positioned.fill(
                                    child: Image.asset(
                                  'assets/images/${exploreList[index].imgName}.png',
                                  fit: BoxFit.cover,
                                )),
                                Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      height: 400,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [
                                            Colors.black.withOpacity(0.7),
                                            Colors.transparent
                                          ])),
                                    )),
                                Positioned(
                                  bottom: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 20, left: 20),
                                    child: Row(
                                      children: [
                                        Text(exploreList[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium!
                                                .copyWith(
                                                  fontFamily: "Knockout",
                                                  fontSize:
                                                      index.toDouble() == 0
                                                          ? 44
                                                          : 54,
                                                  letterSpacing: 2.3,
                                                  fontWeight: FontWeight.w300,
                                                  color: Palette.current.white,
                                                ))
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          );
                        }))
              ],
            ),
          ),
        ));
  }
}
