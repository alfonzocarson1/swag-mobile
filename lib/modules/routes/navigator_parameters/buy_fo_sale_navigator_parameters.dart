
import 'package:swagapp/modules/models/detail/detail_sale_info_model.dart';
import 'package:swagapp/modules/models/detail/sale_history_model.dart';

class BuyForSaleNavigatorParameters {

  final String catalogItemId;
  final String catalogItemName;
  final DetailSaleInfoModel catalogItemPrice;
  final String urlImage;
  final bool favorite;
  final bool sale;
  final int? available;
  final Function(bool) addFavorite;
  final List<SalesHistoryModel> saleHistoryList;

  BuyForSaleNavigatorParameters({
    this.available, 
    required this.catalogItemPrice, 
    required this.catalogItemId, 
    required this.catalogItemName, 
    required this.urlImage, 
    required this.favorite, 
    required this.sale, 
    required this.addFavorite, 
    required this.saleHistoryList,
  });
}

