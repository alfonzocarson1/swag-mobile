import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/search/category_list_model.dart';
import 'i_category_service.dart';

class CategoryService extends ICategoryService {
  CategoryService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<CategoryListModel> catalogCategories() async {
    CategoryListModel response = await apiService.getEndpointData(
        endpoint: Endpoint.catalogCategories,
        method: RequestMethod.get,
        jsonKey: 'categoryList',
        fromJson: (json) => CategoryListModel.fromJson(json));
    return response;
  }
}
