// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_buy_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatingBuyModelRequest _$$_RatingBuyModelRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RatingBuyModelRequest(
      productItemId: json['productItemId'] as String?,
      listingRating: json['listingRating'] as bool?,
      listingFeedbackMessage: json['listingFeedbackMessage'] as String?,
    );

Map<String, dynamic> _$$_RatingBuyModelRequestToJson(
    _$_RatingBuyModelRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productItemId', instance.productItemId);
  writeNotNull('listingRating', instance.listingRating);
  writeNotNull('listingFeedbackMessage', instance.listingFeedbackMessage);
  return val;
}
