import 'package:freezed_annotation/freezed_annotation.dart';

part 'peer_to_peer_payments_status_model.freezed.dart';
part 'peer_to_peer_payments_status_model.g.dart';

@freezed
class PeerToPeerPaymentsStatusModel with _$PeerToPeerPaymentsStatusModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(includeIfNull: false)
  const factory PeerToPeerPaymentsStatusModel({
    final String? errorMessage,
  }) = _PeerToPeerPaymentsStatusModel;

  factory PeerToPeerPaymentsStatusModel.fromJson(Map<String, dynamic> json) =>
      _$PeerToPeerPaymentsStatusModelFromJson(json);
}
