// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_preference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SharedPreferenceModel _$SharedPreferenceModelFromJson(
    Map<String, dynamic> json) {
  return _SharedPreferenceModel.fromJson(json);
}

/// @nodoc
mixin _$SharedPreferenceModel {
  bool get isListView => throw _privateConstructorUsedError;
  bool get isForSale => throw _privateConstructorUsedError;
  int get sortBy => throw _privateConstructorUsedError;
  int get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SharedPreferenceModelCopyWith<SharedPreferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPreferenceModelCopyWith<$Res> {
  factory $SharedPreferenceModelCopyWith(SharedPreferenceModel value,
          $Res Function(SharedPreferenceModel) then) =
      _$SharedPreferenceModelCopyWithImpl<$Res, SharedPreferenceModel>;
  @useResult
  $Res call({bool isListView, bool isForSale, int sortBy, int condition});
}

/// @nodoc
class _$SharedPreferenceModelCopyWithImpl<$Res,
        $Val extends SharedPreferenceModel>
    implements $SharedPreferenceModelCopyWith<$Res> {
  _$SharedPreferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
    Object? isForSale = null,
    Object? sortBy = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      isListView: null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
      isForSale: null == isForSale
          ? _value.isForSale
          : isForSale // ignore: cast_nullable_to_non_nullable
              as bool,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SharedPreferenceModelCopyWith<$Res>
    implements $SharedPreferenceModelCopyWith<$Res> {
  factory _$$_SharedPreferenceModelCopyWith(_$_SharedPreferenceModel value,
          $Res Function(_$_SharedPreferenceModel) then) =
      __$$_SharedPreferenceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isListView, bool isForSale, int sortBy, int condition});
}

/// @nodoc
class __$$_SharedPreferenceModelCopyWithImpl<$Res>
    extends _$SharedPreferenceModelCopyWithImpl<$Res, _$_SharedPreferenceModel>
    implements _$$_SharedPreferenceModelCopyWith<$Res> {
  __$$_SharedPreferenceModelCopyWithImpl(_$_SharedPreferenceModel _value,
      $Res Function(_$_SharedPreferenceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
    Object? isForSale = null,
    Object? sortBy = null,
    Object? condition = null,
  }) {
    return _then(_$_SharedPreferenceModel(
      isListView: null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
      isForSale: null == isForSale
          ? _value.isForSale
          : isForSale // ignore: cast_nullable_to_non_nullable
              as bool,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SharedPreferenceModel implements _SharedPreferenceModel {
  const _$_SharedPreferenceModel(
      {this.isListView = true,
      this.isForSale = false,
      this.sortBy = defaultInt,
      this.condition = defaultInt});

  factory _$_SharedPreferenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_SharedPreferenceModelFromJson(json);

  @override
  @JsonKey()
  final bool isListView;
  @override
  @JsonKey()
  final bool isForSale;
  @override
  @JsonKey()
  final int sortBy;
  @override
  @JsonKey()
  final int condition;

  @override
  String toString() {
    return 'SharedPreferenceModel(isListView: $isListView, isForSale: $isForSale, sortBy: $sortBy, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedPreferenceModel &&
            (identical(other.isListView, isListView) ||
                other.isListView == isListView) &&
            (identical(other.isForSale, isForSale) ||
                other.isForSale == isForSale) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isListView, isForSale, sortBy, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SharedPreferenceModelCopyWith<_$_SharedPreferenceModel> get copyWith =>
      __$$_SharedPreferenceModelCopyWithImpl<_$_SharedPreferenceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SharedPreferenceModelToJson(
      this,
    );
  }
}

abstract class _SharedPreferenceModel implements SharedPreferenceModel {
  const factory _SharedPreferenceModel(
      {final bool isListView,
      final bool isForSale,
      final int sortBy,
      final int condition}) = _$_SharedPreferenceModel;

  factory _SharedPreferenceModel.fromJson(Map<String, dynamic> json) =
      _$_SharedPreferenceModel.fromJson;

  @override
  bool get isListView;
  @override
  bool get isForSale;
  @override
  int get sortBy;
  @override
  int get condition;
  @override
  @JsonKey(ignore: true)
  _$$_SharedPreferenceModelCopyWith<_$_SharedPreferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
