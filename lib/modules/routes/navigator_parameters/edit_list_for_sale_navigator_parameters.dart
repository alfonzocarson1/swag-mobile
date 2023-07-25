import 'package:swagapp/modules/models/detail/detail_collection_model.dart';
import 'package:swagapp/modules/models/detail/sale_list_history_model.dart';

class EditListForSaleNavigatorParameters {
  final DetailCollectionModel? collectionData;
  final String? productItemId;
  final String catalogItemName;
  final List<dynamic>? imageUrls;
  final SalesHistoryListModel salesHistoryListModel;
  final List<String> paymentAccepted;

  EditListForSaleNavigatorParameters({
    this.imageUrls,
    this.collectionData,
    this.productItemId,
    required this.catalogItemName,
    required this.salesHistoryListModel,
    required this.paymentAccepted,
  });
}
