// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_to_peer_payments_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeerToPeerPaymentsGetModel _$$_PeerToPeerPaymentsGetModelFromJson(
        Map<String, dynamic> json) =>
    _$_PeerToPeerPaymentsGetModel(
      accountId: json['accountId'] as String?,
      peerToPeerPayments: json['peerToPeerPayments'] == null
          ? null
          : PeerToPeerPaymentsModel.fromJson(
              json['peerToPeerPayments'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : PeerToPeerPaymentsStatusModel.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PeerToPeerPaymentsGetModelToJson(
    _$_PeerToPeerPaymentsGetModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('peerToPeerPayments', instance.peerToPeerPayments);
  writeNotNull('status', instance.status);
  return val;
}
