import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/pages/search/filter/filter_category_page.dart';

import '../../data/saved_search/i_saved_search_service.dart';
import '../../models/saved_searches/saved_search.dart';

part 'saved_searches_state.dart';
part 'saved_searches_cubit.freezed.dart';

class SavedSearchesCubit extends Cubit<SavedSearchesState> {
  final ISavedSearchService savedSearchService;
  
  SavedSearchesCubit(this.savedSearchService) : super(const SavedSearchesState.loading()){
    loadSearches();
  }

  Future<void> loadSearches() async {
    emit(const SavedSearchesState.loading());
    try{
      final List<SavedSearch> savedSearchResponse = await savedSearchService.getSavedSearchs();
      emit(SavedSearchesState.loaded(savedSearchResponse));
    }
    catch(e){
      emit(SavedSearchesState.error("Failed to fetch data: $e"));
    }
    
  }

}
