import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:swagapp/modules/common/assets/icons.dart';

import '../../../generated/l10n.dart';
import '../../blocs/favorite_bloc/favorite_bloc.dart';
import '../../blocs/favorite_bloc/favorite_item_bloc.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/tab_wrapper.dart';
import '../../common/utils/utils.dart';
import '../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/detail/detail_sale_info_model.dart';
import '../../models/detail/sale_history_model.dart';
import '../../models/favorite/favorite_item_model.dart';
import '../../models/favorite/favorite_model.dart';
import '../login/create_account_page.dart';

class HeadWidget extends StatefulWidget {
  HeadWidget(
      {super.key,
      required this.urlImage,
      this.catalogItemName,
      required this.lastSale,
      this.catalogItemDescription,
      this.catalogItemDescriptionShort,
      required this.sale,
      required this.favorite,
      this.available,
      required this.saleHistory,
      required this.itemId,
      this.profileFavoriteItemId,
      this.saleHistoryNavigation,
      required this.addFavorite});

  final String urlImage;
  final String? catalogItemName;
  final DetailSaleInfoModel lastSale;
  final String? catalogItemDescription;
  final String? catalogItemDescriptionShort;
  final bool sale;
  final bool favorite;
  final int? available;
  final List<SalesHistoryModel> saleHistory;
  final String itemId;
  final String? profileFavoriteItemId;
  Function(bool) addFavorite;
  Function? saleHistoryNavigation;
  @override
  State<HeadWidget> createState() => _HeadWidgetState();
}

class _HeadWidgetState extends State<HeadWidget> {
  bool _viewMore = false;
  late FavoriteBloc _favoriteBloc;
  double animateFavorite = 0.0;
  bool isSkullVisible = true;
  int? indexFavorite;
  bool isLogged = false;
  bool favorite = false;
  String? profileFavoriteItemId;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileFavoriteItemId = widget.profileFavoriteItemId;
    _favoriteBloc = getIt<FavoriteBloc>();
    favorite = widget.favorite;

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
    refreshResults();
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

  @override
  Widget build(BuildContext context) {
    _favoriteBloc = getIt<FavoriteBloc>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(children: [
          BlocBuilder<FavoriteItemBloc, FavoriteItemState>(
              builder: (context, favoriteItemState) {
            return favoriteItemState.maybeMap(
                orElse: () => Container(),
                loadedFavoriteItem: (state) {
                  Future.delayed(Duration.zero, () {
                    setState(() {
                      profileFavoriteItemId = state
                          .dataFavoriteItem
                          .profileFavoriteItems![state.dataFavoriteItem
                                  .profileFavoriteItems!.length -
                              1]
                          .profileFavoriteItemId;
                    });
                  });

                  return Container();
                });
          }),
          CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl: widget.urlImage,
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
                Image.asset("assets/images/ProfilePhoto.png"),
          ),
          Visibility(
            visible: isSkullVisible,
            child: Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: AnimatedContainer(
                    height: (0 == indexFavorite) ? animateFavorite : 0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Image.asset(
                      "assets/images/IconsBig.png",
                      scale: 3,
                    )),
              ),
            ),
          ),
        ]),
        Visibility(
            visible: widget.sale,
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Palette.current.primaryNeonPink,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      '''${widget.available} ${S.of(context).for_sale}''',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontFamily: 'Ringside',
                          fontWeight: FontWeight.bold,
                          color: Palette.current.white)),
                ),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(widget.catalogItemName?.toUpperCase() ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    letterSpacing: 0.54,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "KnockoutCustom",
                                    fontSize: 30,
                                    color: Palette.current.white)),
                      )),
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                  icon: Image.asset(
                                    favorite
                                        ? "assets/images/Favorite.png"
                                        : "assets/images/UnFavorite.png",
                                    scale: 3.5,
                                  ),
                                  onPressed: () async {
                                    if (isLogged) {
                                      setState(() {
                                        if (!favorite) {
                                          BlocProvider.of<FavoriteItemBloc>(
                                                  context)
                                              .add(FavoriteItemEvent
                                                  .addFavoriteItem(FavoriteModel(
                                                      favoritesItemAction:
                                                          "ADD",
                                                      profileFavoriteItems: [
                                                FavoriteItemModel(
                                                    catalogItemId:
                                                        widget.itemId)
                                              ])));
                                          favorite = true;
                                          widget.addFavorite(true);
                                          onChangeFavoriteAnimation(0);
                                        } else {
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
                                                        profileFavoriteItemId,
                                                    catalogItemId:
                                                        widget.itemId)
                                              ])));
                                          widget.addFavorite(false);
                                          favorite = false;
                                          refreshResults();
                                        }
                                      });
                                    } else {
                                      Navigator.of(context, rootNavigator: true)
                                          .push(CreateAccountPage.route());
                                    }
                                  },
                                ),
                              )),
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    widget.sale
                        ? (widget.available! > 1)
                            ? '${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(widget.lastSale.minPrice!)} - ${decimalDigitsLastSalePrice(widget.lastSale.maxPrice!)}'
                            : '${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(widget.lastSale.minPrice!)}'
                        : '${S.of(context).last_sale}: ${decimalDigitsLastSalePrice(widget.lastSale.lastSale!)}',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 16,
                        letterSpacing: 0.0224,
                        fontWeight: FontWeight.w300,
                        color: Palette.current.primaryNeonGreen)),
              ),
              (widget.saleHistory.isNotEmpty)
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (isLogged &&
                                widget.saleHistoryNavigation != null) {
                              widget.saleHistoryNavigation!();
                            } else {
                              Navigator.of(context, rootNavigator: true)
                                  .push(CreateAccountPage.route());
                            }
                          },
                          child: Center(
                            child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            Palette.current.primaryNeonGreen),
                                    color: Colors.transparent),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 50,
                                    ),
                                    Image.asset(
                                      AppIcons.trendingUp,
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(S.of(context).sales_history,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                                fontFamily: "KnockoutCustom",
                                                fontSize: 25,
                                                letterSpacing: 1.2,
                                                fontWeight: FontWeight.w300,
                                                color: Palette.current.white)),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
              Visibility(
                  visible: widget.catalogItemDescription != null,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Visibility(
                        visible: _viewMore,
                        child: Text(widget.catalogItemDescription ?? '',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                      ),
                      Visibility(
                        visible: !_viewMore,
                        child: Text(widget.catalogItemDescriptionShort ?? '',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0.24,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClickableText(
                            title: SimpleRichText(
                              _viewMore
                                  ? S.of(context).view_less
                                  : S.of(context).view_more,
                              textAlign: TextAlign.start,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 16,
                                      color: Palette.current.white,
                                      fontWeight: FontWeight.normal),
                            ),
                            onPressed: () {
                              setState(() {
                                if (_viewMore) {
                                  _viewMore = false;
                                } else {
                                  _viewMore = true;
                                }
                              });
                            }),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
