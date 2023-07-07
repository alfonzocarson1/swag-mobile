import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/models/search/filter_model.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/buy_sale_listing_bloc/buy_sale_listing_bloc.dart';
import '../../../blocs/detail_bloc/detail_bloc.dart';
import '../../../common/ui/custom_app_bar.dart';
import '../../../common/ui/loading.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../../models/detail/detail_sale_info_model.dart';
import '../../../models/detail/sale_history_model.dart';
import '../../detail/transaction_history_page.dart';
import 'preview_buy_for_sale.dart';

// ignore: must_be_immutable
class BuyForSale extends StatefulWidget {
  static const name = '/BuyForSale';

  BuyForSale({
    super.key,
    required this.catalogItemId,
    required this.catalogItemName,
    required this.catalogItemPrice,
    required this.urlImage,
    required this.favorite,
    required this.sale,
    this.available,
    required this.addFavorite,
    required this.saleHistoryList,
  });

  String catalogItemId;
  String catalogItemName;
  DetailSaleInfoModel catalogItemPrice;
  String urlImage;
  bool favorite;
  bool sale;
  final int? available;
  Function(bool) addFavorite;
  List<SalesHistoryModel> saleHistoryList;

  static Route route(
          String catalogItemId,
          String catalogItemName,
          DetailSaleInfoModel catalogItemPrice,
          String urlImage,
          bool favorite,
          bool sale,
          int available,
          List<SalesHistoryModel> saleHistoryList,
          Function(bool) addFavorite) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => BuyForSale(
          catalogItemId: catalogItemId,
          catalogItemName: catalogItemName,
          catalogItemPrice: catalogItemPrice,
          urlImage: urlImage,
          favorite: favorite,
          sale: sale,
          available: available,
          addFavorite: addFavorite,
          saleHistoryList: saleHistoryList,
        ),
      );

  @override
  State<BuyForSale> createState() => _BuyForSaleState();
}

class _BuyForSaleState extends State<BuyForSale> {
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);
  FilterModel filters = FilterModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    context
        .read<BuySaleListingBloc>()
        .add(BuySaleListingEvent.getBuyListingItem(widget.catalogItemId));
  }

  @override
  void didChangeDependencies() async {
    filters = await getCurrentFilterModel();
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Palette.current.blackSmoke,
        appBar: CustomAppBar(
          onRoute: () {
            BlocProvider.of<DetailBloc>(context)
                .add(DetailEvent.getDetailItem(widget.catalogItemId));

            Navigator.of(context, rootNavigator: true).pop();
          },
        ),
        body: BlocConsumer<BuySaleListingBloc, BuySaleListingState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => {
              if (Loading.isVisible()) {Loading.hide(context)}
            },
            error: (message) => {
              if (Loading.isVisible()) {Loading.hide(context)}
              // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
            },
            initial: () {
              if (!Loading.isVisible()) {
                Loading.show(context);
              }
              return null;
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
              loadedSaledItems: (state) {
                List<BuyForSaleListingModel> model = List.from(state.saledItemdList[0].saledItemdList);
                return _getBody(filteredCondition(model, filters));
              },
            );
          },
        ));
  }

  Widget _getBody(List<BuyForSaleListingModel> dataListingSale) {
    return RefreshIndicator(
      onRefresh: () async {
        makeCall();
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: dataListingSale.isNotEmpty
          ? _dataDetail(dataListingSale, _scrollController!)
          : ListView.builder(
              padding: EdgeInsets.zero,
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

  Widget _dataDetail(List<BuyForSaleListingModel> dataListingSale,
      ScrollController scrollController) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        controller: scrollController,
        separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.transparent,
              ),
            ),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Palette.current.blackSmoke,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Text(widget.catalogItemName.toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  letterSpacing: 0.018,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "KnockoutCustom",
                                  fontSize: 30,
                                  color: Palette.current.white)),
                      Text(
                          '${S.of(context).last_sale} ${decimalDigitsLastSalePrice(widget.catalogItemPrice.lastSale.toString())} ',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  letterSpacing: 0.014,
                                  fontWeight: FontWeight.w300,
                                  color: Palette.current.primaryNeonGreen)),
                      (widget.saleHistoryList.isNotEmpty)
                          ? Column(
                              children: [
                                const SizedBox(
                                  height: 28,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(TransactionHistory.route(
                                            widget.urlImage,
                                            widget.catalogItemName,
                                            widget.catalogItemPrice,
                                            widget.sale,
                                            widget.available ?? 0,
                                            widget.favorite,
                                            widget.catalogItemId,
                                            widget.saleHistoryList, (val) {
                                      widget.addFavorite(val);
                                    }));
                                  },
                                  child: Center(
                                    child: Container(
                                        height: 60,
                                        width:
                                            MediaQuery.of(context).size.width,
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
                                                        fontFamily:
                                                            "KnockoutCustom",
                                                        fontSize: 25,
                                                        letterSpacing: 1,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Palette
                                                            .current.white)),
                                          ],
                                        )),
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Palette.current.blackSmoke,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: <Widget>[
                        Text("${dataListingSale.length} FOR SALE",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    letterSpacing: 0.018,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "KnockoutCustom",
                                    fontSize: 30,
                                    color: Palette.current.white)),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Divider(
                          color: Palette.current.grey,
                        )),
                      ]),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Palette.current.blackSmoke,
                    ),
                    child: Column(
                        children: List.generate(
                      dataListingSale.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true).push(
                              BuyPreviewPage.route(
                                  productItemId:
                                      dataListingSale[index].productItemId,
                                  ));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 28),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                flex: 3,
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.32,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: dataListingSale[index]
                                          .productItemImageUrls[0],
                                      placeholder: (context, url) => SizedBox(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.32,
                                        child: Center(
                                          child: CircularProgressIndicator(
                                            color: Palette
                                                .current.primaryNeonGreen,
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
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            "${decimalDigitsLastSalePrice(dataListingSale[index].lastSale.toString())}  ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                    letterSpacing: 0.015,
                                                    fontWeight: FontWeight.w300,
                                                    fontFamily:
                                                        "KnockoutCustom",
                                                    fontSize: 30,
                                                    color: Palette.current
                                                        .primaryNeonGreen)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            "Condition: ${dataListingSale[index].condition}",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    color: Palette.current
                                                        .primaryNeonPink)),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                            dataListingSale[index]
                                                    .productItemDescription ??
                                                '',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    color:
                                                        Palette.current.white)),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ))),
              ),
            ],
          );
        });
  }

  void makeCall() {
    context
        .read<BuySaleListingBloc>()
        .add(BuySaleListingEvent.getBuyListingItem(widget.catalogItemId));
  }
}
