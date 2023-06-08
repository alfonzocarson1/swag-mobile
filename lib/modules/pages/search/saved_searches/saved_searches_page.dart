import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:swagapp/modules/cubits/saved_search/saved_searches_cubit.dart';
import 'package:swagapp/modules/models/saved_searches/search_values.dart';
import 'package:swagapp/modules/pages/search/saved_searches/widgets/saved_search_item.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../cubits/saved_search/saved_searches_state.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/saved_searches/saved_search.dart';

class SavedSearchesPage extends StatefulWidget {
  static const name = '/SavedSearchPage';
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

  @override
  Widget build(BuildContext context) {   
    
    getIt<SavedSearchesCubit>().loadSearches();
    this.isAuthenticatedUser = getIt<PreferenceRepositoryService>().isLogged();
    
    return (this.isAuthenticatedUser) 
    ? BlocBuilder<SavedSearchesCubit, SavedSearchesState>(
      builder: (context, state){
        return state.when(
          loading:()=> const SimpleLoader(), 
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
            searchValues ??= const SearchValues(
                forSale: false,
                collection: null,
                productType: null,
                priceRanges: null,
                sortBy: null,
                type: null,
                theme: null,
                conditions: null,
                releaseYears: null,              

              );  
            return SavedSearchItem(index:index, searchParam: savedSearchList[index].searchName.toString(), searchFilters: searchValues);
          }, 
          itemCount: savedSearchList.length,
        );
  }
}




