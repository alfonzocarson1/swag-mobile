import 'package:flutter/material.dart';
import 'package:swagapp/modules/models/detail/detail_collection_model.dart';

class ListForSaleNavigatorParameters {
  final String catalogItemName;
  final DetailCollectionModel? collectionData;
  final VoidCallback? salesHistoryNavigation;
  final String? catalogImage;

  ListForSaleNavigatorParameters(
      {this.collectionData,
      this.salesHistoryNavigation,
      required this.catalogItemName,
      this.catalogImage});
}
