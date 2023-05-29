// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_notify_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileNotifyList _$$_ProfileNotifyListFromJson(Map<String, dynamic> json) =>
    _$_ProfileNotifyList(
      profileNotificationList:
          (json['profileNotificationList'] as List<dynamic>)
              .map((e) =>
                  ProfileNotifyStatusModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_ProfileNotifyListToJson(
        _$_ProfileNotifyList instance) =>
    <String, dynamic>{
      'profileNotificationList': instance.profileNotificationList,
    };
