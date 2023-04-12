import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/category_model.dart';

enum SearchTab { whatsHot, headcovers, putters, accessories, all }

class SearchTabWrapper {
  final SearchTab type;

  SearchTabWrapper(this.type);

  Future<String?> toStringCustom() async {
    
    List<CategoryModel> categories =  await getIt<PreferenceRepositoryService>().getLastCategories();

    switch (type) {
      case SearchTab.whatsHot: return categories[0].catalogCategoryId;
      case SearchTab.headcovers: return categories[1].catalogCategoryId;
      case SearchTab.putters: return categories[2].catalogCategoryId;
      case SearchTab.accessories: return categories[3].catalogCategoryId;
      case SearchTab.all: return null;
    }
  }
}