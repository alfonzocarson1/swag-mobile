import 'package:freezed_annotation/freezed_annotation.dart';

import 'addresses_payload_model.dart';

part 'update_profile_model.freezed.dart';
part 'update_profile_model.g.dart';

@freezed
class UpdateProfileModel with _$UpdateProfileModel {
  const factory UpdateProfileModel({
     final String? accountId,
     final String? username,
     final double? listingsRating,
     final String? phoneNumber,
     final String? email,
    List<AddressesPayloadModel>? addresses,
    final bool? hasActiveSubscription,
    final Status? status,
  }) = _UpdateProfileModel;

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileModelFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    final String? errorCode,
    final String? errorMessage
}) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) =>
      _$StatusFromJson(json);

}