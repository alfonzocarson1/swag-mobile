// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_attribute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailAttributeModel _$DetailAttributeModelFromJson(Map<String, dynamic> json) {
  return _DetailAttributeModel.fromJson(json);
}

/// @nodoc
mixin _$DetailAttributeModel {
  String get catalogItemColor => throw _privateConstructorUsedError;
  String get catalogItemLimit => throw _privateConstructorUsedError;
  String get catalogItemIncludes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailAttributeModelCopyWith<DetailAttributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailAttributeModelCopyWith<$Res> {
  factory $DetailAttributeModelCopyWith(DetailAttributeModel value,
          $Res Function(DetailAttributeModel) then) =
      _$DetailAttributeModelCopyWithImpl<$Res, DetailAttributeModel>;
  @useResult
  $Res call(
      {String catalogItemColor,
      String catalogItemLimit,
      String catalogItemIncludes});
}

/// @nodoc
class _$DetailAttributeModelCopyWithImpl<$Res,
        $Val extends DetailAttributeModel>
    implements $DetailAttributeModelCopyWith<$Res> {
  _$DetailAttributeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogItemColor = null,
    Object? catalogItemLimit = null,
    Object? catalogItemIncludes = null,
  }) {
    return _then(_value.copyWith(
      catalogItemColor: null == catalogItemColor
          ? _value.catalogItemColor
          : catalogItemColor // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemLimit: null == catalogItemLimit
          ? _value.catalogItemLimit
          : catalogItemLimit // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemIncludes: null == catalogItemIncludes
          ? _value.catalogItemIncludes
          : catalogItemIncludes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailAttributeModelCopyWith<$Res>
    implements $DetailAttributeModelCopyWith<$Res> {
  factory _$$_DetailAttributeModelCopyWith(_$_DetailAttributeModel value,
          $Res Function(_$_DetailAttributeModel) then) =
      __$$_DetailAttributeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String catalogItemColor,
      String catalogItemLimit,
      String catalogItemIncludes});
}

/// @nodoc
class __$$_DetailAttributeModelCopyWithImpl<$Res>
    extends _$DetailAttributeModelCopyWithImpl<$Res, _$_DetailAttributeModel>
    implements _$$_DetailAttributeModelCopyWith<$Res> {
  __$$_DetailAttributeModelCopyWithImpl(_$_DetailAttributeModel _value,
      $Res Function(_$_DetailAttributeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogItemColor = null,
    Object? catalogItemLimit = null,
    Object? catalogItemIncludes = null,
  }) {
    return _then(_$_DetailAttributeModel(
      catalogItemColor: null == catalogItemColor
          ? _value.catalogItemColor
          : catalogItemColor // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemLimit: null == catalogItemLimit
          ? _value.catalogItemLimit
          : catalogItemLimit // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemIncludes: null == catalogItemIncludes
          ? _value.catalogItemIncludes
          : catalogItemIncludes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_DetailAttributeModel implements _DetailAttributeModel {
  const _$_DetailAttributeModel(
      {required this.catalogItemColor,
      required this.catalogItemLimit,
      required this.catalogItemIncludes});

  factory _$_DetailAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailAttributeModelFromJson(json);

  @override
  final String catalogItemColor;
  @override
  final String catalogItemLimit;
  @override
  final String catalogItemIncludes;

  @override
  String toString() {
    return 'DetailAttributeModel(catalogItemColor: $catalogItemColor, catalogItemLimit: $catalogItemLimit, catalogItemIncludes: $catalogItemIncludes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailAttributeModel &&
            (identical(other.catalogItemColor, catalogItemColor) ||
                other.catalogItemColor == catalogItemColor) &&
            (identical(other.catalogItemLimit, catalogItemLimit) ||
                other.catalogItemLimit == catalogItemLimit) &&
            (identical(other.catalogItemIncludes, catalogItemIncludes) ||
                other.catalogItemIncludes == catalogItemIncludes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, catalogItemColor, catalogItemLimit, catalogItemIncludes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailAttributeModelCopyWith<_$_DetailAttributeModel> get copyWith =>
      __$$_DetailAttributeModelCopyWithImpl<_$_DetailAttributeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailAttributeModelToJson(
      this,
    );
  }
}

abstract class _DetailAttributeModel implements DetailAttributeModel {
  const factory _DetailAttributeModel(
      {required final String catalogItemColor,
      required final String catalogItemLimit,
      required final String catalogItemIncludes}) = _$_DetailAttributeModel;

  factory _DetailAttributeModel.fromJson(Map<String, dynamic> json) =
      _$_DetailAttributeModel.fromJson;

  @override
  String get catalogItemColor;
  @override
  String get catalogItemLimit;
  @override
  String get catalogItemIncludes;
  @override
  @JsonKey(ignore: true)
  _$$_DetailAttributeModelCopyWith<_$_DetailAttributeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
