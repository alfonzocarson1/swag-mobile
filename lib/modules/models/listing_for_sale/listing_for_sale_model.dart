import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_for_sale_model.freezed.dart';
part 'listing_for_sale_model.g.dart';

@freezed
class ListingForSaleModel with _$ListingForSaleModel {
  @JsonSerializable(includeIfNull: false)
  const factory ListingForSaleModel({
    final String? productItemId,
    final String? productItemName,
    final double? productItemPrice,
    final String? productItemImageUrls,
    final String? productItemDescription,
    final String? condition,
    final String? listingItemsAction,
    final String? profileId,
    final String? catalogItemId,
    final double? lastSale,
    final String? forSale,
    final String? sold,
    final String? isDeleted,
  }) = _ListingForSaleModel;

  factory ListingForSaleModel.fromJson(Map<String, dynamic> json) =>
      _$ListingForSaleModelFromJson(json);
}
