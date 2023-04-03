// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListCollectionProfileResponseModel _$ListCollectionProfileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ListCollectionProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ListCollectionProfileResponseModel {
  List<GetCollectionModel> get collectionList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListCollectionProfileResponseModelCopyWith<
          ListCollectionProfileResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListCollectionProfileResponseModelCopyWith<$Res> {
  factory $ListCollectionProfileResponseModelCopyWith(
          ListCollectionProfileResponseModel value,
          $Res Function(ListCollectionProfileResponseModel) then) =
      _$ListCollectionProfileResponseModelCopyWithImpl<$Res,
          ListCollectionProfileResponseModel>;
  @useResult
  $Res call({List<GetCollectionModel> collectionList});
}

/// @nodoc
class _$ListCollectionProfileResponseModelCopyWithImpl<$Res,
        $Val extends ListCollectionProfileResponseModel>
    implements $ListCollectionProfileResponseModelCopyWith<$Res> {
  _$ListCollectionProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionList = null,
  }) {
    return _then(_value.copyWith(
      collectionList: null == collectionList
          ? _value.collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<GetCollectionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListCollectionProfileResponseModelCopyWith<$Res>
    implements $ListCollectionProfileResponseModelCopyWith<$Res> {
  factory _$$_ListCollectionProfileResponseModelCopyWith(
          _$_ListCollectionProfileResponseModel value,
          $Res Function(_$_ListCollectionProfileResponseModel) then) =
      __$$_ListCollectionProfileResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetCollectionModel> collectionList});
}

/// @nodoc
class __$$_ListCollectionProfileResponseModelCopyWithImpl<$Res>
    extends _$ListCollectionProfileResponseModelCopyWithImpl<$Res,
        _$_ListCollectionProfileResponseModel>
    implements _$$_ListCollectionProfileResponseModelCopyWith<$Res> {
  __$$_ListCollectionProfileResponseModelCopyWithImpl(
      _$_ListCollectionProfileResponseModel _value,
      $Res Function(_$_ListCollectionProfileResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionList = null,
  }) {
    return _then(_$_ListCollectionProfileResponseModel(
      collectionList: null == collectionList
          ? _value._collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<GetCollectionModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ListCollectionProfileResponseModel
    implements _ListCollectionProfileResponseModel {
  const _$_ListCollectionProfileResponseModel(
      {required final List<GetCollectionModel> collectionList})
      : _collectionList = collectionList;

  factory _$_ListCollectionProfileResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ListCollectionProfileResponseModelFromJson(json);

  final List<GetCollectionModel> _collectionList;
  @override
  List<GetCollectionModel> get collectionList {
    if (_collectionList is EqualUnmodifiableListView) return _collectionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectionList);
  }

  @override
  String toString() {
    return 'ListCollectionProfileResponseModel(collectionList: $collectionList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListCollectionProfileResponseModel &&
            const DeepCollectionEquality()
                .equals(other._collectionList, _collectionList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_collectionList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListCollectionProfileResponseModelCopyWith<
          _$_ListCollectionProfileResponseModel>
      get copyWith => __$$_ListCollectionProfileResponseModelCopyWithImpl<
          _$_ListCollectionProfileResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListCollectionProfileResponseModelToJson(
      this,
    );
  }
}

abstract class _ListCollectionProfileResponseModel
    implements ListCollectionProfileResponseModel {
  const factory _ListCollectionProfileResponseModel(
          {required final List<GetCollectionModel> collectionList}) =
      _$_ListCollectionProfileResponseModel;

  factory _ListCollectionProfileResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_ListCollectionProfileResponseModel.fromJson;

  @override
  List<GetCollectionModel> get collectionList;
  @override
  @JsonKey(ignore: true)
  _$$_ListCollectionProfileResponseModelCopyWith<
          _$_ListCollectionProfileResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
