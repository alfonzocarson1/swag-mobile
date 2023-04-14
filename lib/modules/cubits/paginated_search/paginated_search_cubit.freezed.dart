// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(
            Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(loaded_search value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(loaded_search value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(loaded_search value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedSearchStateCopyWith<$Res> {
  factory $PaginatedSearchStateCopyWith(PaginatedSearchState value,
          $Res Function(PaginatedSearchState) then) =
      _$PaginatedSearchStateCopyWithImpl<$Res, PaginatedSearchState>;
}

/// @nodoc
class _$PaginatedSearchStateCopyWithImpl<$Res,
        $Val extends PaginatedSearchState>
    implements $PaginatedSearchStateCopyWith<$Res> {
  _$PaginatedSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaginatedSearchStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PaginatedSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(
            Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(loaded_search value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(loaded_search value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(loaded_search value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaginatedSearchState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$loading_searchCopyWith<$Res> {
  factory _$$loading_searchCopyWith(
          _$loading_search value, $Res Function(_$loading_search) then) =
      __$$loading_searchCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFirstFetch});
}

/// @nodoc
class __$$loading_searchCopyWithImpl<$Res>
    extends _$PaginatedSearchStateCopyWithImpl<$Res, _$loading_search>
    implements _$$loading_searchCopyWith<$Res> {
  __$$loading_searchCopyWithImpl(
      _$loading_search _value, $Res Function(_$loading_search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstFetch = null,
  }) {
    return _then(_$loading_search(
      isFirstFetch: null == isFirstFetch
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$loading_search implements loading_search {
  const _$loading_search({this.isFirstFetch = false});

  @override
  @JsonKey()
  final bool isFirstFetch;

  @override
  String toString() {
    return 'PaginatedSearchState.loading(isFirstFetch: $isFirstFetch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loading_search &&
            (identical(other.isFirstFetch, isFirstFetch) ||
                other.isFirstFetch == isFirstFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstFetch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loading_searchCopyWith<_$loading_search> get copyWith =>
      __$$loading_searchCopyWithImpl<_$loading_search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(
            Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)
        loaded,
  }) {
    return loading(isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)?
        loaded,
  }) {
    return loading?.call(isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isFirstFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(loaded_search value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(loaded_search value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(loaded_search value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class loading_search implements PaginatedSearchState {
  const factory loading_search({final bool isFirstFetch}) = _$loading_search;

  bool get isFirstFetch;
  @JsonKey(ignore: true)
  _$$loading_searchCopyWith<_$loading_search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loaded_searchCopyWith<$Res> {
  factory _$$loaded_searchCopyWith(
          _$loaded_search value, $Res Function(_$loaded_search) then) =
      __$$loaded_searchCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<SearchTab, List<CatalogItemModel>> tabResultMap,
      Map<SearchTab, List<CatalogItemModel>> newMap});
}

/// @nodoc
class __$$loaded_searchCopyWithImpl<$Res>
    extends _$PaginatedSearchStateCopyWithImpl<$Res, _$loaded_search>
    implements _$$loaded_searchCopyWith<$Res> {
  __$$loaded_searchCopyWithImpl(
      _$loaded_search _value, $Res Function(_$loaded_search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabResultMap = null,
    Object? newMap = null,
  }) {
    return _then(_$loaded_search(
      tabResultMap: null == tabResultMap
          ? _value._tabResultMap
          : tabResultMap // ignore: cast_nullable_to_non_nullable
              as Map<SearchTab, List<CatalogItemModel>>,
      newMap: null == newMap
          ? _value._newMap
          : newMap // ignore: cast_nullable_to_non_nullable
              as Map<SearchTab, List<CatalogItemModel>>,
    ));
  }
}

/// @nodoc

class _$loaded_search implements loaded_search {
  const _$loaded_search(
      {required final Map<SearchTab, List<CatalogItemModel>> tabResultMap,
      required final Map<SearchTab, List<CatalogItemModel>> newMap})
      : _tabResultMap = tabResultMap,
        _newMap = newMap;

  final Map<SearchTab, List<CatalogItemModel>> _tabResultMap;
  @override
  Map<SearchTab, List<CatalogItemModel>> get tabResultMap {
    if (_tabResultMap is EqualUnmodifiableMapView) return _tabResultMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tabResultMap);
  }

  final Map<SearchTab, List<CatalogItemModel>> _newMap;
  @override
  Map<SearchTab, List<CatalogItemModel>> get newMap {
    if (_newMap is EqualUnmodifiableMapView) return _newMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_newMap);
  }

  @override
  String toString() {
    return 'PaginatedSearchState.loaded(tabResultMap: $tabResultMap, newMap: $newMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loaded_search &&
            const DeepCollectionEquality()
                .equals(other._tabResultMap, _tabResultMap) &&
            const DeepCollectionEquality().equals(other._newMap, _newMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tabResultMap),
      const DeepCollectionEquality().hash(_newMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loaded_searchCopyWith<_$loaded_search> get copyWith =>
      __$$loaded_searchCopyWithImpl<_$loaded_search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(
            Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)
        loaded,
  }) {
    return loaded(tabResultMap, newMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)?
        loaded,
  }) {
    return loaded?.call(tabResultMap, newMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> tabResultMap,
            Map<SearchTab, List<CatalogItemModel>> newMap)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tabResultMap, newMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(loaded_search value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(loaded_search value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(loaded_search value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class loaded_search implements PaginatedSearchState {
  const factory loaded_search(
          {required final Map<SearchTab, List<CatalogItemModel>> tabResultMap,
          required final Map<SearchTab, List<CatalogItemModel>> newMap}) =
      _$loaded_search;

  Map<SearchTab, List<CatalogItemModel>> get tabResultMap;
  Map<SearchTab, List<CatalogItemModel>> get newMap;
  @JsonKey(ignore: true)
  _$$loaded_searchCopyWith<_$loaded_search> get copyWith =>
      throw _privateConstructorUsedError;
}
