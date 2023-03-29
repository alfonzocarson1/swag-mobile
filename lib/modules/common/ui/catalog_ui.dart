import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../blocs/favorite_bloc/favorite_bloc.dart';
import '../../blocs/favorite_bloc/favorite_item_bloc.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/favorite/favorite_item_model.dart';
import '../../models/favorite/favorite_model.dart';
import '../../models/search/catalog_item_model.dart';
import '../../pages/add/collection/add_collection_page.dart';
import '../../pages/detail/item_detail_page.dart';
import '../../pages/login/create_account_page.dart';
import '../utils/palette.dart';
import 'popup_add_exisiting_item_collection.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage(
      {super.key, required this.catalogItems, required this.scrollController});
  final List<CatalogItemModel> catalogItems;
  final ScrollController scrollController;

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  double animateFavorite = 0.0;
  bool isSkullVisible = true;
  int? indexFavorite;
  bool isLogged = false;

  List<CatalogItemModel> catalogList = [];

  @override
  void initState() {
    catalogList = [...widget.catalogItems];
    super.initState();

    isLogged = getIt<PreferenceRepositoryService>().isLogged();
  }

  onChangeFavoriteAnimation(int index) async {
    setState(() {
      isSkullVisible = true;
      animateFavorite = 130.0;
      indexFavorite = index;
    });
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        isSkullVisible = false;
        animateFavorite = 0.0;
      });

      Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          isSkullVisible = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.transparent,
              ),
            ),
        itemCount: catalogList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(
                  ItemDetailPage.route(catalogList[index].catalogItemId, (val) {
                setState(() {
                  catalogList[index] =
                      catalogList[index].copyWith(inFavorites: val);
                });
              }));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocBuilder<FavoriteItemBloc, FavoriteItemState>(
                    builder: (context, favoriteItemState) {
                  return favoriteItemState.maybeMap(
                      orElse: () => Container(),
                      loadedFavoriteItem: (state) {
                        catalogList[index] = catalogList[index].copyWith(
                            profileFavoriteItemId: state
                                .dataFavoriteItem
                                .profileFavoriteItems![state.dataFavoriteItem
                                        .profileFavoriteItems!.length -
                                    1]
                                .profileFavoriteItemId);

                        return Container();
                      });
                }),
                Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: catalogList[index].catalogItemImage,
                      placeholder: (context, url) => SizedBox(
                        height: 340,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Palette.current.primaryNeonGreen,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          Image.asset("assets/images/ProfilePhoto.png"),
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Palette.current.grey,
                          ),
                          onPressed: () {
                            if (isLogged) {
                              if (catalogList[index]
                                  .collectionItems!
                                  .isNotEmpty) {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (BuildContext context) {
                                      return PopUpAddExisitingItemCollection(
                                          onAdd: () => Navigator.of(context,
                                                  rootNavigator: true)
                                              .push(AddCollection.route(
                                                  context,
                                                  catalogList[index]
                                                      .catalogItemId,
                                                  catalogList[index]
                                                      .catalogItemImage,
                                                  catalogList[index]
                                                      .catalogItemName)));
                                    });
                              } else {
                                Navigator.of(context, rootNavigator: true).push(
                                    AddCollection.route(
                                        context,
                                        widget
                                            .catalogItems[index].catalogItemId,
                                        catalogList[index].catalogItemImage,
                                        catalogList[index].catalogItemName));
                              }
                            } else {
                              Navigator.of(context, rootNavigator: true)
                                  .push(CreateAccountPage.route());
                            }
                          },
                        )),
                    Visibility(
                      visible: isSkullVisible,
                      child: Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: AnimatedContainer(
                              height: (index == indexFavorite)
                                  ? animateFavorite
                                  : 0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              child: Image.asset(
                                "assets/images/IconsBig.png",
                                scale: 3,
                              )),
                        ),
                      ),
                    ),
                    catalogList[index].forSale
                        ? Positioned(
                            bottom: 0,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  color: Palette.current.primaryNeonPink,
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "${catalogList[index].numberAvailable} ${S.of(context).for_sale}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Ringside',
                                                  fontSize: 14,
                                                  color: Palette.current
                                                      .primaryWhiteSmoke),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      catalogList[index]
                                          .catalogItemName
                                          .toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Knockout",
                                              fontSize: 30,
                                              color: Palette.current.white)),
                                )),
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                    icon: Image.asset(
                                      catalogList[index].inFavorites
                                          ? "assets/images/Favorite.png"
                                          : "assets/images/UnFavorite.png",
                                      scale: 3.5,
                                    ),
                                    onPressed: () async {
                                      setState(() {
                                        if (isLogged) {
                                          if (catalogList[index].inFavorites) {
                                            catalogList[index] =
                                                catalogList[index].copyWith(
                                                    inFavorites: false);
                                            BlocProvider.of<FavoriteItemBloc>(
                                                    context)
                                                .add(FavoriteItemEvent
                                                    .removeFavoriteItem(
                                                        FavoriteModel(
                                                            favoritesItemAction:
                                                                "DELETE",
                                                            profileFavoriteItems: [
                                                  FavoriteItemModel(
                                                      profileFavoriteItemId:
                                                          catalogList[index]
                                                              .profileFavoriteItemId,
                                                      catalogItemId:
                                                          catalogList[index]
                                                              .catalogItemId)
                                                ])));
                                          } else {
                                            BlocProvider.of<FavoriteItemBloc>(
                                                    context)
                                                .add(FavoriteItemEvent
                                                    .addFavoriteItem(FavoriteModel(
                                                        favoritesItemAction:
                                                            "ADD",
                                                        profileFavoriteItems: [
                                                  FavoriteItemModel(
                                                      catalogItemId:
                                                          catalogList[index]
                                                              .catalogItemId)
                                                ])));
                                            catalogList[index] =
                                                catalogList[index].copyWith(
                                                    inFavorites: true);
                                            onChangeFavoriteAnimation(index);
                                          }
                                        } else {
                                          Navigator.of(context,
                                                  rootNavigator: true)
                                              .push(CreateAccountPage.route());
                                        }
                                      });
                                    },
                                  ),
                                )),
                          ],
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                          catalogList[index].forSale
                              ? '${S.of(context).for_sale} ${catalogList[index].saleInfo.minPrice} - ${catalogList[index].saleInfo.maxPrice}'
                              : '${S.of(context).last_sale} ${catalogList[index].saleInfo.lastSale}',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: Palette.current.primaryNeonGreen))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          );
        });
  }
}
