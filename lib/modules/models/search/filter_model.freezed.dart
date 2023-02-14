// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  int get sortBy => throw _privateConstructorUsedError;
  String get collections => throw _privateConstructorUsedError;
  String get conditions => throw _privateConstructorUsedError;
  List<String> get releaseYears => throw _privateConstructorUsedError;
  String get rarityScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call(
      {int sortBy,
      String collections,
      String conditions,
      List<String> releaseYears,
      String rarityScore});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
    Object? collections = null,
    Object? conditions = null,
    Object? releaseYears = null,
    Object? rarityScore = null,
  }) {
    return _then(_value.copyWith(
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as int,
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYears: null == releaseYears
          ? _value.releaseYears
          : releaseYears // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rarityScore: null == rarityScore
          ? _value.rarityScore
          : rarityScore // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterModelCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$_FilterModelCopyWith(
          _$_FilterModel value, $Res Function(_$_FilterModel) then) =
      __$$_FilterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sortBy,
      String collections,
      String conditions,
      List<String> releaseYears,
      String rarityScore});
}

/// @nodoc
class __$$_FilterModelCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$_FilterModel>
    implements _$$_FilterModelCopyWith<$Res> {
  __$$_FilterModelCopyWithImpl(
      _$_FilterModel _value, $Res Function(_$_FilterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
    Object? collections = null,
    Object? conditions = null,
    Object? releaseYears = null,
    Object? rarityScore = null,
  }) {
    return _then(_$_FilterModel(
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as int,
      collections: null == collections
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as String,
      releaseYears: null == releaseYears
          ? _value._releaseYears
          : releaseYears // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rarityScore: null == rarityScore
          ? _value.rarityScore
          : rarityScore // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_FilterModel implements _FilterModel {
  const _$_FilterModel(
      {this.sortBy = 0,
      this.collections = defaultString,
      this.conditions = defaultString,
      final List<String> releaseYears = const [],
      this.rarityScore = defaultString})
      : _releaseYears = releaseYears;

  factory _$_FilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_FilterModelFromJson(json);

  @override
  @JsonKey()
  final int sortBy;
  @override
  @JsonKey()
  final String collections;
  @override
  @JsonKey()
  final String conditions;
  final List<String> _releaseYears;
  @override
  @JsonKey()
  List<String> get releaseYears {
    if (_releaseYears is EqualUnmodifiableListView) return _releaseYears;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releaseYears);
  }

  @override
  @JsonKey()
  final String rarityScore;

  @override
  String toString() {
    return 'FilterModel(sortBy: $sortBy, collections: $collections, conditions: $conditions, releaseYears: $releaseYears, rarityScore: $rarityScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterModel &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.collections, collections) ||
                other.collections == collections) &&
            (identical(other.conditions, conditions) ||
                other.conditions == conditions) &&
            const DeepCollectionEquality()
                .equals(other._releaseYears, _releaseYears) &&
            (identical(other.rarityScore, rarityScore) ||
                other.rarityScore == rarityScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sortBy, collections, conditions,
      const DeepCollectionEquality().hash(_releaseYears), rarityScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterModelCopyWith<_$_FilterModel> get copyWith =>
      __$$_FilterModelCopyWithImpl<_$_FilterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterModelToJson(
      this,
    );
  }
}

abstract class _FilterModel implements FilterModel {
  const factory _FilterModel(
      {final int sortBy,
      final String collections,
      final String conditions,
      final List<String> releaseYears,
      final String rarityScore}) = _$_FilterModel;

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$_FilterModel.fromJson;

  @override
  int get sortBy;
  @override
  String get collections;
  @override
  String get conditions;
  @override
  List<String> get releaseYears;
  @override
  String get rarityScore;
  @override
  @JsonKey(ignore: true)
  _$$_FilterModelCopyWith<_$_FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
