// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailItemModel _$$_DetailItemModelFromJson(Map<String, dynamic> json) =>
    _$_DetailItemModel(
      catalogItemId: json['catalogItemId'] as String,
      catalogItemName: json['catalogItemName'] as String,
      catalogItemDescription: json['catalogItemDescription'] as String?,
      catalogItemDescriptionShort:
          json['catalogItemDescriptionShort'] as String?,
      catalogItemImage: json['catalogItemImage'] as String,
      catalogItemCollection: json['catalogItemCollection'] as String?,
      catalogItemCategoryId: json['catalogItemCategoryId'] as String?,
      released: json['released'] as String?,
      totalMade: json['totalMade'] as int?,
      retail: json['retail'] as String?,
      numberAvailable: json['numberAvailable'] as int?,
      rarityScore: json['rarityScore'] as String?,
      saleInfo: DetailSaleInfoModel.fromJson(
          json['saleInfo'] as Map<String, dynamic>),
      forSale: json['forSale'] as bool,
      inFavorites: json['inFavorites'] as bool,
      inCollection: json['inCollection'] as bool,
      profileFavoriteItemId: json['profileFavoriteItemId'] as String?,
      collectionItems: (json['collectionItems'] as List<dynamic>?)
          ?.map(
              (e) => DetailCollectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DetailItemModelToJson(_$_DetailItemModel instance) {
  final val = <String, dynamic>{
    'catalogItemId': instance.catalogItemId,
    'catalogItemName': instance.catalogItemName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('catalogItemDescription', instance.catalogItemDescription);
  writeNotNull(
      'catalogItemDescriptionShort', instance.catalogItemDescriptionShort);
  val['catalogItemImage'] = instance.catalogItemImage;
  writeNotNull('catalogItemCollection', instance.catalogItemCollection);
  writeNotNull('catalogItemCategoryId', instance.catalogItemCategoryId);
  writeNotNull('released', instance.released);
  writeNotNull('totalMade', instance.totalMade);
  writeNotNull('retail', instance.retail);
  writeNotNull('numberAvailable', instance.numberAvailable);
  writeNotNull('rarityScore', instance.rarityScore);
  val['saleInfo'] = instance.saleInfo;
  val['forSale'] = instance.forSale;
  val['inFavorites'] = instance.inFavorites;
  val['inCollection'] = instance.inCollection;
  writeNotNull('profileFavoriteItemId', instance.profileFavoriteItemId);
  writeNotNull('collectionItems', instance.collectionItems);
  return val;
}
