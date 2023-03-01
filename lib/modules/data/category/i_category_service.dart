import '../../models/search/category_list_model.dart';

abstract class ICategoryService {
  Stream<String?> subscribeToAuthChanges();
  Future<CategoryListModel> catalogCategories();
}
