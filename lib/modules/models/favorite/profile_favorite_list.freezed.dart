// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_favorite_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListFavoriteProfileResponseModel _$ListFavoriteProfileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ListFavoriteProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ListFavoriteProfileResponseModel {
  List<DetailItemModel> get favoriteList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListFavoriteProfileResponseModelCopyWith<ListFavoriteProfileResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListFavoriteProfileResponseModelCopyWith<$Res> {
  factory $ListFavoriteProfileResponseModelCopyWith(
          ListFavoriteProfileResponseModel value,
          $Res Function(ListFavoriteProfileResponseModel) then) =
      _$ListFavoriteProfileResponseModelCopyWithImpl<$Res,
          ListFavoriteProfileResponseModel>;
  @useResult
  $Res call({List<DetailItemModel> favoriteList});
}

/// @nodoc
class _$ListFavoriteProfileResponseModelCopyWithImpl<$Res,
        $Val extends ListFavoriteProfileResponseModel>
    implements $ListFavoriteProfileResponseModelCopyWith<$Res> {
  _$ListFavoriteProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteList = null,
  }) {
    return _then(_value.copyWith(
      favoriteList: null == favoriteList
          ? _value.favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<DetailItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListFavoriteProfileResponseModelCopyWith<$Res>
    implements $ListFavoriteProfileResponseModelCopyWith<$Res> {
  factory _$$_ListFavoriteProfileResponseModelCopyWith(
          _$_ListFavoriteProfileResponseModel value,
          $Res Function(_$_ListFavoriteProfileResponseModel) then) =
      __$$_ListFavoriteProfileResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DetailItemModel> favoriteList});
}

/// @nodoc
class __$$_ListFavoriteProfileResponseModelCopyWithImpl<$Res>
    extends _$ListFavoriteProfileResponseModelCopyWithImpl<$Res,
        _$_ListFavoriteProfileResponseModel>
    implements _$$_ListFavoriteProfileResponseModelCopyWith<$Res> {
  __$$_ListFavoriteProfileResponseModelCopyWithImpl(
      _$_ListFavoriteProfileResponseModel _value,
      $Res Function(_$_ListFavoriteProfileResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteList = null,
  }) {
    return _then(_$_ListFavoriteProfileResponseModel(
      favoriteList: null == favoriteList
          ? _value._favoriteList
          : favoriteList // ignore: cast_nullable_to_non_nullable
              as List<DetailItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListFavoriteProfileResponseModel
    implements _ListFavoriteProfileResponseModel {
  const _$_ListFavoriteProfileResponseModel(
      {required final List<DetailItemModel> favoriteList})
      : _favoriteList = favoriteList;

  factory _$_ListFavoriteProfileResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ListFavoriteProfileResponseModelFromJson(json);

  final List<DetailItemModel> _favoriteList;
  @override
  List<DetailItemModel> get favoriteList {
    if (_favoriteList is EqualUnmodifiableListView) return _favoriteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteList);
  }

  @override
  String toString() {
    return 'ListFavoriteProfileResponseModel(favoriteList: $favoriteList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListFavoriteProfileResponseModel &&
            const DeepCollectionEquality()
                .equals(other._favoriteList, _favoriteList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoriteList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListFavoriteProfileResponseModelCopyWith<
          _$_ListFavoriteProfileResponseModel>
      get copyWith => __$$_ListFavoriteProfileResponseModelCopyWithImpl<
          _$_ListFavoriteProfileResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListFavoriteProfileResponseModelToJson(
      this,
    );
  }
}

abstract class _ListFavoriteProfileResponseModel
    implements ListFavoriteProfileResponseModel {
  const factory _ListFavoriteProfileResponseModel(
          {required final List<DetailItemModel> favoriteList}) =
      _$_ListFavoriteProfileResponseModel;

  factory _ListFavoriteProfileResponseModel.fromJson(
      Map<String, dynamic> json) = _$_ListFavoriteProfileResponseModel.fromJson;

  @override
  List<DetailItemModel> get favoriteList;
  @override
  @JsonKey(ignore: true)
  _$$_ListFavoriteProfileResponseModelCopyWith<
          _$_ListFavoriteProfileResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
