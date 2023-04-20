import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../blocs/favorite_bloc/favorite_item_bloc.dart';

import '../../common/ui/refresh_widget.dart';
import '../../common/ui/simple_loader.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../cubits/favorites/get_favorites_cubit.dart';
import '../../di/injector.dart';
import '../../models/detail/detail_item_model.dart';
import '../../models/favorite/favorite_item_model.dart';
import '../../models/favorite/favorite_model.dart';
import '../../models/favorite/profile_favorite_list.dart';

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
  List<DetailItemModel> favoritesList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadList();
  }

  Future loadList() async {
    getIt<FavoriteProfileCubit>().loadResults();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteProfileCubit, FavoriteCubitState>(
        builder: (context, state) {
      return state.when(
        initial: () => ListView.builder(
          itemBuilder: (_, index) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: const Center(child: SimpleLoader()),
          ),
          itemCount: 1,
        ),
        loadedProfileFavorites:
            (List<ListFavoriteProfileResponseModel> profileFavoriteList) {
          favoritesList = [...profileFavoriteList.first.favoriteList];

          return _getBody(favoritesList);
        },
        loading: (bool isFirstFetch) {
          return Container();
        },
        error: (String message) {
          return Container();
        },
        loadedFavoriteItem: (FavoriteModel dataFavoriteItem) {
          return Container();
        },
        removedFavoriteItem: (FavoriteModel dataFavoriteItem) {
          return Container();
        },
      );
    });
  }

  Widget _getBody(List<DetailItemModel> favoriteList) {
    return favoriteList.isNotEmpty
        ? RefreshWidget(
            onRefresh: loadList,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 215,
                ),
                itemCount: favoriteList.length,
                itemBuilder: (_, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.38,
                            child: ClipRRect(
                              child: CachedNetworkImage(
                                fit: BoxFit.fitHeight,
                                imageUrl: favoriteList[index].catalogItemImage,
                                placeholder: (context, url) => SizedBox(
                                  height: 200,
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
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: Image.asset(
                                favoriteList[index].inFavorites
                                    ? "assets/images/Favorite.png"
                                    : "assets/images/UnFavorite.png",
                                scale: 3.5,
                              ),
                              onPressed: () {
                                setState(() {
                                  BlocProvider.of<FavoriteItemBloc>(context)
                                      .add(FavoriteItemEvent.removeFavoriteItem(
                                          FavoriteModel(
                                              favoritesItemAction: "DELETE",
                                              profileFavoriteItems: [
                                        FavoriteItemModel(
                                            profileFavoriteItemId:
                                                favoriteList[index]
                                                    .profileFavoriteItemId,
                                            catalogItemId: favoriteList[index]
                                                .catalogItemId)
                                      ])));
                                });
                              },
                            ),
                          )
                        ],
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
                      Text(
                          '${S.of(context).last_sale} ${favoriteList[index].saleInfo.lastSale}',
                          overflow: TextOverflow.fade,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 13,
                                  color: Palette.current.primaryNeonGreen)),
                    ],
                  );
                },
              ),
            ),
          )
        : ListView.builder(
            itemBuilder: (_, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              child: Center(
                child: Text(
                  S.of(context).empty_text,
                  style: TextStyle(
                      fontSize: 24, color: Colors.black.withOpacity(0.50)),
                ),
              ),
            ),
            itemCount: 1,
          );
  }
}
