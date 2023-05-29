import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/notify_when_available/profile_notify_status.dart';

part 'profile_notify_list.freezed.dart';
part 'profile_notify_list.g.dart';

@freezed
class ProfileNotifyList with _$ProfileNotifyList{
    @JsonSerializable()
  const factory ProfileNotifyList({
    required List<ProfileNotifyStatusModel> profileNotificationList,
  }) = _ProfileNotifyList;
  
  factory ProfileNotifyList.fromJson(Map<String, dynamic> json) => _$ProfileNotifyListFromJson(json);
}