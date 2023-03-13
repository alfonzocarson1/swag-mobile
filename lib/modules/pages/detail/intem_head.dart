import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../../blocs/favorite_bloc/favorite_bloc.dart';
import '../../blocs/sale_history/sale_history_bloc.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/utils/palette.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../login/create_account_page.dart';
import 'transaction_history_page.dart';

class HeadWidget extends StatefulWidget {
  const HeadWidget({
    super.key,
    required this.urlImage,
    this.catalogItemName,
    this.lastSale,
    this.catalogItemDescription,
    this.catalogItemDescriptionShort,
    required this.sale,
    required this.favorite,
    this.available,
    this.saleHistory,
    required this.itemId,
  });

  final String urlImage;
  final String? catalogItemName;
  final String? lastSale;
  final String? catalogItemDescription;
  final String? catalogItemDescriptionShort;
  final bool sale;
  final bool favorite;
  final int? available;
  final List<dynamic>? saleHistory;
  final String itemId;

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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _favoriteBloc = getIt<FavoriteBloc>();

    //TODO: For test the ticket remove comment
    // context.read<SalesHistoryBloc>().add(SalesHistoryEvent.getSalesHistory(
    //     'a434e065-6bc6-490e-9e26-ea1b348b0003'));

    isLogged = getIt<PreferenceRepositoryService>().isLogged();

    context
        .read<SalesHistoryBloc>()
        .add(SalesHistoryEvent.getSalesHistory(widget.itemId));
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(children: [
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
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Knockout",
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
                                    _favoriteBloc.isExist(widget.catalogItemName
                                                ?.toUpperCase() ??
                                            '')
                                        ? "assets/images/Favorite.png"
                                        : "assets/images/UnFavorite.png",
                                    scale: 3.5,
                                  ),
                                  onPressed: () async {
                                    if (isLogged) {
                                      setState(() {
                                        _favoriteBloc.toggleFavorite(widget
                                                .catalogItemName
                                                ?.toUpperCase() ??
                                            '');
                                        if (_favoriteBloc.isExist(widget
                                                .catalogItemName
                                                ?.toUpperCase() ??
                                            '')) {
                                          onChangeFavoriteAnimation(0);
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
                        ? "${S.of(context).for_sale} \$360.00 - ${widget.lastSale}"
                        : '${widget.lastSale}',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w300,
                        color: Palette.current.primaryNeonGreen)),
              ),
              BlocBuilder<SalesHistoryBloc, SalesHistoryState>(
                  builder: (context, usernameState) {
                return usernameState.maybeMap(
                    orElse: () => Container(),
                    loadedSalesHistory: (state) {
                      if (state.detaSalesHistoryList[0].saleHistoryList!
                              .isNotEmpty &&
                          widget.saleHistory != null) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (isLogged) {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(TransactionHistory.route(
                                          widget.urlImage,
                                          widget.catalogItemName!,
                                          widget.lastSale!,
                                          false,
                                          3,
                                          widget.favorite,
                                          widget.itemId));
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
                                            color: Palette
                                                .current.primaryNeonGreen),
                                        color: Colors.transparent),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        Image.asset(
                                          "assets/images/trending-up.png",
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
                                                    fontFamily: "Knockout",
                                                    fontSize: 25,
                                                    letterSpacing: 1,
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        Palette.current.white)),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Container();
                      }
                    });
              }),
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
                                      fontSize: 15,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                      ),
                      Visibility(
                        visible: !_viewMore,
                        child: Text(widget.catalogItemDescriptionShort ?? '',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 15,
                                      letterSpacing: 0.3,
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
