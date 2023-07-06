import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/catalog_ui.dart';
import 'package:swagapp/modules/common/ui/shrunken_item_widget.dart';
import 'package:swagapp/modules/cubits/paginated_search/paginated_search_cubit.dart';

import '../../../generated/l10n.dart';
import '../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';

import '../../di/injector.dart';
import '../../models/search/catalog_item_model.dart';
import '../utils/palette.dart';
import '../utils/tab_wrapper.dart';

class BodyWidgetWithView extends StatefulWidget {
  
  const BodyWidgetWithView(
    this.catalogList, 
    this.tab, {
      Key? key, 
      this.searchParams,
      this.scrollListener,
      this.scrollTrgiggerOffset = 0,
    }) : super(key: key);

  final List<CatalogItemModel> catalogList;
  final SearchTab tab;
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
        if(widget.tab != SearchTab.all){
        getIt<PaginatedSearchCubit>().refreshResults(searchTab: widget.tab);
        }
        else{
          getIt<PaginatedSearchCubit>().refreshResults(searchTab: widget.tab,params: widget.searchParams);
        }
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
          tab: widget.tab,
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
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: Image.asset("assets/images/UnFavorite.png")),
                  const SizedBox(height: 18,),
                  Text(
                    S.of(context).empty_search_result,
                    style: TextStyle(
                      fontFamily: "KnockoutCustom",
                      fontSize: 30, 
                      color: Palette.current.darkGray,
                    ),
                  ),
                ],
              ),
            ),
          ),
          itemCount: 1,
        );
  }


  Future<void> scrollListener()  async {

    var scrollListenerFunction = this.widget.scrollListener;
     if (this._scrollController.position.atEdge) {
        if (this._scrollController.position.pixels != 0) {
           if(scrollListenerFunction != null) {
          await scrollListenerFunction();
          }  
        }
      }
}
}