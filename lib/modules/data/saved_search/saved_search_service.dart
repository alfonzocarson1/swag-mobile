import 'package:flutter/material.dart';
import 'package:swagapp/modules/data/saved_search/i_saved_search_service.dart';
import 'package:swagapp/modules/models/saved_searches/saved_search.dart';

import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../common/utils/utils.dart';
import '../../di/injector.dart';
import '../../models/saved_searches/saved_search_result.dart';
import '../secure_storage/storage_repository_service.dart';
import '../shared_preferences/shared_preferences_service.dart';

class SavedSearchService implements ISavedSearchService {
  SavedSearchService(this.apiService);

  final APIService apiService;  
  
  @override
  Future<List<SavedSearch>> getSavedSearchs() async {
    
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    String? token = await getIt<StorageRepositoryService>().getToken();
    //String token2 = "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIzYTY3Yzc3NC02YmU3LTRlNmItODg2ZS1iZTIyYjBkYjZhMzkiLCJpYXQiOjE2Nzk5NDM3NTQsImV4cCI6MTY4MDk2NDE0Nn0.7ghnHGLRPVnZ5rm-Ih_07ULYTgQOZxFbnEzk1-ePxPE";
    bool isAuthenticatedUser = isLogged && isTokenValid(token);

    final response = await apiService.getEndpointData(
      endpoint: Endpoint.savedSearches,
      method: RequestMethod.get,
      jsonKey: "savedSearchResult",
      needBearer: isAuthenticatedUser,
      fromJson: (json) => SavedSearchResult.fromJson(json),
    );
    List<SavedSearch> searchesList= response.savedSearchResult;

    return searchesList;    
  }
  
  @override
  Future saveSearch(SavedSearch search) async {
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    String? token = await getIt<StorageRepositoryService>().getToken();
    bool isAuthenticatedUser = isLogged && isTokenValid(token);


     try {
       await apiService.getEndpointData(
        endpoint: Endpoint.savedSearches,
        method: RequestMethod.post,
        body: search.toJson(),
        needBearer: isAuthenticatedUser,
      );
     }
     catch(e){
      debugPrint(e.toString());
     }   
  }
  
  @override
  Future deleteSearch(String searchId) async {

    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    String? token = await getIt<StorageRepositoryService>().getToken();
    bool isAuthenticatedUser = isLogged && isTokenValid(token);

    try {
      await apiService.getEndpointData(
      endpoint: Endpoint.deleteSearch,
      method: RequestMethod.put,
      needBearer: isAuthenticatedUser,
      dynamicParam: searchId
    );
     }
     catch(e){
      debugPrint(e.toString());
     }   
  }
  
}