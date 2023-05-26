// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_notify_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileNotifyStatusModel _$$_ProfileNotifyStatusModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileNotifyStatusModel(
      notifyAvailabilityId: json['notifyAvailabilityId'] as String,
      profileIdForBeNotified: json['profileIdForBeNotified'] as String,
      catalogItemId: json['catalogItemId'] as String,
    );

Map<String, dynamic> _$$_ProfileNotifyStatusModelToJson(
        _$_ProfileNotifyStatusModel instance) =>
    <String, dynamic>{
      'notifyAvailabilityId': instance.notifyAvailabilityId,
      'profileIdForBeNotified': instance.profileIdForBeNotified,
      'catalogItemId': instance.catalogItemId,
    };
