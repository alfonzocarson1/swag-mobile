// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListExploreItemModel _$ListExploreItemModelFromJson(Map<String, dynamic> json) {
  return _ListExploreItemModel.fromJson(json);
}

/// @nodoc
mixin _$ListExploreItemModel {
  List<CatalogItemModel> get exploreList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListExploreItemModelCopyWith<ListExploreItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListExploreItemModelCopyWith<$Res> {
  factory $ListExploreItemModelCopyWith(ListExploreItemModel value,
          $Res Function(ListExploreItemModel) then) =
      _$ListExploreItemModelCopyWithImpl<$Res, ListExploreItemModel>;
  @useResult
  $Res call({List<CatalogItemModel> exploreList});
}

/// @nodoc
class _$ListExploreItemModelCopyWithImpl<$Res,
        $Val extends ListExploreItemModel>
    implements $ListExploreItemModelCopyWith<$Res> {
  _$ListExploreItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exploreList = null,
  }) {
    return _then(_value.copyWith(
      exploreList: null == exploreList
          ? _value.exploreList
          : exploreList // ignore: cast_nullable_to_non_nullable
              as List<CatalogItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListExploreItemModelCopyWith<$Res>
    implements $ListExploreItemModelCopyWith<$Res> {
  factory _$$_ListExploreItemModelCopyWith(_$_ListExploreItemModel value,
          $Res Function(_$_ListExploreItemModel) then) =
      __$$_ListExploreItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CatalogItemModel> exploreList});
}

/// @nodoc
class __$$_ListExploreItemModelCopyWithImpl<$Res>
    extends _$ListExploreItemModelCopyWithImpl<$Res, _$_ListExploreItemModel>
    implements _$$_ListExploreItemModelCopyWith<$Res> {
  __$$_ListExploreItemModelCopyWithImpl(_$_ListExploreItemModel _value,
      $Res Function(_$_ListExploreItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exploreList = null,
  }) {
    return _then(_$_ListExploreItemModel(
      exploreList: null == exploreList
          ? _value._exploreList
          : exploreList // ignore: cast_nullable_to_non_nullable
              as List<CatalogItemModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ListExploreItemModel implements _ListExploreItemModel {
  const _$_ListExploreItemModel(
      {required final List<CatalogItemModel> exploreList})
      : _exploreList = exploreList;

  factory _$_ListExploreItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListExploreItemModelFromJson(json);

  final List<CatalogItemModel> _exploreList;
  @override
  List<CatalogItemModel> get exploreList {
    if (_exploreList is EqualUnmodifiableListView) return _exploreList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exploreList);
  }

  @override
  String toString() {
    return 'ListExploreItemModel(exploreList: $exploreList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListExploreItemModel &&
            const DeepCollectionEquality()
                .equals(other._exploreList, _exploreList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_exploreList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListExploreItemModelCopyWith<_$_ListExploreItemModel> get copyWith =>
      __$$_ListExploreItemModelCopyWithImpl<_$_ListExploreItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListExploreItemModelToJson(
      this,
    );
  }
}

abstract class _ListExploreItemModel implements ListExploreItemModel {
  const factory _ListExploreItemModel(
          {required final List<CatalogItemModel> exploreList}) =
      _$_ListExploreItemModel;

  factory _ListExploreItemModel.fromJson(Map<String, dynamic> json) =
      _$_ListExploreItemModel.fromJson;

  @override
  List<CatalogItemModel> get exploreList;
  @override
  @JsonKey(ignore: true)
  _$$_ListExploreItemModelCopyWith<_$_ListExploreItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
