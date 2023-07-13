
import 'dart:io';

class ListItemPreviewNavigatorParameters {

  final List<File> imgList;
  final bool isUpdate;
  final String itemName;
  final double itemPrice;
  final String itemCondition;
  final String itemDescription;
  final String profileCollectionItemId;
  final String catalogItemId;
  final String? productItemId;
  final String? profileId;
  final List<String>? imgUrls;
  final List<String> paymentAccepted;
  final Function() onClose;

  ListItemPreviewNavigatorParameters({
    required this.imgList, 
    required this.isUpdate, 
    required this.itemName, 
    required this.itemPrice, 
    required this.itemCondition, 
    required this.itemDescription, 
    required this.profileCollectionItemId, 
    required this.catalogItemId, 
    required this.paymentAccepted, 
    required this.onClose,
    this.productItemId, 
    this.profileId, 
    this.imgUrls, 
  });
}


