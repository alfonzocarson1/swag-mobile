import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_code_model.freezed.dart';
part 'forgot_password_code_model.g.dart';

@freezed
class ForgotPasswordCodeModel with _$ForgotPasswordCodeModel {
  @JsonSerializable()
  const factory ForgotPasswordCodeModel({
    required final String statusCode,
    required final String statusMessage,
  }) = _ForgotPasswordCodeModel;

  factory ForgotPasswordCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordCodeModelFromJson(json);
}
