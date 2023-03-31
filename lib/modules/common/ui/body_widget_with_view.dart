import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/catalog_ui.dart';
import 'package:swagapp/modules/common/ui/shrunken_item_widget.dart';

import '../../../generated/l10n.dart';
import '../../blocs/search_bloc.dart/search_bloc.dart';
import '../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';

import '../../models/search/catalog_item_model.dart';
import '../utils/utils.dart';

class BodyWidgetWithView extends StatefulWidget {
  
  BodyWidgetWithView(
    this.catalogList, 
    this.tab, {
      Key? key, 
      this.searchParams,
      this.scrollListener,
      this.scrollTrgiggerOffset = 0,
    }) : super(key: key);

  List<CatalogItemModel> catalogList;
  SearchTab tab;
  final String? searchParams;
  final Function()? scrollListener;
  final double scrollTrgiggerOffset;

  @override
  State<BodyWidgetWithView> createState() => _BodyWidgetWithViewState();
}

class _BodyWidgetWithViewState extends State<BodyWidgetWithView> {

  late final ScrollController _scrollController;

  @override
  void initState() {
    
    this._scrollController = ScrollController();
    this._scrollController.addListener(this.scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    this._scrollController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) => _getBody(widget.catalogList);

  Widget _getBody(List<CatalogItemModel> catalogList) {

    return RefreshIndicator(
      onRefresh: () async {
        performSearch(context: context, searchParam: widget.searchParams, tab: widget.tab);
        return Future.delayed(const Duration(milliseconds: 1500));
      }, 
      child: BlocBuilder<SharedPreferencesBloc, SharedPreferencesState>(
        builder: (context, stateSharedPreferences) {
          return stateSharedPreferences.map(
            setPreference: (state) => getWidgetWithView(catalogList, state.model.isListView),
          );
        },
      ),
    );
  }

  Widget getWidgetWithView(List<CatalogItemModel> catalogList, bool isListView) {

    return catalogList.isNotEmpty
      ? isListView
        ? CatalogPage(
            catalogItems: catalogList, 
            scrollController: this._scrollController,
          )
        : Padding(
            padding: const EdgeInsets.only(
              top: 0, 
              bottom: 0, 
              left: 16, 
              right: 0,
            ),
            child: GridView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                mainAxisExtent: 215,
              ),
              itemCount: catalogList.length,
              itemBuilder: (_, index) => ShrunkenItemWidget(model: catalogList[index]),
            ),
          )
      : ListView.builder(
          itemBuilder: (_, index) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Center(
              child: Text(
                S.of(context).empty_text,
                style: TextStyle(
                  fontSize: 24, 
                  color: Colors.black.withOpacity(0.50),
                ),
              ),
            ),
          ),
          itemCount: 1,
        );
  }


  void scrollListener() async {

    double scrollPercentage = (this._scrollController.position.maxScrollExtent - 300);

    if(this._scrollController.offset >= scrollPercentage) {
      if(this.widget.scrollListener != null) await this.widget.scrollListener!();      
    }
  }
}
