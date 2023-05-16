// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) {
  return _FavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$FavoriteModel {
  String? get favoritesItemAction => throw _privateConstructorUsedError;
  String? get accountId => throw _privateConstructorUsedError;
  List<FavoriteItemModel>? get profileFavoriteItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteModelCopyWith<FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteModelCopyWith<$Res> {
  factory $FavoriteModelCopyWith(
          FavoriteModel value, $Res Function(FavoriteModel) then) =
      _$FavoriteModelCopyWithImpl<$Res, FavoriteModel>;
  @useResult
  $Res call(
      {String? favoritesItemAction,
      String? accountId,
      List<FavoriteItemModel>? profileFavoriteItems});
}

/// @nodoc
class _$FavoriteModelCopyWithImpl<$Res, $Val extends FavoriteModel>
    implements $FavoriteModelCopyWith<$Res> {
  _$FavoriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritesItemAction = freezed,
    Object? accountId = freezed,
    Object? profileFavoriteItems = freezed,
  }) {
    return _then(_value.copyWith(
      favoritesItemAction: freezed == favoritesItemAction
          ? _value.favoritesItemAction
          : favoritesItemAction // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileFavoriteItems: freezed == profileFavoriteItems
          ? _value.profileFavoriteItems
          : profileFavoriteItems // ignore: cast_nullable_to_non_nullable
              as List<FavoriteItemModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteModelCopyWith<$Res>
    implements $FavoriteModelCopyWith<$Res> {
  factory _$$_FavoriteModelCopyWith(
          _$_FavoriteModel value, $Res Function(_$_FavoriteModel) then) =
      __$$_FavoriteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? favoritesItemAction,
      String? accountId,
      List<FavoriteItemModel>? profileFavoriteItems});
}

/// @nodoc
class __$$_FavoriteModelCopyWithImpl<$Res>
    extends _$FavoriteModelCopyWithImpl<$Res, _$_FavoriteModel>
    implements _$$_FavoriteModelCopyWith<$Res> {
  __$$_FavoriteModelCopyWithImpl(
      _$_FavoriteModel _value, $Res Function(_$_FavoriteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritesItemAction = freezed,
    Object? accountId = freezed,
    Object? profileFavoriteItems = freezed,
  }) {
    return _then(_$_FavoriteModel(
      favoritesItemAction: freezed == favoritesItemAction
          ? _value.favoritesItemAction
          : favoritesItemAction // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileFavoriteItems: freezed == profileFavoriteItems
          ? _value._profileFavoriteItems
          : profileFavoriteItems // ignore: cast_nullable_to_non_nullable
              as List<FavoriteItemModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoriteModel implements _FavoriteModel {
  const _$_FavoriteModel(
      {this.favoritesItemAction,
      this.accountId,
      final List<FavoriteItemModel>? profileFavoriteItems})
      : _profileFavoriteItems = profileFavoriteItems;

  factory _$_FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$$_FavoriteModelFromJson(json);

  @override
  final String? favoritesItemAction;
  @override
  final String? accountId;
  final List<FavoriteItemModel>? _profileFavoriteItems;
  @override
  List<FavoriteItemModel>? get profileFavoriteItems {
    final value = _profileFavoriteItems;
    if (value == null) return null;
    if (_profileFavoriteItems is EqualUnmodifiableListView)
      return _profileFavoriteItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavoriteModel(favoritesItemAction: $favoritesItemAction, accountId: $accountId, profileFavoriteItems: $profileFavoriteItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteModel &&
            (identical(other.favoritesItemAction, favoritesItemAction) ||
                other.favoritesItemAction == favoritesItemAction) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            const DeepCollectionEquality()
                .equals(other._profileFavoriteItems, _profileFavoriteItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, favoritesItemAction, accountId,
      const DeepCollectionEquality().hash(_profileFavoriteItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteModelCopyWith<_$_FavoriteModel> get copyWith =>
      __$$_FavoriteModelCopyWithImpl<_$_FavoriteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoriteModelToJson(
      this,
    );
  }
}

abstract class _FavoriteModel implements FavoriteModel {
  const factory _FavoriteModel(
      {final String? favoritesItemAction,
      final String? accountId,
      final List<FavoriteItemModel>? profileFavoriteItems}) = _$_FavoriteModel;

  factory _FavoriteModel.fromJson(Map<String, dynamic> json) =
      _$_FavoriteModel.fromJson;

  @override
  String? get favoritesItemAction;
  @override
  String? get accountId;
  @override
  List<FavoriteItemModel>? get profileFavoriteItems;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteModelCopyWith<_$_FavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
