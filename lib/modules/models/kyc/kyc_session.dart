import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_session.freezed.dart';
part 'kyc_session.g.dart';

@freezed
class KycSession with _$KycSession {
  const factory KycSession({
    required String? sessionUrl,
  }) = _KycSession;

  factory KycSession.fromJson(Map<String, dynamic> json) =>
      _$KycSessionFromJson(json);
}
