import 'package:bloc/bloc.dart';
import 'package:swagapp/modules/cubits/saved_search/saved_searches_state.dart';
import '../../data/saved_search/i_saved_search_service.dart';
import '../../models/saved_searches/saved_search.dart';



class SavedSearchesCubit extends Cubit<SavedSearchesState> {
  final ISavedSearchService savedSearchService;
  
  SavedSearchesCubit(this.savedSearchService) : super(const SavedSearchesState.loading()){
    loadSearches();
  }


  Future<void> loadSearches() async {
    emit(const SavedSearchesState.loading());
    try{
      List<SavedSearch> savedSearchResponse = await savedSearchService.getSavedSearchs();     
      emit(SavedSearchesState.loaded(savedSearchResponse.reversed.toList()));
    }
    catch(e){
      emit(SavedSearchesState.error("Failed to fetch data: $e"));
    }    
  }

    void removeSearch(int index) async {   
    state.when(
      loading: (){}, 
      loaded: (savedSearchList) async{
        String searchToDelete = savedSearchList[index].searchId.toString();
        List<SavedSearch> updatedList = List.from(savedSearchList)..removeAt(index);
        emit( SavedSearchesState.loaded(updatedList));

        await savedSearchService.deleteSearch(searchToDelete);
    }, 
    error: (errorMessage) => errorMessage);
  }



}
