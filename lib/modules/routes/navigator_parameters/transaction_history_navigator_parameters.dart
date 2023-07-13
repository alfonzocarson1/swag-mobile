
import 'package:swagapp/modules/models/detail/detail_sale_info_model.dart';
import 'package:swagapp/modules/models/detail/sale_history_model.dart';

class TransactionHistoryNavigatorParameters {

  final String urlImage;
  final String? catalogItemName;
  final DetailSaleInfoModel lastSale;
  final List<SalesHistoryModel> saleHIstoryList;
  final bool sale;
  final int? available;
  final bool favorite;
  final String itemId;
  final Function(bool) addFavorite;

  TransactionHistoryNavigatorParameters({
    this.catalogItemName, 
    this.available, 
    required this.sale, 
    required this.lastSale, 
    required this.urlImage, 
    required this.saleHIstoryList, 
    required this.favorite, 
    required this.addFavorite,
    required this.itemId, 
  });
}

