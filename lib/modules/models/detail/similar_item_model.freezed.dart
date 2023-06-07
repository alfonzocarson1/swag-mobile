// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'similar_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SimilarItemModel _$SimilarItemModelFromJson(Map<String, dynamic> json) {
  return _SimilarItemModel.fromJson(json);
}

/// @nodoc
mixin _$SimilarItemModel {
  String get catalogItemId => throw _privateConstructorUsedError;
  String get catalogItemImage => throw _privateConstructorUsedError;
  String get catalogItemName => throw _privateConstructorUsedError;
  String get retail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimilarItemModelCopyWith<SimilarItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarItemModelCopyWith<$Res> {
  factory $SimilarItemModelCopyWith(
          SimilarItemModel value, $Res Function(SimilarItemModel) then) =
      _$SimilarItemModelCopyWithImpl<$Res, SimilarItemModel>;
  @useResult
  $Res call(
      {String catalogItemId,
      String catalogItemImage,
      String catalogItemName,
      String retail});
}

/// @nodoc
class _$SimilarItemModelCopyWithImpl<$Res, $Val extends SimilarItemModel>
    implements $SimilarItemModelCopyWith<$Res> {
  _$SimilarItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogItemId = null,
    Object? catalogItemImage = null,
    Object? catalogItemName = null,
    Object? retail = null,
  }) {
    return _then(_value.copyWith(
      catalogItemId: null == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemImage: null == catalogItemImage
          ? _value.catalogItemImage
          : catalogItemImage // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemName: null == catalogItemName
          ? _value.catalogItemName
          : catalogItemName // ignore: cast_nullable_to_non_nullable
              as String,
      retail: null == retail
          ? _value.retail
          : retail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimilarItemModelCopyWith<$Res>
    implements $SimilarItemModelCopyWith<$Res> {
  factory _$$_SimilarItemModelCopyWith(
          _$_SimilarItemModel value, $Res Function(_$_SimilarItemModel) then) =
      __$$_SimilarItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String catalogItemId,
      String catalogItemImage,
      String catalogItemName,
      String retail});
}

/// @nodoc
class __$$_SimilarItemModelCopyWithImpl<$Res>
    extends _$SimilarItemModelCopyWithImpl<$Res, _$_SimilarItemModel>
    implements _$$_SimilarItemModelCopyWith<$Res> {
  __$$_SimilarItemModelCopyWithImpl(
      _$_SimilarItemModel _value, $Res Function(_$_SimilarItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogItemId = null,
    Object? catalogItemImage = null,
    Object? catalogItemName = null,
    Object? retail = null,
  }) {
    return _then(_$_SimilarItemModel(
      catalogItemId: null == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemImage: null == catalogItemImage
          ? _value.catalogItemImage
          : catalogItemImage // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemName: null == catalogItemName
          ? _value.catalogItemName
          : catalogItemName // ignore: cast_nullable_to_non_nullable
              as String,
      retail: null == retail
          ? _value.retail
          : retail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SimilarItemModel implements _SimilarItemModel {
  const _$_SimilarItemModel(
      {required this.catalogItemId,
      required this.catalogItemImage,
      required this.catalogItemName,
      required this.retail});

  factory _$_SimilarItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_SimilarItemModelFromJson(json);

  @override
  final String catalogItemId;
  @override
  final String catalogItemImage;
  @override
  final String catalogItemName;
  @override
  final String retail;

  @override
  String toString() {
    return 'SimilarItemModel(catalogItemId: $catalogItemId, catalogItemImage: $catalogItemImage, catalogItemName: $catalogItemName, retail: $retail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimilarItemModel &&
            (identical(other.catalogItemId, catalogItemId) ||
                other.catalogItemId == catalogItemId) &&
            (identical(other.catalogItemImage, catalogItemImage) ||
                other.catalogItemImage == catalogItemImage) &&
            (identical(other.catalogItemName, catalogItemName) ||
                other.catalogItemName == catalogItemName) &&
            (identical(other.retail, retail) || other.retail == retail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, catalogItemId, catalogItemImage, catalogItemName, retail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimilarItemModelCopyWith<_$_SimilarItemModel> get copyWith =>
      __$$_SimilarItemModelCopyWithImpl<_$_SimilarItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SimilarItemModelToJson(
      this,
    );
  }
}

abstract class _SimilarItemModel implements SimilarItemModel {
  const factory _SimilarItemModel(
      {required final String catalogItemId,
      required final String catalogItemImage,
      required final String catalogItemName,
      required final String retail}) = _$_SimilarItemModel;

  factory _SimilarItemModel.fromJson(Map<String, dynamic> json) =
      _$_SimilarItemModel.fromJson;

  @override
  String get catalogItemId;
  @override
  String get catalogItemImage;
  @override
  String get catalogItemName;
  @override
  String get retail;
  @override
  @JsonKey(ignore: true)
  _$$_SimilarItemModelCopyWith<_$_SimilarItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
