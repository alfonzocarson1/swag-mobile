import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/cubits/saved_search/saved_searches_cubit.dart';
import 'package:swagapp/modules/models/search/search_request_payload_model.dart';
import 'package:swagapp/modules/pages/search/saved_searches/widgets/saved_search_item.dart';
import 'package:swagapp/modules/pages/search/search_result/search_result_page.dart';
import '../../../blocs/search_bloc.dart/search_bloc.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/saved_searches/saved_search.dart';

class SavedSearchesPage extends StatefulWidget {
  static const name = '/Alert';
  const SavedSearchesPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const SavedSearchesPage(),
      );

  @override
  State<SavedSearchesPage> createState() => _SavedSearchesPageState();
}


class _SavedSearchesPageState extends State<SavedSearchesPage> {
  late bool isAuthenticatedUser;


 
  String getSearchParam(String payLoadJson) {

    SearchRequestPayloadModel payloadModel = SearchRequestPayloadModel.fromJson(json.decode(payLoadJson));
    return payloadModel.searchParams?.first ?? '';
  }

  SearchRequestPayloadModel getSavedSearchWithFilters(String payLoadJson){
    return SearchRequestPayloadModel.fromJson(json.decode(payLoadJson));
  }
  
  @override
  Widget build(BuildContext context) {

    this.isAuthenticatedUser = getIt<PreferenceRepositoryService>().isLogged();
    List<String> list =getIt<PreferenceRepositoryService>().getRecentSearchesWithFilters();    
    
    return (this.isAuthenticatedUser) 
    ? BlocBuilder<SavedSearchesCubit, SavedSearchesState>(
      builder: (context, state){
        return state.when(
          loading:()=> Center(child: CircularProgressIndicator()), 
          loaded: (savedSearchResponse) => _SavedSearchBody(savedSearchList: savedSearchResponse), 
          error: (message)=> Center(
            child: Text(message),
          ));          
      })
    : Container();
  }  
  }

class _SavedSearchBody extends StatelessWidget {
  final List<SavedSearch> savedSearchList;

   const _SavedSearchBody({super.key,
   required this.savedSearchList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.only(top: 10),
          itemBuilder: (_, index) {
            var searchValues = savedSearchList[index].searchValues;
            return SavedSearchItem(searchParam: savedSearchList[index].searchName.toString(), searchFilters: searchValues!);
          }, 
          itemCount: savedSearchList.length,
        );
  }
}



