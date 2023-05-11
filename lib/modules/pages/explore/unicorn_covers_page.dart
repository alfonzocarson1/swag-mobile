import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/utils/palette.dart';
import '../../cubits/explore/get_explore_cubit.dart';
import '../../models/explore/explore_item_model.dart';
import '../../models/search/catalog_item_model.dart';
import '../search/search_result/search_result_page.dart';
import 'slide_horizontal_widget.dart';

class UnicornCoversPage extends StatefulWidget {
  const UnicornCoversPage({Key? key}) : super(key: key);

  @override
  State<UnicornCoversPage> createState() => _UnicornCoversPageState();
}

class _UnicornCoversPageState extends State<UnicornCoversPage> {
  List<CatalogItemModel> unicornListData = [];
  @override
  Widget build(BuildContext context) {
    return BlocListener<ExploreCubit, ExploreCubitState>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              loadedUnicorn: (List<ListExploreItemModel> exploreUnicornList) {
                setState(() {
                  unicornListData = exploreUnicornList.first.exploreList;
                });

                return null;
              },
            ),
        child: _getBody(context, unicornListData));
  }

  Widget _getBody(context, List<CatalogItemModel> unicornList) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(S.of(context).unicorn_covers,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "KnockoutCustom",
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: ClickableText(
                          title: SimpleRichText(S.of(context).See_All,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 16,
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).push(
                                SearchResultPage.route(
                                    searchParam: '',
                                    staffPicksFlag: false,
                                    unicornFlag: true));
                          },
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 230.0,
          child: GridView.builder(
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 160,
              ),
              padding: const EdgeInsets.all(10.0),
              scrollDirection: Axis.horizontal,
              itemCount: unicornList.length,
              itemBuilder: (BuildContext context, int index) {
                return HorizontalSlideWidget(
                    unicornList[index].catalogItemImage,
                    unicornList[index].catalogItemName,
                    unicornList[index].saleInfo.lastSale,
                    unicornList[index].forSale,
                    unicornList[index].saleInfo.maxPrice,
                    unicornList[index].numberAvailable,
                    unicornList[index].collectionItems!.length,
                    unicornList[index].catalogItemId);
              }),
        ),
      ],
    );
  }
}
