// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteItemModel _$FavoriteItemModelFromJson(Map<String, dynamic> json) {
  return _FavoriteItemModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteItemModel {
  String? get profileFavoriteItemId => throw _privateConstructorUsedError;
  String? get catalogItemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteItemModelCopyWith<FavoriteItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteItemModelCopyWith<$Res> {
  factory $FavoriteItemModelCopyWith(
          FavoriteItemModel value, $Res Function(FavoriteItemModel) then) =
      _$FavoriteItemModelCopyWithImpl<$Res, FavoriteItemModel>;
  @useResult
  $Res call({String? profileFavoriteItemId, String? catalogItemId});
}

/// @nodoc
class _$FavoriteItemModelCopyWithImpl<$Res, $Val extends FavoriteItemModel>
    implements $FavoriteItemModelCopyWith<$Res> {
  _$FavoriteItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileFavoriteItemId = freezed,
    Object? catalogItemId = freezed,
  }) {
    return _then(_value.copyWith(
      profileFavoriteItemId: freezed == profileFavoriteItemId
          ? _value.profileFavoriteItemId
          : profileFavoriteItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogItemId: freezed == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteItemModelCopyWith<$Res>
    implements $FavoriteItemModelCopyWith<$Res> {
  factory _$$_FavoriteItemModelCopyWith(_$_FavoriteItemModel value,
          $Res Function(_$_FavoriteItemModel) then) =
      __$$_FavoriteItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? profileFavoriteItemId, String? catalogItemId});
}

/// @nodoc
class __$$_FavoriteItemModelCopyWithImpl<$Res>
    extends _$FavoriteItemModelCopyWithImpl<$Res, _$_FavoriteItemModel>
    implements _$$_FavoriteItemModelCopyWith<$Res> {
  __$$_FavoriteItemModelCopyWithImpl(
      _$_FavoriteItemModel _value, $Res Function(_$_FavoriteItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileFavoriteItemId = freezed,
    Object? catalogItemId = freezed,
  }) {
    return _then(_$_FavoriteItemModel(
      profileFavoriteItemId: freezed == profileFavoriteItemId
          ? _value.profileFavoriteItemId
          : profileFavoriteItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogItemId: freezed == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteItemModel implements _FavoriteItemModel {
  const _$_FavoriteItemModel({this.profileFavoriteItemId, this.catalogItemId});

  factory _$_FavoriteItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteItemModelFromJson(json);

  @override
  final String? profileFavoriteItemId;
  @override
  final String? catalogItemId;

  @override
  String toString() {
    return 'FavoriteItemModel(profileFavoriteItemId: $profileFavoriteItemId, catalogItemId: $catalogItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteItemModel &&
            (identical(other.profileFavoriteItemId, profileFavoriteItemId) ||
                other.profileFavoriteItemId == profileFavoriteItemId) &&
            (identical(other.catalogItemId, catalogItemId) ||
                other.catalogItemId == catalogItemId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, profileFavoriteItemId, catalogItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteItemModelCopyWith<_$_FavoriteItemModel> get copyWith =>
      __$$_FavoriteItemModelCopyWithImpl<_$_FavoriteItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteItemModelToJson(
      this,
    );
  }
}

abstract class _FavoriteItemModel implements FavoriteItemModel {
  const factory _FavoriteItemModel(
      {final String? profileFavoriteItemId,
      final String? catalogItemId}) = _$_FavoriteItemModel;

  factory _FavoriteItemModel.fromJson(Map<String, dynamic> json) =
      _$_FavoriteItemModel.fromJson;

  @override
  String? get profileFavoriteItemId;
  @override
  String? get catalogItemId;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteItemModelCopyWith<_$_FavoriteItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
