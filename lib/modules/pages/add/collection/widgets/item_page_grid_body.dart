import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../generated/l10n.dart';
import '../../../../blocs/search_bloc.dart/search_bloc.dart';
import '../../../../common/utils/palette.dart';
import '../../../../common/utils/tab_wrapper.dart';
import '../../../../common/utils/utils.dart';
import '../../../../models/search/catalog_item_model.dart';
import '../../../../models/search/filter_model.dart';
import '../../../../models/search/search_request_payload_model.dart';
import '../add_collection_page.dart';

class ItemPageGridBody extends StatefulWidget {
  const ItemPageGridBody({super.key, required this.catalogList});

  final List<CatalogItemModel> catalogList;

  @override
  State<ItemPageGridBody> createState() => _ItemPageGridBodyState();
}

class _ItemPageGridBodyState extends State<ItemPageGridBody> {
  void makeCall() {
    context.read<SearchBloc>().add(const SearchEvent.performSearch(
        SearchRequestPayloadModel(filters: FilterModel()), SearchTab.whatsHot));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        makeCall();
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: widget.catalogList.isNotEmpty
          ? Stack(
              children: [
                GridView.builder(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 70,
                  ),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 15.0,
                    mainAxisExtent: 230,
                  ),
                  itemCount: widget.catalogList.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                            AddCollection.route(
                                context,
                                widget.catalogList[index].catalogItemId,
                                widget.catalogList[index].catalogItemImage,
                                widget.catalogList[index].catalogItemName));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: widget
                                        .catalogList[index].catalogItemImage,
                                    placeholder: (context, url) => SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.38,
                                      width: MediaQuery.of(context).size.width *
                                          0.50,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color:
                                              Palette.current.primaryNeonGreen,
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                            "assets/images/ProfilePhoto.png"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                              widget.catalogList[index].catalogItemName
                                  .toUpperCase(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      letterSpacing: 0.018,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: "KnockoutCustom",
                                      fontSize: 21,
                                      color: Palette.current.white)),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                              widget.catalogList[index].forSale
                                  ? '${S.of(context).for_sale} ${decimalDigitsLastSalePrice(widget.catalogList[index].saleInfo.minPrice.toString())}'
                                  : '${S.of(context).last_sale}  ${decimalDigitsLastSalePrice(widget.catalogList[index].saleInfo.lastSale.toString())}',
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
              ],
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
}
