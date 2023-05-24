// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_to_peer_payments_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeerToPeerPaymentsStatusModel _$$_PeerToPeerPaymentsStatusModelFromJson(
        Map<String, dynamic> json) =>
    _$_PeerToPeerPaymentsStatusModel(
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_PeerToPeerPaymentsStatusModelToJson(
    _$_PeerToPeerPaymentsStatusModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errorMessage', instance.errorMessage);
  return val;
}
