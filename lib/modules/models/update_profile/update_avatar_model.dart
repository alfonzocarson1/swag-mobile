import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_avatar_model.freezed.dart';
part 'update_avatar_model.g.dart';

@freezed
class UpdateAvatarModel with _$UpdateAvatarModel {
  const factory UpdateAvatarModel({
    required final String imageUrl,
    required final String errorCode,
  }) = _UpdateAvatarModel;

  factory UpdateAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateAvatarModelFromJson(json);
}
