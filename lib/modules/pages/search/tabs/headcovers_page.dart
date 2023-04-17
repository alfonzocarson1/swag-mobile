import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/constants/constants.dart';
import '../../../common/ui/body_widget_with_view.dart';
import '../../../common/ui/simple_loader.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:swagapp/modules/common/ui/loading.dart';

import '../../../common/utils/tab_wrapper.dart';
import '../../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/search/catalog_item_model.dart';
import '../../../models/search/filter_model.dart';
import '../../../models/search/search_request_payload_model.dart';

class HeadcoversPage extends StatefulWidget {
  static const name = '/Headcovers';
  const HeadcoversPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const HeadcoversPage(),
      );

  @override
  State<HeadcoversPage> createState() => _HeadcoversPageState();
}

class _HeadcoversPageState extends State<HeadcoversPage> {
  SearchTab tab = SearchTab.headcovers;    
  String categoryId= "";
  bool isLoading = false;
  Map<SearchTab, List<CatalogItemModel>> resultMap = { };
  List<CatalogItemModel> resultList=[];
  bool hasReachedMax=false;
  

  @override
  void initState() {
    super.initState();
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    bool isLoggedAfterGuest = getIt<PreferenceRepositoryService>().loginAfterGuest();
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
        categoryId: await getTabId(),
        filters: FilterModel(
              productType: tab != SearchTab.headcovers
                ? [categoryId]
                : null,
            ),
            ), 
        searchTab: tab );
  }

  @override
  Widget build(BuildContext context) {

    callApi();
    return Scaffold(
        backgroundColor: Palette.current.primaryNero,
        body: BlocBuilder<PaginatedSearchCubit, PaginatedSearchState>(
          builder: (context, state){          
           return state.when
           (
           initial: () => const SimpleLoader(), 
           loading: (isFirstFetch) {

            isLoading = true;
            if(isFirstFetch){
             return const SimpleLoader();
            }
             return BodyWidgetWithView(
              resultList, 
              tab, 
              scrollListener: () => hasReachedMax ? getIt<PaginatedSearchCubit>().loadMoreResults() : {},
              );            
           }, 
           loaded: (tabMap, newMap) {
         
            var newMapList = newMap[tab];
            resultList = tabMap[tab] ?? [];
            if(newMapList != null){            
             hasReachedMax = newMapList.length >= defaultPageSize; 
            }  
                             
            return BodyWidgetWithView(
              resultList, 
              tab, 
              scrollListener: () => hasReachedMax ? getIt<PaginatedSearchCubit>().loadMoreResults() : {},
              );
            }
           );             
          }),
    );
}
}
