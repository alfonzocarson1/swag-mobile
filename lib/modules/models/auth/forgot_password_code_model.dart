import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_code_model.freezed.dart';
part 'forgot_password_code_model.g.dart';

@freezed
class ForgotPasswordCodeModel with _$ForgotPasswordCodeModel {
@JsonSerializable(includeIfNull: false)
  const factory ForgotPasswordCodeModel(
      {final String? statusCode,
      final String? statusMessage,
      final bool? response}) = _ForgotPasswordCodeModel;

  factory ForgotPasswordCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordCodeModelFromJson(json);
}
