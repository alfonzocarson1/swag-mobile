import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_buy_request_model.freezed.dart';
part 'rating_buy_request_model.g.dart';

@freezed
class RatingBuyModelRequest with _$RatingBuyModelRequest {
  @JsonSerializable(includeIfNull: false)
  const factory RatingBuyModelRequest(
      {final String? productItemId,
      final bool? listingRating,
      final String? listingFeedbackMessage}) = _RatingBuyModelRequest;

  factory RatingBuyModelRequest.fromJson(Map<String, dynamic> json) =>
      _$RatingBuyModelRequestFromJson(json);
}
