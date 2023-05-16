import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/body_widget_with_view.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/cubits/paginated_search/paginated_search_cubit.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
import 'package:swagapp/modules/models/search/search_request_payload_model.dart';

import '../../../common/ui/loading.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/tab_wrapper.dart';
import '../../../constants/constants.dart';
import '../../../di/injector.dart';
import '../../../models/search/filter_model.dart';

class WhatsHotPage extends StatefulWidget {
  static const name = '/WhatsHot';
  const WhatsHotPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const WhatsHotPage(),
      );
  @override
  State<WhatsHotPage> createState() => _WhatsHotPageState();
}
bool shouldLoad = true;
class _WhatsHotPageState extends State<WhatsHotPage> {
 SearchTab tab = SearchTab.whatsHot;    
  String categoryId= "";
  bool isLoading = false;
  Map<SearchTab, List<CatalogItemModel>> resultMap = { };
  List<CatalogItemModel> resultList=[];
  bool hasReachedMax=false;
  

  @override
  void initState() {
    super.initState();

     if(shouldLoad){
    callApi();
    shouldLoad = false;
   }
  
  }

 @override
 void didChangeDependencies() {
   super.didChangeDependencies();
   if (Loading.isVisible()) {
    Loading.hide(context);
    }
 }

 getTabId() async {    
    String categoryId = await SearchTabWrapper(tab).toStringCustom()?? "";
    Future.delayed(const Duration(milliseconds: 500));
   return categoryId;
  }

  callApi() async {
    getIt<PaginatedSearchCubit>().loadResults(
      searchModel: SearchRequestPayloadModel(
        whatsHotFlag: true,
        categoryId: null,
        filters: FilterModel(
              productType: tab != SearchTab.whatsHot
                ? [categoryId]
                : null,
            ),
            ), 
        searchTab: tab );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Palette.current.primaryNero,
        body: BlocBuilder<PaginatedSearchCubit, PaginatedSearchState>(
          builder: (context, state){
           return state.when
           (
           initial: () => const SimpleLoader(), 
           loading: (isFirstFetch) {        
            isLoading = true;
           return  (resultList.isEmpty)? const SimpleLoader():
                BodyWidgetWithView(
              resultList, 
              tab, 
              scrollListener: () => hasReachedMax ? getIt<PaginatedSearchCubit>().loadMoreResults(tab) : {},
              );
           }, 
           loaded: (tabMap, newMap) {
             var newMapList = newMap[tab];
              resultList = tabMap[tab] ?? [];
              if (newMapList != null) {
                hasReachedMax = newMapList.length >= defaultPageSize;
              }                  
            return BodyWidgetWithView(
              resultList, 
              tab, 
              scrollListener: () => hasReachedMax ? getIt<PaginatedSearchCubit>().loadMoreResults(tab) : {},
              );
            }
           );             
          }),
    );
}
}

