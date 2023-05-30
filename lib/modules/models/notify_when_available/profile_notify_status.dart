import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_notify_status.freezed.dart';
part 'profile_notify_status.g.dart';

@freezed
class ProfileNotifyStatusModel with _$ProfileNotifyStatusModel{
    @JsonSerializable()
  const factory ProfileNotifyStatusModel({
    required final String notifyAvailabilityId,
    required final String profileIdForBeNotified, 
    required final String catalogItemId,  
  }) = _ProfileNotifyStatusModel;

  factory ProfileNotifyStatusModel.fromJson(Map<String, dynamic> json) => _$ProfileNotifyStatusModelFromJson(json);
}

