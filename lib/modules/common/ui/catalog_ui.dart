import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../blocs/favorite_bloc/favorite_bloc.dart';
import '../../di/injector.dart';
import '../../models/search/catalog_item_model.dart';
import '../../pages/add/collection/add_collection_page.dart';
import '../../pages/detail/item_detail_page.dart';
import '../utils/palette.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage(
      {super.key, required this.catalogItems, required this.scrollController});
  final List<CatalogItemModel> catalogItems;
  final ScrollController scrollController;

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  late FavoriteBloc _favoriteBloc;
  double animateFavorite = 0.0;
  bool isSkullVisible = true;
  int? indexFavorite;

  @override
  void initState() {
    _favoriteBloc = getIt<FavoriteBloc>();
    super.initState();
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
        itemCount: widget.catalogItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true)
                  .push(ItemDetailPage.route());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: widget.catalogItems[index].image,
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
                            Navigator.of(context, rootNavigator: true)
                                .push(AddCollection.route(context));
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
                    widget.catalogItems[index].sale
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
                                          "${widget.catalogItems[index].numberAvailable} ${S.of(context).for_sale}",
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                children: [
                                  Text(
                                      widget
                                          .catalogItems[index].catalogItemName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Knockout",
                                              fontSize: 30,
                                              color: Palette.current.white))
                                ],
                              ),
                            ),
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
                                      _favoriteBloc.isExist(widget
                                              .catalogItems[index]
                                              .catalogItemName)
                                          ? "assets/images/Favorite.png"
                                          : "assets/images/UnFavorite.png",
                                      scale: 3.5,
                                    ),
                                    onPressed: () async {
                                      setState(() {
                                        _favoriteBloc.toggleFavorite(widget
                                            .catalogItems[index]
                                            .catalogItemName);
                                        if (_favoriteBloc.isExist(widget
                                            .catalogItems[index]
                                            .catalogItemName)) {
                                          onChangeFavoriteAnimation(index);
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
                      Text(widget.catalogItems[index].lastSale,
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
