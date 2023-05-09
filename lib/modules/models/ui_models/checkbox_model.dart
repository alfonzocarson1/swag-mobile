import 'package:freezed_annotation/freezed_annotation.dart';
part 'checkbox_model.freezed.dart';

@freezed
class CheckboxModel with _$CheckboxModel {
  
  const factory CheckboxModel({
    required final String title,
    @Default(false) bool value
  }) = _CheckboxModel;


}