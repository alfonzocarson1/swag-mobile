import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/clickable_text.dart';
import '../../common/utils/palette.dart';
import '../../cubits/explore/get_explore_cubit.dart';
import '../../models/explore/explore_item_model.dart';
import '../../models/search/catalog_item_model.dart';
import 'slide_horizontal_widget.dart';

class StaffPicksPage extends StatefulWidget {
  const StaffPicksPage({Key? key}) : super(key: key);

  @override
  State<StaffPicksPage> createState() => _StaffPicksPageState();
}

class _StaffPicksPageState extends State<StaffPicksPage> {
  List<CatalogItemModel> staffListData = [];

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExploreCubit, ExploreCubitState>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              loadedStaff: (List<ListExploreItemModel> exploreStaffList) {
                setState(() {
                  staffListData = exploreStaffList.first.exploreList;
                });
                return null;
              },
            ),
        child: _getBody(context, staffListData));
  }

  Widget _getBody(context, List<CatalogItemModel> staffList) {
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
                      child: Text(S.of(context).staff_picks,
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
                          onPressed: () {},
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
              itemCount: staffList.length,
              itemBuilder: (BuildContext context, int index) {
                return HorizontalSlideWidget(
                    staffList[index].catalogItemImage,
                    staffList[index].catalogItemName,
                    staffList[index].saleInfo.lastSale,
                    staffList[index].forSale,
                    staffList[index].saleInfo.maxPrice,
                    staffList[index].numberAvailable,
                    staffList[index].collectionItems!.length,
                    staffList[index].catalogItemId);
              }),
        ),
      ],
    );
  }
}
