import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_response_model.freezed.dart';
part 'change_password_response_model.g.dart';

@freezed
@JsonSerializable()
class ChangePasswordResponseModel with _$ChangePasswordResponseModel {
  const factory ChangePasswordResponseModel({required final String token}) =
      _ChangePasswordResponseModel;

  factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseModelFromJson(json);
}
