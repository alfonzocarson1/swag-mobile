import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/constants/constants.dart';

import '../update_profile/addresses_payload_model.dart';

part 'create_account_response_model.freezed.dart';
part 'create_account_response_model.g.dart';

@freezed
class CreateAccountResponseModel with _$CreateAccountResponseModel {

  const factory CreateAccountResponseModel({
    @Default(defaultString) final String errorCode,
    @Default(defaultString) final String errorMessage,
    @Default(defaultString) final String token,
    @Default(defaultString) final String accountId,
    @Default(false) final bool hasImportableData,
    @Default([]) final List<AddressesPayloadModel>? addresses,
  }) = _CreateAccountResponseModel;

  factory CreateAccountResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountResponseModelFromJson(json);
}
