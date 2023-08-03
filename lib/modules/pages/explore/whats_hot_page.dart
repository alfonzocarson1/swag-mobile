import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/pages/explore/widgets/explore_category_slider_body.dart';

import '../../../generated/l10n.dart';
import '../../cubits/explore/get_explore_cubit.dart';
import '../../models/explore/explore_item_model.dart';
import '../../models/search/catalog_item_model.dart';

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
        child: ExploreCategorySlider(sliderList: whatsHotListData, sliderText: S.of(context).whats_hot.toUpperCase(), isStaffPicks: false, isUnicorn: false, isWhatsHot: true, pageFromExplore: widget.pageFromExplore,));
  }
 
}
