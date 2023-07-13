import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/pages/explore/widgets/explore_category_slider_body.dart';

import '../../../generated/l10n.dart';
import '../../cubits/explore/get_explore_cubit.dart';
import '../../models/explore/explore_item_model.dart';
import '../../models/search/catalog_item_model.dart';

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
        child: ExploreCategorySlider(sliderList: staffListData, sliderText: S.of(context).staff_picks, isStaffPicks: true, isUnicorn: false, isWhatsHot: false));
  }

}
