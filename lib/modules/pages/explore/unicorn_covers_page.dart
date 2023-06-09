import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/pages/explore/widgets/explore_category_slider_body.dart';

import '../../../generated/l10n.dart';
import '../../cubits/explore/get_explore_cubit.dart';
import '../../models/explore/explore_item_model.dart';
import '../../models/search/catalog_item_model.dart';

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
        child: ExploreCategorySlider(sliderList: unicornListData, sliderText: S.of(context).unicorn_covers,));
  } 
  
}
