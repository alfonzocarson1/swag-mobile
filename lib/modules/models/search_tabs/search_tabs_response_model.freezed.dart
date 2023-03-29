// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_tabs_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchTabsResponseModel _$SearchTabsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SearchTabsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchTabsResponseModel {
  List<CatalogItemModel> get catalogList => throw _privateConstructorUsedError;
  List<String> get recentList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchTabsResponseModelCopyWith<SearchTabsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTabsResponseModelCopyWith<$Res> {
  factory $SearchTabsResponseModelCopyWith(SearchTabsResponseModel value,
          $Res Function(SearchTabsResponseModel) then) =
      _$SearchTabsResponseModelCopyWithImpl<$Res, SearchTabsResponseModel>;
  @useResult
  $Res call({List<CatalogItemModel> catalogList, List<String> recentList});
}

/// @nodoc
class _$SearchTabsResponseModelCopyWithImpl<$Res,
        $Val extends SearchTabsResponseModel>
    implements $SearchTabsResponseModelCopyWith<$Res> {
  _$SearchTabsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogList = null,
    Object? recentList = null,
  }) {
    return _then(_value.copyWith(
      catalogList: null == catalogList
          ? _value.catalogList
          : catalogList // ignore: cast_nullable_to_non_nullable
              as List<CatalogItemModel>,
      recentList: null == recentList
          ? _value.recentList
          : recentList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchTabsResponseModelCopyWith<$Res>
    implements $SearchTabsResponseModelCopyWith<$Res> {
  factory _$$_SearchTabsResponseModelCopyWith(_$_SearchTabsResponseModel value,
          $Res Function(_$_SearchTabsResponseModel) then) =
      __$$_SearchTabsResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CatalogItemModel> catalogList, List<String> recentList});
}

/// @nodoc
class __$$_SearchTabsResponseModelCopyWithImpl<$Res>
    extends _$SearchTabsResponseModelCopyWithImpl<$Res,
        _$_SearchTabsResponseModel>
    implements _$$_SearchTabsResponseModelCopyWith<$Res> {
  __$$_SearchTabsResponseModelCopyWithImpl(_$_SearchTabsResponseModel _value,
      $Res Function(_$_SearchTabsResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogList = null,
    Object? recentList = null,
  }) {
    return _then(_$_SearchTabsResponseModel(
      catalogList: null == catalogList
          ? _value._catalogList
          : catalogList // ignore: cast_nullable_to_non_nullable
              as List<CatalogItemModel>,
      recentList: null == recentList
          ? _value._recentList
          : recentList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SearchTabsResponseModel implements _SearchTabsResponseModel {
  const _$_SearchTabsResponseModel(
      {required final List<CatalogItemModel> catalogList,
      final List<String> recentList = const []})
      : _catalogList = catalogList,
        _recentList = recentList;

  factory _$_SearchTabsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchTabsResponseModelFromJson(json);

  final List<CatalogItemModel> _catalogList;
  @override
  List<CatalogItemModel> get catalogList {
    if (_catalogList is EqualUnmodifiableListView) return _catalogList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catalogList);
  }

  final List<String> _recentList;
  @override
  @JsonKey()
  List<String> get recentList {
    if (_recentList is EqualUnmodifiableListView) return _recentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentList);
  }

  @override
  String toString() {
    return 'SearchTabsResponseModel(catalogList: $catalogList, recentList: $recentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTabsResponseModel &&
            const DeepCollectionEquality()
                .equals(other._catalogList, _catalogList) &&
            const DeepCollectionEquality()
                .equals(other._recentList, _recentList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_catalogList),
      const DeepCollectionEquality().hash(_recentList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchTabsResponseModelCopyWith<_$_SearchTabsResponseModel>
      get copyWith =>
          __$$_SearchTabsResponseModelCopyWithImpl<_$_SearchTabsResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchTabsResponseModelToJson(
      this,
    );
  }
}

abstract class _SearchTabsResponseModel implements SearchTabsResponseModel {
  const factory _SearchTabsResponseModel(
      {required final List<CatalogItemModel> catalogList,
      final List<String> recentList}) = _$_SearchTabsResponseModel;

  factory _SearchTabsResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SearchTabsResponseModel.fromJson;

  @override
  List<CatalogItemModel> get catalogList;
  @override
  List<String> get recentList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchTabsResponseModelCopyWith<_$_SearchTabsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
