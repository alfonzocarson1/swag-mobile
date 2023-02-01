import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../blocs/profile_favorite_bloc/profile_favorite_bloc.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/size_helper.dart';
import '../../models/profile/profile_favorite_model.dart';

class FavoritesPage extends StatefulWidget {
  static const name = '/Favorite';
  const FavoritesPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const FavoritesPage(),
      );

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  late ResponsiveDesign _responsiveDesign;

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        backgroundColor: Palette.current.primaryNero,
        body: BlocConsumer<ProfileFavoriteBloc, FavoriteState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => {Loading.hide(context)},
            error: (message) => {
              Loading.hide(context),
              // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
            },
            initial: () {
              return Loading.show(context);
            },
          ),
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const Center(),
              error: (_) {
                return RefreshIndicator(
                    onRefresh: () async {
                      makeCall();
                      return Future.delayed(const Duration(milliseconds: 1500));
                    },
                    child: ListView.builder(
                      itemBuilder: (_, index) => Container(),
                      itemCount: 0,
                    ));
              },
              loadedFavoriteItems: (state) {
                return _getBody(state.dataFavoriteList);
              },
            );
          },
        ));
  }

  Widget _getBody(List<FavoriteItemModel> favoriteList) {
    return RefreshIndicator(
      onRefresh: () async {
        makeCall();
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: favoriteList.isNotEmpty
          ? GridView.count(
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              crossAxisCount: 2,
              childAspectRatio:
                  _responsiveDesign.responsiveProfileCard(context, 3),
              shrinkWrap: true,
              children: List.generate(favoriteList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: _responsiveDesign.responsiveProfileCard(
                              context, 620),
                          color: Colors.black,
                          child: Stack(
                            children: [
                              CachedNetworkImage(
                                imageUrl: favoriteList[index].image,
                                placeholder: (context, url) => SizedBox(
                                  height: 360,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      color: Palette.current.primaryNeonGreen,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ),
                                errorWidget: (context, url, error) =>
                                    Image.asset(
                                        "assets/images/ProfilePhoto.png"),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: IconButton(
                                  icon: Image.asset(
                                    "assets/images/Favorite.png",
                                    scale: 3.5,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(favoriteList[index].catalogItemName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Knockout",
                                    fontSize: 24,
                                    color: Palette.current.white)),
                        Text(favoriteList[index].lastSale,
                            overflow: TextOverflow.fade,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13,
                                    color: Palette.current.primaryNeonGreen)),
                      ],
                    ),
                  ),
                );
              }),
            )
          : ListView.builder(
              itemBuilder: (_, index) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Center(
                  child: Text(
                    S.of(context).empty_text,
                    style: TextStyle(
                        fontSize: 24, color: Colors.black.withOpacity(0.50)),
                  ),
                ),
              ),
              itemCount: 1,
            ),
    );
  }

  void makeCall() {
    context
        .read<ProfileFavoriteBloc>()
        .add(const FavoriteEvent.getFavoriteItem());
  }
}
