import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../blocs/favorite_bloc/favorite_item_bloc.dart';

import '../../common/ui/refresh_widget.dart';
import '../../common/ui/simple_loader.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/tab_wrapper.dart';
import '../../common/utils/utils.dart';
import '../../cubits/favorites/get_favorites_cubit.dart';
import '../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../di/injector.dart';
import '../../models/detail/detail_item_model.dart';
import '../../models/favorite/favorite_item_model.dart';
import '../../models/favorite/favorite_model.dart';
import '../../models/favorite/profile_favorite_list.dart';
import '../detail/item_detail_page.dart';

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

  String showForSaleLabel(
      {required BuildContext context, required int? length}) {
    return length == 1 ? S.of(context).for_sale : S.of(context).from;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteProfileCubit, FavoriteCubitState>(
        builder: (context, state) {
      return state.maybeWhen(
        orElse: () {
          return Container();
        },
        initial: () => ListView.builder(
          itemBuilder: (_, index) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: const Center(child: SimpleLoader()),
          ),
          itemCount: 1,
        ),
        loadedProfileFavorites:
            (ListFavoriteProfileResponseModel profileFavoriteList) {
          favoritesList = [...profileFavoriteList.favoriteList];

          return _getBody(favoritesList);
        },
      );
    });
  }

  refreshResults() {
    getIt<PaginatedSearchCubit>().refreshResults(searchTab: SearchTab.all);
    getIt<PaginatedSearchCubit>().refreshResults(searchTab: SearchTab.whatsHot);
    getIt<PaginatedSearchCubit>()
        .refreshResults(searchTab: SearchTab.headcovers);
    getIt<PaginatedSearchCubit>().refreshResults(searchTab: SearchTab.putters);
    getIt<PaginatedSearchCubit>()
        .refreshResults(searchTab: SearchTab.accessories);
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                          ItemDetailPage.route(
                              favoriteList[index].catalogItemId,
                              (val) {},
                              null));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.37,
                              child: ClipRRect(
                                child: CachedNetworkImage(
                                  fit: BoxFit.fitHeight,
                                  imageUrl:
                                      favoriteList[index].catalogItemImage,
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
                                        .add(FavoriteItemEvent
                                            .removeFavoriteItem(FavoriteModel(
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
                                  refreshResults();
                                },
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Visibility(
                                  visible: favoriteList[index].forSale,
                                  child: Container(
                                    height: 30,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Palette.current.primaryNeonPink,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                            '''${favoriteList[index].numberAvailable} ${S.of(context).for_sale}''',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        Palette.current.white)),
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(favoriteList[index].catalogItemName.toUpperCase(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "KnockoutCustom",
                                    fontSize: 21,
                                    color: Palette.current.white)),
                        Text(
                            favoriteList[index].forSale
                                ? '${showForSaleLabel(context: context, length: favoriteList[index].numberAvailable)}: ${decimalDigitsLastSalePrice(favoriteList[index].saleInfo.minPrice!)}'
                                : '${S.of(context).last_sale}: ${decimalDigitsLastSalePrice(favoriteList[index].saleInfo.lastSale!)}',
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
                  );
                },
              ),
            ),
          )
        : ListView.builder(
            itemBuilder: (_, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/UnFavorite.png",
                      scale: 3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        S.of(context).empty_favorite,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "KnockoutCustom",
                            fontWeight: FontWeight.w300,
                            fontSize: 30,
                            letterSpacing: 1.2,
                            color: Palette.current.darkGray),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            itemCount: 1,
          );
  }
}
