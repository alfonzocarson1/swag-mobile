import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy_for_sale_listing_model.freezed.dart';
part 'buy_for_sale_listing_model.g.dart';

@freezed
class BuyForSaleListingModel with _$BuyForSaleListingModel {
@JsonSerializable()
  const factory BuyForSaleListingModel({
    final String? productItemId,
    final String? productItemName,
    final double? productItemPrice,
    required final List<dynamic> productItemImageUrls,
    final String? productItemDescription,
    final String? condition,
    final String? profileId,
    final String? catalogItemId,
    final String? profileCollectionItemId,
    final double? lastSale,
    final bool? forSale,
    final bool? sold,
    final bool? isDeleted,
    final String? status,
  }) = _BuyForSaleListingModel;

  factory BuyForSaleListingModel.fromJson(Map<String, dynamic> json) =>
      _$BuyForSaleListingModelFromJson(json);
}
