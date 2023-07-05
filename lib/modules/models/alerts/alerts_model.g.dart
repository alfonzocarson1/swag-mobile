// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alerts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlertModel _$$_AlertModelFromJson(Map<String, dynamic> json) =>
    _$_AlertModel(
      notificationAlertId: json['notificationAlertId'] as String?,
      notificationAlertTitle: json['notificationAlertTitle'] as String?,
      notificationAlertBody: json['notificationAlertBody'] as String?,
      typeNotification: json['typeNotification'] as String?,
      read: json['read'] as bool,
      payload: json['payload'] == null
          ? null
          : AlertPayloadModel.fromJson(json['payload'] as Map<String, dynamic>),
      timeStamp: json['timeStamp'] as String?,
    );

Map<String, dynamic> _$$_AlertModelToJson(_$_AlertModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('notificationAlertId', instance.notificationAlertId);
  writeNotNull('notificationAlertTitle', instance.notificationAlertTitle);
  writeNotNull('notificationAlertBody', instance.notificationAlertBody);
  writeNotNull('typeNotification', instance.typeNotification);
  val['read'] = instance.read;
  writeNotNull('payload', instance.payload);
  writeNotNull('timeStamp', instance.timeStamp);
  return val;
}
