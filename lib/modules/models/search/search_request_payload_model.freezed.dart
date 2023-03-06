// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_request_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRequestPayloadModel _$SearchRequestPayloadModelFromJson(
    Map<String, dynamic> json) {
  return _SearchRequestPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$SearchRequestPayloadModel {
  FilterModel get filters => throw _privateConstructorUsedError;
  List<String>? get searchParams => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRequestPayloadModelCopyWith<SearchRequestPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRequestPayloadModelCopyWith<$Res> {
  factory $SearchRequestPayloadModelCopyWith(SearchRequestPayloadModel value,
          $Res Function(SearchRequestPayloadModel) then) =
      _$SearchRequestPayloadModelCopyWithImpl<$Res, SearchRequestPayloadModel>;
  @useResult
  $Res call(
      {FilterModel filters,
      List<String>? searchParams,
      int pageSize,
      String categoryId});

  $FilterModelCopyWith<$Res> get filters;
}

/// @nodoc
class _$SearchRequestPayloadModelCopyWithImpl<$Res,
        $Val extends SearchRequestPayloadModel>
    implements $SearchRequestPayloadModelCopyWith<$Res> {
  _$SearchRequestPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? searchParams = freezed,
    Object? pageSize = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      searchParams: freezed == searchParams
          ? _value.searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res> get filters {
    return $FilterModelCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchRequestPayloadModelCopyWith<$Res>
    implements $SearchRequestPayloadModelCopyWith<$Res> {
  factory _$$_SearchRequestPayloadModelCopyWith(
          _$_SearchRequestPayloadModel value,
          $Res Function(_$_SearchRequestPayloadModel) then) =
      __$$_SearchRequestPayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FilterModel filters,
      List<String>? searchParams,
      int pageSize,
      String categoryId});

  @override
  $FilterModelCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_SearchRequestPayloadModelCopyWithImpl<$Res>
    extends _$SearchRequestPayloadModelCopyWithImpl<$Res,
        _$_SearchRequestPayloadModel>
    implements _$$_SearchRequestPayloadModelCopyWith<$Res> {
  __$$_SearchRequestPayloadModelCopyWithImpl(
      _$_SearchRequestPayloadModel _value,
      $Res Function(_$_SearchRequestPayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? searchParams = freezed,
    Object? pageSize = null,
    Object? categoryId = null,
  }) {
    return _then(_$_SearchRequestPayloadModel(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FilterModel,
      searchParams: freezed == searchParams
          ? _value._searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SearchRequestPayloadModel implements _SearchRequestPayloadModel {
  const _$_SearchRequestPayloadModel(
      {required this.filters,
      final List<String>? searchParams = null,
      this.pageSize = defaultPageSize,
      required this.categoryId})
      : _searchParams = searchParams;

  factory _$_SearchRequestPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRequestPayloadModelFromJson(json);

  @override
  final FilterModel filters;
  final List<String>? _searchParams;
  @override
  @JsonKey()
  List<String>? get searchParams {
    final value = _searchParams;
    if (value == null) return null;
    if (_searchParams is EqualUnmodifiableListView) return _searchParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int pageSize;
  @override
  final String categoryId;

  @override
  String toString() {
    return 'SearchRequestPayloadModel(filters: $filters, searchParams: $searchParams, pageSize: $pageSize, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRequestPayloadModel &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality()
                .equals(other._searchParams, _searchParams) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, filters,
      const DeepCollectionEquality().hash(_searchParams), pageSize, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchRequestPayloadModelCopyWith<_$_SearchRequestPayloadModel>
      get copyWith => __$$_SearchRequestPayloadModelCopyWithImpl<
          _$_SearchRequestPayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRequestPayloadModelToJson(
      this,
    );
  }
}

abstract class _SearchRequestPayloadModel implements SearchRequestPayloadModel {
  const factory _SearchRequestPayloadModel(
      {required final FilterModel filters,
      final List<String>? searchParams,
      final int pageSize,
      required final String categoryId}) = _$_SearchRequestPayloadModel;

  factory _SearchRequestPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_SearchRequestPayloadModel.fromJson;

  @override
  FilterModel get filters;
  @override
  List<String>? get searchParams;
  @override
  int get pageSize;
  @override
  String get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRequestPayloadModelCopyWith<_$_SearchRequestPayloadModel>
      get copyWith => throw _privateConstructorUsedError;
}
