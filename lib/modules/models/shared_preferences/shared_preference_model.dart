import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/constants/constants.dart';

part 'shared_preference_model.freezed.dart';
part 'shared_preference_model.g.dart';

@freezed
class SharedPreferenceModel with _$SharedPreferenceModel {
@JsonSerializable()

  const factory SharedPreferenceModel({
    @Default(true) final bool isListView,
    @Default(false) final bool isForSale,
    @Default(defaultInt) final int sortBy,
    @Default([]) final List<int> condition,
    @Default([]) final List<int> price,
    @Default([]) final List<int> releaseDate,
    @Default([]) final List<int> product,
    @Default([]) final List<String> collection,
    @Default([]) final List<String> theme,
    @Default([]) final List<String> type,
    @Default(defaultInt) final int filtersAndSortsSelected,
  }) = _SharedPreferenceModel;

  factory SharedPreferenceModel.fromJson(Map<String, dynamic> json) =>
      _$SharedPreferenceModelFromJson(json);
}
