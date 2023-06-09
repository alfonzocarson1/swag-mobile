import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/utils/palette.dart';
import '../../cubits/explore/get_explore_cubit.dart';
import '../../cubits/page_from_explore/page_from_explore_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/explore/explore_item_model.dart';
import '../../models/search/catalog_item_model.dart';
import 'slide_horizontal_widget.dart';

class WhatsHotExplorePage extends StatefulWidget {
  const WhatsHotExplorePage({Key? key, required this.pageFromExplore})
      : super(key: key);
  final Function() pageFromExplore;

  @override
  State<WhatsHotExplorePage> createState() => _WhatsHotExplorePageState();
}

class _WhatsHotExplorePageState extends State<WhatsHotExplorePage> {
  List<CatalogItemModel> whatsHotListData = [];

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExploreCubit, ExploreCubitState>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              loadedWhatsHot: (List<ListExploreItemModel> exploreWhatsHotList) {
                setState(() {
                  whatsHotListData = exploreWhatsHotList.first.exploreList;
                });

                return null;
              },
            ),
        child: _getBody(context, whatsHotListData));
  }

  Widget _getBody(context, List<CatalogItemModel> whatsHotList) {
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
                      child: Text(S.of(context).whats_hot.toUpperCase(),
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
                            widget.pageFromExplore();
                            getIt<PreferenceRepositoryService>()
                                .setPageFromExplore(0);
                            getIt<PageFromExploreCubit>().loadResults(0);
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 160,
              ),
              padding: const EdgeInsets.all(10.0),
              scrollDirection: Axis.horizontal,
              itemCount: whatsHotList.length,
              itemBuilder: (BuildContext context, int index) {
                return HorizontalSlideWidget(
                    whatsHotList[index].catalogItemImage,
                    whatsHotList[index].catalogItemName,
                    whatsHotList[index].saleInfo.lastSale,
                    whatsHotList[index].forSale,
                    whatsHotList[index].saleInfo.maxPrice,
                    whatsHotList[index].numberAvailable,
                    whatsHotList[index].collectionItems!.length,
                    whatsHotList[index].catalogItemId);
              }),
        ),
      ],
    );
  }
}
