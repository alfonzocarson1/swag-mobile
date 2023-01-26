import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../blocs/favorite_bloc/favorite_bloc.dart';
import '../../di/injector.dart';
import '../../models/search/catalog_item_model.dart';
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

  @override
  void initState() {
    _favoriteBloc = getIt<FavoriteBloc>();
    super.initState();
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
            child: SizedBox(
              height: 440,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      Visibility(
                          visible: _favoriteBloc.isExist(
                              widget.catalogItems[index].catalogItemName),
                          child: Positioned.fill(
                            child: Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  "assets/images/IconsBig.png",
                                  scale: 3,
                                )),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
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
                                child: Row(
                                  children: [
                                    Text(
                                        widget.catalogItems[index]
                                            .catalogItemName,
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
                                      onPressed: () {
                                        setState(() {
                                          _favoriteBloc.toggleFavorite(widget
                                              .catalogItems[index]
                                              .catalogItemName);
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
                ],
              ),
            ),
          );
        });
  }
}
