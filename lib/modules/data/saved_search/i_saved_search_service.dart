
import 'package:swagapp/modules/models/saved_searches/saved_search.dart';

abstract class ISavedSearchService {

  Future<List<SavedSearch>> getSavedSearchs();
  Future saveSearch(SavedSearch search);
  Future deleteSearch(String searchId);

}