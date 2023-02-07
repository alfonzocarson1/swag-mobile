// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponseModel _$SearchResponseModelFromJson(Map<String, dynamic> json) {
  return _SearchResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResponseModel {
  List<CatalogItemModel> get catalogList => throw _privateConstructorUsedError;
  List<String> get savedList => throw _privateConstructorUsedError;
  List<String> get recentList => throw _privateConstructorUsedError;
  String? get jobId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseModelCopyWith<SearchResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseModelCopyWith<$Res> {
  factory $SearchResponseModelCopyWith(
          SearchResponseModel value, $Res Function(SearchResponseModel) then) =
      _$SearchResponseModelCopyWithImpl<$Res, SearchResponseModel>;
  @useResult
  $Res call(
      {List<CatalogItemModel> catalogList,
      List<String> savedList,
      List<String> recentList,
      String? jobId});
}

/// @nodoc
class _$SearchResponseModelCopyWithImpl<$Res, $Val extends SearchResponseModel>
    implements $SearchResponseModelCopyWith<$Res> {
  _$SearchResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogList = null,
    Object? savedList = null,
    Object? recentList = null,
    Object? jobId = freezed,
  }) {
    return _then(_value.copyWith(
      catalogList: null == catalogList
          ? _value.catalogList
          : catalogList // ignore: cast_nullable_to_non_nullable
              as List<CatalogItemModel>,
      savedList: null == savedList
          ? _value.savedList
          : savedList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recentList: null == recentList
          ? _value.recentList
          : recentList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResponseModelCopyWith<$Res>
    implements $SearchResponseModelCopyWith<$Res> {
  factory _$$_SearchResponseModelCopyWith(_$_SearchResponseModel value,
          $Res Function(_$_SearchResponseModel) then) =
      __$$_SearchResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CatalogItemModel> catalogList,
      List<String> savedList,
      List<String> recentList,
      String? jobId});
}

/// @nodoc
class __$$_SearchResponseModelCopyWithImpl<$Res>
    extends _$SearchResponseModelCopyWithImpl<$Res, _$_SearchResponseModel>
    implements _$$_SearchResponseModelCopyWith<$Res> {
  __$$_SearchResponseModelCopyWithImpl(_$_SearchResponseModel _value,
      $Res Function(_$_SearchResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogList = null,
    Object? savedList = null,
    Object? recentList = null,
    Object? jobId = freezed,
  }) {
    return _then(_$_SearchResponseModel(
      catalogList: null == catalogList
          ? _value._catalogList
          : catalogList // ignore: cast_nullable_to_non_nullable
              as List<CatalogItemModel>,
      savedList: null == savedList
          ? _value._savedList
          : savedList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recentList: null == recentList
          ? _value._recentList
          : recentList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jobId: freezed == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SearchResponseModel implements _SearchResponseModel {
  const _$_SearchResponseModel(
      {required final List<CatalogItemModel> catalogList,
      required final List<String> savedList,
      required final List<String> recentList,
      this.jobId})
      : _catalogList = catalogList,
        _savedList = savedList,
        _recentList = recentList;

  factory _$_SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseModelFromJson(json);

  final List<CatalogItemModel> _catalogList;
  @override
  List<CatalogItemModel> get catalogList {
    if (_catalogList is EqualUnmodifiableListView) return _catalogList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catalogList);
  }

  final List<String> _savedList;
  @override
  List<String> get savedList {
    if (_savedList is EqualUnmodifiableListView) return _savedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedList);
  }

  final List<String> _recentList;
  @override
  List<String> get recentList {
    if (_recentList is EqualUnmodifiableListView) return _recentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentList);
  }

  @override
  final String? jobId;

  @override
  String toString() {
    return 'SearchResponseModel(catalogList: $catalogList, savedList: $savedList, recentList: $recentList, jobId: $jobId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponseModel &&
            const DeepCollectionEquality()
                .equals(other._catalogList, _catalogList) &&
            const DeepCollectionEquality()
                .equals(other._savedList, _savedList) &&
            const DeepCollectionEquality()
                .equals(other._recentList, _recentList) &&
            (identical(other.jobId, jobId) || other.jobId == jobId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_catalogList),
      const DeepCollectionEquality().hash(_savedList),
      const DeepCollectionEquality().hash(_recentList),
      jobId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResponseModelCopyWith<_$_SearchResponseModel> get copyWith =>
      __$$_SearchResponseModelCopyWithImpl<_$_SearchResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseModelToJson(
      this,
    );
  }
}

abstract class _SearchResponseModel implements SearchResponseModel {
  const factory _SearchResponseModel(
      {required final List<CatalogItemModel> catalogList,
      required final List<String> savedList,
      required final List<String> recentList,
      final String? jobId}) = _$_SearchResponseModel;

  factory _SearchResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SearchResponseModel.fromJson;

  @override
  List<CatalogItemModel> get catalogList;
  @override
  List<String> get savedList;
  @override
  List<String> get recentList;
  @override
  String? get jobId;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseModelCopyWith<_$_SearchResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
