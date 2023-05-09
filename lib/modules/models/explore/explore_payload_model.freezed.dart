// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExploreRequestPayloadModel _$ExploreRequestPayloadModelFromJson(
    Map<String, dynamic> json) {
  return _ExploreRequestPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$ExploreRequestPayloadModel {
  dynamic get filters => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  bool? get whatsHotFlag => throw _privateConstructorUsedError;
  bool? get staffPicksFlag => throw _privateConstructorUsedError;
  bool? get unicornFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExploreRequestPayloadModelCopyWith<ExploreRequestPayloadModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreRequestPayloadModelCopyWith<$Res> {
  factory $ExploreRequestPayloadModelCopyWith(ExploreRequestPayloadModel value,
          $Res Function(ExploreRequestPayloadModel) then) =
      _$ExploreRequestPayloadModelCopyWithImpl<$Res,
          ExploreRequestPayloadModel>;
  @useResult
  $Res call(
      {dynamic filters,
      int? pageSize,
      String? categoryId,
      bool? whatsHotFlag,
      bool? staffPicksFlag,
      bool? unicornFlag});
}

/// @nodoc
class _$ExploreRequestPayloadModelCopyWithImpl<$Res,
        $Val extends ExploreRequestPayloadModel>
    implements $ExploreRequestPayloadModelCopyWith<$Res> {
  _$ExploreRequestPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = freezed,
    Object? pageSize = freezed,
    Object? categoryId = freezed,
    Object? whatsHotFlag = freezed,
    Object? staffPicksFlag = freezed,
    Object? unicornFlag = freezed,
  }) {
    return _then(_value.copyWith(
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsHotFlag: freezed == whatsHotFlag
          ? _value.whatsHotFlag
          : whatsHotFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      staffPicksFlag: freezed == staffPicksFlag
          ? _value.staffPicksFlag
          : staffPicksFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      unicornFlag: freezed == unicornFlag
          ? _value.unicornFlag
          : unicornFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExploreRequestPayloadModelCopyWith<$Res>
    implements $ExploreRequestPayloadModelCopyWith<$Res> {
  factory _$$_ExploreRequestPayloadModelCopyWith(
          _$_ExploreRequestPayloadModel value,
          $Res Function(_$_ExploreRequestPayloadModel) then) =
      __$$_ExploreRequestPayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic filters,
      int? pageSize,
      String? categoryId,
      bool? whatsHotFlag,
      bool? staffPicksFlag,
      bool? unicornFlag});
}

/// @nodoc
class __$$_ExploreRequestPayloadModelCopyWithImpl<$Res>
    extends _$ExploreRequestPayloadModelCopyWithImpl<$Res,
        _$_ExploreRequestPayloadModel>
    implements _$$_ExploreRequestPayloadModelCopyWith<$Res> {
  __$$_ExploreRequestPayloadModelCopyWithImpl(
      _$_ExploreRequestPayloadModel _value,
      $Res Function(_$_ExploreRequestPayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = freezed,
    Object? pageSize = freezed,
    Object? categoryId = freezed,
    Object? whatsHotFlag = freezed,
    Object? staffPicksFlag = freezed,
    Object? unicornFlag = freezed,
  }) {
    return _then(_$_ExploreRequestPayloadModel(
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsHotFlag: freezed == whatsHotFlag
          ? _value.whatsHotFlag
          : whatsHotFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      staffPicksFlag: freezed == staffPicksFlag
          ? _value.staffPicksFlag
          : staffPicksFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
      unicornFlag: freezed == unicornFlag
          ? _value.unicornFlag
          : unicornFlag // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_ExploreRequestPayloadModel implements _ExploreRequestPayloadModel {
  const _$_ExploreRequestPayloadModel(
      {this.filters = const {},
      this.pageSize = 8,
      this.categoryId = null,
      this.whatsHotFlag,
      this.staffPicksFlag,
      this.unicornFlag});

  factory _$_ExploreRequestPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExploreRequestPayloadModelFromJson(json);

  @override
  @JsonKey()
  final dynamic filters;
  @override
  @JsonKey()
  final int? pageSize;
  @override
  @JsonKey()
  final String? categoryId;
  @override
  final bool? whatsHotFlag;
  @override
  final bool? staffPicksFlag;
  @override
  final bool? unicornFlag;

  @override
  String toString() {
    return 'ExploreRequestPayloadModel(filters: $filters, pageSize: $pageSize, categoryId: $categoryId, whatsHotFlag: $whatsHotFlag, staffPicksFlag: $staffPicksFlag, unicornFlag: $unicornFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExploreRequestPayloadModel &&
            const DeepCollectionEquality().equals(other.filters, filters) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.whatsHotFlag, whatsHotFlag) ||
                other.whatsHotFlag == whatsHotFlag) &&
            (identical(other.staffPicksFlag, staffPicksFlag) ||
                other.staffPicksFlag == staffPicksFlag) &&
            (identical(other.unicornFlag, unicornFlag) ||
                other.unicornFlag == unicornFlag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filters),
      pageSize,
      categoryId,
      whatsHotFlag,
      staffPicksFlag,
      unicornFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExploreRequestPayloadModelCopyWith<_$_ExploreRequestPayloadModel>
      get copyWith => __$$_ExploreRequestPayloadModelCopyWithImpl<
          _$_ExploreRequestPayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExploreRequestPayloadModelToJson(
      this,
    );
  }
}

abstract class _ExploreRequestPayloadModel
    implements ExploreRequestPayloadModel {
  const factory _ExploreRequestPayloadModel(
      {final dynamic filters,
      final int? pageSize,
      final String? categoryId,
      final bool? whatsHotFlag,
      final bool? staffPicksFlag,
      final bool? unicornFlag}) = _$_ExploreRequestPayloadModel;

  factory _ExploreRequestPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_ExploreRequestPayloadModel.fromJson;

  @override
  dynamic get filters;
  @override
  int? get pageSize;
  @override
  String? get categoryId;
  @override
  bool? get whatsHotFlag;
  @override
  bool? get staffPicksFlag;
  @override
  bool? get unicornFlag;
  @override
  @JsonKey(ignore: true)
  _$$_ExploreRequestPayloadModelCopyWith<_$_ExploreRequestPayloadModel>
      get copyWith => throw _privateConstructorUsedError;
}
