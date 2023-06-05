// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_to_peer_payments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeerToPeerPaymentsModel _$$_PeerToPeerPaymentsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PeerToPeerPaymentsModel(
      venmoUser: json['venmoUser'] as String?,
      cashTag: json['cashTag'] as String?,
      payPalEmail: json['payPalEmail'] as String?,
    );

Map<String, dynamic> _$$_PeerToPeerPaymentsModelToJson(
    _$_PeerToPeerPaymentsModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('venmoUser', instance.venmoUser);
  writeNotNull('cashTag', instance.cashTag);
  writeNotNull('payPalEmail', instance.payPalEmail);
  return val;
}
