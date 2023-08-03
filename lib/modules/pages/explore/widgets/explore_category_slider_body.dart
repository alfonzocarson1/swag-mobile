import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/clickable_text.dart';
import '../../../common/utils/palette.dart';
import '../../../cubits/page_from_explore/page_from_explore_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/search/catalog_item_model.dart';
import '../../search/search_result/search_result_page.dart';
import '../slide_horizontal_widget.dart';

class ExploreCategorySlider extends StatefulWidget {
  const ExploreCategorySlider(
      {super.key,
      required this.sliderList,
      required this.sliderText,
      required this.isStaffPicks,
      required this.isUnicorn,
      required this.isWhatsHot,
      this.pageFromExplore});
  final List<CatalogItemModel> sliderList;
  final Function()? pageFromExplore;
  final String sliderText;
  final bool isUnicorn;
  final bool isWhatsHot;
  final bool isStaffPicks;

  @override
  State<ExploreCategorySlider> createState() => _ExploreCategorySliderState();
}

class _ExploreCategorySliderState extends State<ExploreCategorySlider> {
  @override
  Widget build(BuildContext context) {
    double deviceSizeRatio = MediaQuery.of(context).size.aspectRatio;
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
                      child: Text(widget.sliderText,
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
                            if(!widget.isWhatsHot) {
                              Navigator.of(context, rootNavigator: true).push(
                                  SearchResultPage.route(
                                      searchParam: widget.sliderText,
                                      staffPicksFlag: widget.isStaffPicks,
                                      unicornFlag: widget.isUnicorn));
                            }
                            else{
                              widget.pageFromExplore!();
                              getIt<PreferenceRepositoryService>().setPageFromExplore(1);
                              getIt<PageFromExploreCubit>().loadResults(0);
                            }
                          },
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: deviceSizeRatio * 510,
          child: GridView.builder(
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 7,
                crossAxisCount: 1,
                mainAxisExtent: 160,
              ),
              padding: const EdgeInsets.all(10.0),
              scrollDirection: Axis.horizontal,
              itemCount: widget.sliderList.length,
              itemBuilder: (BuildContext context, int index) {
                return HorizontalSlideWidget(
                  pathImage: widget.sliderList[index].catalogItemImage,
                  title: widget.sliderList[index].catalogItemName.toUpperCase(),
                  forSale: widget.sliderList[index].forSale,
                  minPrice: widget.sliderList[index].saleInfo.minPrice,
                  maxPrice: widget.sliderList[index].saleInfo.maxPrice,
                  lastSale: widget.sliderList[index].saleInfo.lastSale,
                  numberAvailable: widget.sliderList[index].numberAvailable,
                  catalogItemId: widget.sliderList[index].catalogItemId,
                );
              }),
        ),
      ],
    );
  }
}
