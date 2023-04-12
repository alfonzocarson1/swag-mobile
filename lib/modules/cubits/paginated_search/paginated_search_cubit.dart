import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/constants/constants.dart';

import '../../common/utils/tab_wrapper.dart';
import '../../data/search_service/i_search_service.dart';
import '../../models/search/catalog_item_model.dart';
import '../../models/search/search_request_payload_model.dart';

part 'paginated_search_state.dart';
part 'paginated_search_cubit.freezed.dart';

class PaginatedSearchCubit extends Cubit<PaginatedSearchState> {
  final ISearchService2 tabSearchService;
  PaginatedSearchCubit(this.tabSearchService) : super(const PaginatedSearchState.initial());

  int page = 0;
  Map<SearchTab, List<CatalogItemModel>> oldMap = {};
  Map<SearchTab, List<CatalogItemModel>> newMap = {};
  late SearchTab currentTab;
  late SearchRequestPayloadModel model;
  
  Future<void> loadResults({required SearchTab searchTab, 
      required SearchRequestPayloadModel searchModel})async {
        currentTab = searchTab;
        model = searchModel;
    try{
      if(state is loading_search) return;
      emit(loading_search());
      
      oldMap = await tabSearchService.search(model: searchModel, tab: searchTab, page: page);
      List<CatalogItemModel>? lista = oldMap[currentTab];
      print(lista!.length.toString());
      final hasReachMax = lista!.length < defaultPageSize;
      emit(loaded_search(lista, hasReachMax));
    }
    catch(e){
      //TODO error handling
    }
  }

  Future<void> loadMoreResults()async {
    if(state is loaded_search){
      final currentState = state as loaded_search;
      page = (currentState.tabSearchList.length / defaultPageSize).ceil()+1;
      await loadResults(searchTab: currentTab, searchModel: model);
    }
  }
}
