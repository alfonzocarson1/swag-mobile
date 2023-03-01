// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'head_covers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchHeadcoversEvent {
  SearchRequestPayloadModel get payload => throw _privateConstructorUsedError;
  FiltersPayload get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchRequestPayloadModel payload, FiltersPayload param)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequestPayloadModel payload, FiltersPayload param)?
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequestPayloadModel payload, FiltersPayload param)?
        search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchHeadcoversEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchHeadcoversEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchHeadcoversEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchHeadcoversEventCopyWith<SearchHeadcoversEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHeadcoversEventCopyWith<$Res> {
  factory $SearchHeadcoversEventCopyWith(SearchHeadcoversEvent value,
          $Res Function(SearchHeadcoversEvent) then) =
      _$SearchHeadcoversEventCopyWithImpl<$Res, SearchHeadcoversEvent>;
  @useResult
  $Res call({SearchRequestPayloadModel payload, FiltersPayload param});

  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class _$SearchHeadcoversEventCopyWithImpl<$Res,
        $Val extends SearchHeadcoversEvent>
    implements $SearchHeadcoversEventCopyWith<$Res> {
  _$SearchHeadcoversEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? param = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SearchRequestPayloadModel,
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as FiltersPayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchRequestPayloadModelCopyWith<$Res> get payload {
    return $SearchRequestPayloadModelCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchHeadcoversEventCopyWith<$Res>
    implements $SearchHeadcoversEventCopyWith<$Res> {
  factory _$$_SearchHeadcoversEventCopyWith(_$_SearchHeadcoversEvent value,
          $Res Function(_$_SearchHeadcoversEvent) then) =
      __$$_SearchHeadcoversEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchRequestPayloadModel payload, FiltersPayload param});

  @override
  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_SearchHeadcoversEventCopyWithImpl<$Res>
    extends _$SearchHeadcoversEventCopyWithImpl<$Res, _$_SearchHeadcoversEvent>
    implements _$$_SearchHeadcoversEventCopyWith<$Res> {
  __$$_SearchHeadcoversEventCopyWithImpl(_$_SearchHeadcoversEvent _value,
      $Res Function(_$_SearchHeadcoversEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? param = null,
  }) {
    return _then(_$_SearchHeadcoversEvent(
      null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SearchRequestPayloadModel,
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as FiltersPayload,
    ));
  }
}

/// @nodoc

class _$_SearchHeadcoversEvent implements _SearchHeadcoversEvent {
  const _$_SearchHeadcoversEvent(this.payload, this.param);

  @override
  final SearchRequestPayloadModel payload;
  @override
  final FiltersPayload param;

  @override
  String toString() {
    return 'SearchHeadcoversEvent.search(payload: $payload, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchHeadcoversEvent &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchHeadcoversEventCopyWith<_$_SearchHeadcoversEvent> get copyWith =>
      __$$_SearchHeadcoversEventCopyWithImpl<_$_SearchHeadcoversEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchRequestPayloadModel payload, FiltersPayload param)
        search,
  }) {
    return search(payload, param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequestPayloadModel payload, FiltersPayload param)?
        search,
  }) {
    return search?.call(payload, param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequestPayloadModel payload, FiltersPayload param)?
        search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(payload, param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchHeadcoversEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchHeadcoversEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchHeadcoversEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchHeadcoversEvent implements SearchHeadcoversEvent {
  const factory _SearchHeadcoversEvent(
          final SearchRequestPayloadModel payload, final FiltersPayload param) =
      _$_SearchHeadcoversEvent;

  @override
  SearchRequestPayloadModel get payload;
  @override
  FiltersPayload get param;
  @override
  @JsonKey(ignore: true)
  _$$_SearchHeadcoversEventCopyWith<_$_SearchHeadcoversEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchHeadcoversState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> categoryList)
        loadedCategories,
    required TResult Function(List<String> queries) recentSearch,
    required TResult Function(String query, SearchTab tab) searching,
    required TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)
        result,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult? Function(List<String> queries)? recentSearch,
    TResult? Function(String query, SearchTab tab)? searching,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult Function(List<String> queries)? recentSearch,
    TResult Function(String query, SearchTab tab)? searching,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchHeadcoversState value) initial,
    required TResult Function(_ErrorSearchHeadcoversState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchHeadcoversStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchHeadcoversStateSearching value) searching,
    required TResult Function(_SearchHeadcoversStateResult value) result,
    required TResult Function(_SearchHeadcoversStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchHeadcoversState value)? initial,
    TResult? Function(_ErrorSearchHeadcoversState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchHeadcoversStateSearching value)? searching,
    TResult? Function(_SearchHeadcoversStateResult value)? result,
    TResult? Function(_SearchHeadcoversStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchHeadcoversState value)? initial,
    TResult Function(_ErrorSearchHeadcoversState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult Function(_SearchHeadcoversStateSearching value)? searching,
    TResult Function(_SearchHeadcoversStateResult value)? result,
    TResult Function(_SearchHeadcoversStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHeadcoversStateCopyWith<$Res> {
  factory $SearchHeadcoversStateCopyWith(SearchHeadcoversState value,
          $Res Function(SearchHeadcoversState) then) =
      _$SearchHeadcoversStateCopyWithImpl<$Res, SearchHeadcoversState>;
}

/// @nodoc
class _$SearchHeadcoversStateCopyWithImpl<$Res,
        $Val extends SearchHeadcoversState>
    implements $SearchHeadcoversStateCopyWith<$Res> {
  _$SearchHeadcoversStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSearchHeadcoversStateCopyWith<$Res> {
  factory _$$_InitialSearchHeadcoversStateCopyWith(
          _$_InitialSearchHeadcoversState value,
          $Res Function(_$_InitialSearchHeadcoversState) then) =
      __$$_InitialSearchHeadcoversStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSearchHeadcoversStateCopyWithImpl<$Res>
    extends _$SearchHeadcoversStateCopyWithImpl<$Res,
        _$_InitialSearchHeadcoversState>
    implements _$$_InitialSearchHeadcoversStateCopyWith<$Res> {
  __$$_InitialSearchHeadcoversStateCopyWithImpl(
      _$_InitialSearchHeadcoversState _value,
      $Res Function(_$_InitialSearchHeadcoversState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSearchHeadcoversState extends _InitialSearchHeadcoversState {
  _$_InitialSearchHeadcoversState() : super._();

  @override
  String toString() {
    return 'SearchHeadcoversState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSearchHeadcoversState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> categoryList)
        loadedCategories,
    required TResult Function(List<String> queries) recentSearch,
    required TResult Function(String query, SearchTab tab) searching,
    required TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)
        result,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult? Function(List<String> queries)? recentSearch,
    TResult? Function(String query, SearchTab tab)? searching,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult Function(List<String> queries)? recentSearch,
    TResult Function(String query, SearchTab tab)? searching,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult Function()? empty,
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
    required TResult Function(_InitialSearchHeadcoversState value) initial,
    required TResult Function(_ErrorSearchHeadcoversState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchHeadcoversStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchHeadcoversStateSearching value) searching,
    required TResult Function(_SearchHeadcoversStateResult value) result,
    required TResult Function(_SearchHeadcoversStateEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchHeadcoversState value)? initial,
    TResult? Function(_ErrorSearchHeadcoversState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchHeadcoversStateSearching value)? searching,
    TResult? Function(_SearchHeadcoversStateResult value)? result,
    TResult? Function(_SearchHeadcoversStateEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchHeadcoversState value)? initial,
    TResult Function(_ErrorSearchHeadcoversState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult Function(_SearchHeadcoversStateSearching value)? searching,
    TResult Function(_SearchHeadcoversStateResult value)? result,
    TResult Function(_SearchHeadcoversStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchHeadcoversState extends SearchHeadcoversState {
  factory _InitialSearchHeadcoversState() = _$_InitialSearchHeadcoversState;
  _InitialSearchHeadcoversState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorSearchHeadcoversStateCopyWith<$Res> {
  factory _$$_ErrorSearchHeadcoversStateCopyWith(
          _$_ErrorSearchHeadcoversState value,
          $Res Function(_$_ErrorSearchHeadcoversState) then) =
      __$$_ErrorSearchHeadcoversStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorSearchHeadcoversStateCopyWithImpl<$Res>
    extends _$SearchHeadcoversStateCopyWithImpl<$Res,
        _$_ErrorSearchHeadcoversState>
    implements _$$_ErrorSearchHeadcoversStateCopyWith<$Res> {
  __$$_ErrorSearchHeadcoversStateCopyWithImpl(
      _$_ErrorSearchHeadcoversState _value,
      $Res Function(_$_ErrorSearchHeadcoversState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorSearchHeadcoversState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorSearchHeadcoversState extends _ErrorSearchHeadcoversState {
  _$_ErrorSearchHeadcoversState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SearchHeadcoversState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSearchHeadcoversState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSearchHeadcoversStateCopyWith<_$_ErrorSearchHeadcoversState>
      get copyWith => __$$_ErrorSearchHeadcoversStateCopyWithImpl<
          _$_ErrorSearchHeadcoversState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> categoryList)
        loadedCategories,
    required TResult Function(List<String> queries) recentSearch,
    required TResult Function(String query, SearchTab tab) searching,
    required TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)
        result,
    required TResult Function() empty,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult? Function(List<String> queries)? recentSearch,
    TResult? Function(String query, SearchTab tab)? searching,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult? Function()? empty,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult Function(List<String> queries)? recentSearch,
    TResult Function(String query, SearchTab tab)? searching,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchHeadcoversState value) initial,
    required TResult Function(_ErrorSearchHeadcoversState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchHeadcoversStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchHeadcoversStateSearching value) searching,
    required TResult Function(_SearchHeadcoversStateResult value) result,
    required TResult Function(_SearchHeadcoversStateEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchHeadcoversState value)? initial,
    TResult? Function(_ErrorSearchHeadcoversState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchHeadcoversStateSearching value)? searching,
    TResult? Function(_SearchHeadcoversStateResult value)? result,
    TResult? Function(_SearchHeadcoversStateEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchHeadcoversState value)? initial,
    TResult Function(_ErrorSearchHeadcoversState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult Function(_SearchHeadcoversStateSearching value)? searching,
    TResult Function(_SearchHeadcoversStateResult value)? result,
    TResult Function(_SearchHeadcoversStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSearchHeadcoversState extends SearchHeadcoversState {
  factory _ErrorSearchHeadcoversState(final String message) =
      _$_ErrorSearchHeadcoversState;
  _ErrorSearchHeadcoversState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorSearchHeadcoversStateCopyWith<_$_ErrorSearchHeadcoversState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCategoriesStateCopyWith<$Res> {
  factory _$$LoadedCategoriesStateCopyWith(_$LoadedCategoriesState value,
          $Res Function(_$LoadedCategoriesState) then) =
      __$$LoadedCategoriesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel> categoryList});
}

/// @nodoc
class __$$LoadedCategoriesStateCopyWithImpl<$Res>
    extends _$SearchHeadcoversStateCopyWithImpl<$Res, _$LoadedCategoriesState>
    implements _$$LoadedCategoriesStateCopyWith<$Res> {
  __$$LoadedCategoriesStateCopyWithImpl(_$LoadedCategoriesState _value,
      $Res Function(_$LoadedCategoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_$LoadedCategoriesState(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$LoadedCategoriesState extends LoadedCategoriesState {
  _$LoadedCategoriesState({required final List<CategoryModel> categoryList})
      : _categoryList = categoryList,
        super._();

  final List<CategoryModel> _categoryList;
  @override
  List<CategoryModel> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'SearchHeadcoversState.loadedCategories(categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCategoriesState &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCategoriesStateCopyWith<_$LoadedCategoriesState> get copyWith =>
      __$$LoadedCategoriesStateCopyWithImpl<_$LoadedCategoriesState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> categoryList)
        loadedCategories,
    required TResult Function(List<String> queries) recentSearch,
    required TResult Function(String query, SearchTab tab) searching,
    required TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)
        result,
    required TResult Function() empty,
  }) {
    return loadedCategories(categoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult? Function(List<String> queries)? recentSearch,
    TResult? Function(String query, SearchTab tab)? searching,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult? Function()? empty,
  }) {
    return loadedCategories?.call(categoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult Function(List<String> queries)? recentSearch,
    TResult Function(String query, SearchTab tab)? searching,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(categoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchHeadcoversState value) initial,
    required TResult Function(_ErrorSearchHeadcoversState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchHeadcoversStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchHeadcoversStateSearching value) searching,
    required TResult Function(_SearchHeadcoversStateResult value) result,
    required TResult Function(_SearchHeadcoversStateEmpty value) empty,
  }) {
    return loadedCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchHeadcoversState value)? initial,
    TResult? Function(_ErrorSearchHeadcoversState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchHeadcoversStateSearching value)? searching,
    TResult? Function(_SearchHeadcoversStateResult value)? result,
    TResult? Function(_SearchHeadcoversStateEmpty value)? empty,
  }) {
    return loadedCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchHeadcoversState value)? initial,
    TResult Function(_ErrorSearchHeadcoversState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult Function(_SearchHeadcoversStateSearching value)? searching,
    TResult Function(_SearchHeadcoversStateResult value)? result,
    TResult Function(_SearchHeadcoversStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(this);
    }
    return orElse();
  }
}

abstract class LoadedCategoriesState extends SearchHeadcoversState {
  factory LoadedCategoriesState(
          {required final List<CategoryModel> categoryList}) =
      _$LoadedCategoriesState;
  LoadedCategoriesState._() : super._();

  List<CategoryModel> get categoryList;
  @JsonKey(ignore: true)
  _$$LoadedCategoriesStateCopyWith<_$LoadedCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchHeadcoversStateRecentSearchCopyWith<$Res> {
  factory _$$_SearchHeadcoversStateRecentSearchCopyWith(
          _$_SearchHeadcoversStateRecentSearch value,
          $Res Function(_$_SearchHeadcoversStateRecentSearch) then) =
      __$$_SearchHeadcoversStateRecentSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> queries});
}

/// @nodoc
class __$$_SearchHeadcoversStateRecentSearchCopyWithImpl<$Res>
    extends _$SearchHeadcoversStateCopyWithImpl<$Res,
        _$_SearchHeadcoversStateRecentSearch>
    implements _$$_SearchHeadcoversStateRecentSearchCopyWith<$Res> {
  __$$_SearchHeadcoversStateRecentSearchCopyWithImpl(
      _$_SearchHeadcoversStateRecentSearch _value,
      $Res Function(_$_SearchHeadcoversStateRecentSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queries = null,
  }) {
    return _then(_$_SearchHeadcoversStateRecentSearch(
      queries: null == queries
          ? _value._queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SearchHeadcoversStateRecentSearch
    extends _SearchHeadcoversStateRecentSearch {
  _$_SearchHeadcoversStateRecentSearch({required final List<String> queries})
      : _queries = queries,
        super._();

  final List<String> _queries;
  @override
  List<String> get queries {
    if (_queries is EqualUnmodifiableListView) return _queries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queries);
  }

  @override
  String toString() {
    return 'SearchHeadcoversState.recentSearch(queries: $queries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchHeadcoversStateRecentSearch &&
            const DeepCollectionEquality().equals(other._queries, _queries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchHeadcoversStateRecentSearchCopyWith<
          _$_SearchHeadcoversStateRecentSearch>
      get copyWith => __$$_SearchHeadcoversStateRecentSearchCopyWithImpl<
          _$_SearchHeadcoversStateRecentSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> categoryList)
        loadedCategories,
    required TResult Function(List<String> queries) recentSearch,
    required TResult Function(String query, SearchTab tab) searching,
    required TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)
        result,
    required TResult Function() empty,
  }) {
    return recentSearch(queries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult? Function(List<String> queries)? recentSearch,
    TResult? Function(String query, SearchTab tab)? searching,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult? Function()? empty,
  }) {
    return recentSearch?.call(queries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult Function(List<String> queries)? recentSearch,
    TResult Function(String query, SearchTab tab)? searching,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (recentSearch != null) {
      return recentSearch(queries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchHeadcoversState value) initial,
    required TResult Function(_ErrorSearchHeadcoversState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchHeadcoversStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchHeadcoversStateSearching value) searching,
    required TResult Function(_SearchHeadcoversStateResult value) result,
    required TResult Function(_SearchHeadcoversStateEmpty value) empty,
  }) {
    return recentSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchHeadcoversState value)? initial,
    TResult? Function(_ErrorSearchHeadcoversState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchHeadcoversStateSearching value)? searching,
    TResult? Function(_SearchHeadcoversStateResult value)? result,
    TResult? Function(_SearchHeadcoversStateEmpty value)? empty,
  }) {
    return recentSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchHeadcoversState value)? initial,
    TResult Function(_ErrorSearchHeadcoversState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult Function(_SearchHeadcoversStateSearching value)? searching,
    TResult Function(_SearchHeadcoversStateResult value)? result,
    TResult Function(_SearchHeadcoversStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (recentSearch != null) {
      return recentSearch(this);
    }
    return orElse();
  }
}

abstract class _SearchHeadcoversStateRecentSearch
    extends SearchHeadcoversState {
  factory _SearchHeadcoversStateRecentSearch(
          {required final List<String> queries}) =
      _$_SearchHeadcoversStateRecentSearch;
  _SearchHeadcoversStateRecentSearch._() : super._();

  List<String> get queries;
  @JsonKey(ignore: true)
  _$$_SearchHeadcoversStateRecentSearchCopyWith<
          _$_SearchHeadcoversStateRecentSearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchHeadcoversStateSearchingCopyWith<$Res> {
  factory _$$_SearchHeadcoversStateSearchingCopyWith(
          _$_SearchHeadcoversStateSearching value,
          $Res Function(_$_SearchHeadcoversStateSearching) then) =
      __$$_SearchHeadcoversStateSearchingCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, SearchTab tab});
}

/// @nodoc
class __$$_SearchHeadcoversStateSearchingCopyWithImpl<$Res>
    extends _$SearchHeadcoversStateCopyWithImpl<$Res,
        _$_SearchHeadcoversStateSearching>
    implements _$$_SearchHeadcoversStateSearchingCopyWith<$Res> {
  __$$_SearchHeadcoversStateSearchingCopyWithImpl(
      _$_SearchHeadcoversStateSearching _value,
      $Res Function(_$_SearchHeadcoversStateSearching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchHeadcoversStateSearching(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as SearchTab,
    ));
  }
}

/// @nodoc

class _$_SearchHeadcoversStateSearching
    extends _SearchHeadcoversStateSearching {
  _$_SearchHeadcoversStateSearching({this.query = '', this.tab = SearchTab.all})
      : super._();

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final SearchTab tab;

  @override
  String toString() {
    return 'SearchHeadcoversState.searching(query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchHeadcoversStateSearching &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchHeadcoversStateSearchingCopyWith<_$_SearchHeadcoversStateSearching>
      get copyWith => __$$_SearchHeadcoversStateSearchingCopyWithImpl<
          _$_SearchHeadcoversStateSearching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> categoryList)
        loadedCategories,
    required TResult Function(List<String> queries) recentSearch,
    required TResult Function(String query, SearchTab tab) searching,
    required TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)
        result,
    required TResult Function() empty,
  }) {
    return searching(query, tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult? Function(List<String> queries)? recentSearch,
    TResult? Function(String query, SearchTab tab)? searching,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult? Function()? empty,
  }) {
    return searching?.call(query, tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult Function(List<String> queries)? recentSearch,
    TResult Function(String query, SearchTab tab)? searching,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(query, tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchHeadcoversState value) initial,
    required TResult Function(_ErrorSearchHeadcoversState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchHeadcoversStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchHeadcoversStateSearching value) searching,
    required TResult Function(_SearchHeadcoversStateResult value) result,
    required TResult Function(_SearchHeadcoversStateEmpty value) empty,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchHeadcoversState value)? initial,
    TResult? Function(_ErrorSearchHeadcoversState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchHeadcoversStateSearching value)? searching,
    TResult? Function(_SearchHeadcoversStateResult value)? result,
    TResult? Function(_SearchHeadcoversStateEmpty value)? empty,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchHeadcoversState value)? initial,
    TResult Function(_ErrorSearchHeadcoversState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult Function(_SearchHeadcoversStateSearching value)? searching,
    TResult Function(_SearchHeadcoversStateResult value)? result,
    TResult Function(_SearchHeadcoversStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _SearchHeadcoversStateSearching extends SearchHeadcoversState {
  factory _SearchHeadcoversStateSearching(
      {final String query,
      final SearchTab tab}) = _$_SearchHeadcoversStateSearching;
  _SearchHeadcoversStateSearching._() : super._();

  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchHeadcoversStateSearchingCopyWith<_$_SearchHeadcoversStateSearching>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchHeadcoversStateResultCopyWith<$Res> {
  factory _$$_SearchHeadcoversStateResultCopyWith(
          _$_SearchHeadcoversStateResult value,
          $Res Function(_$_SearchHeadcoversStateResult) then) =
      __$$_SearchHeadcoversStateResultCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<SearchTab, List<CatalogItemModel>> result,
      String query,
      SearchTab tab});
}

/// @nodoc
class __$$_SearchHeadcoversStateResultCopyWithImpl<$Res>
    extends _$SearchHeadcoversStateCopyWithImpl<$Res,
        _$_SearchHeadcoversStateResult>
    implements _$$_SearchHeadcoversStateResultCopyWith<$Res> {
  __$$_SearchHeadcoversStateResultCopyWithImpl(
      _$_SearchHeadcoversStateResult _value,
      $Res Function(_$_SearchHeadcoversStateResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchHeadcoversStateResult(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<SearchTab, List<CatalogItemModel>>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as SearchTab,
    ));
  }
}

/// @nodoc

class _$_SearchHeadcoversStateResult extends _SearchHeadcoversStateResult {
  _$_SearchHeadcoversStateResult(
      {required final Map<SearchTab, List<CatalogItemModel>> result,
      this.query = '',
      this.tab = SearchTab.all})
      : _result = result,
        super._();

  final Map<SearchTab, List<CatalogItemModel>> _result;
  @override
  Map<SearchTab, List<CatalogItemModel>> get result {
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_result);
  }

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final SearchTab tab;

  @override
  String toString() {
    return 'SearchHeadcoversState.result(result: $result, query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchHeadcoversStateResult &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_result), query, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchHeadcoversStateResultCopyWith<_$_SearchHeadcoversStateResult>
      get copyWith => __$$_SearchHeadcoversStateResultCopyWithImpl<
          _$_SearchHeadcoversStateResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> categoryList)
        loadedCategories,
    required TResult Function(List<String> queries) recentSearch,
    required TResult Function(String query, SearchTab tab) searching,
    required TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)
        result,
    required TResult Function() empty,
  }) {
    return result(this.result, query, tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult? Function(List<String> queries)? recentSearch,
    TResult? Function(String query, SearchTab tab)? searching,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult? Function()? empty,
  }) {
    return result?.call(this.result, query, tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult Function(List<String> queries)? recentSearch,
    TResult Function(String query, SearchTab tab)? searching,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this.result, query, tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchHeadcoversState value) initial,
    required TResult Function(_ErrorSearchHeadcoversState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchHeadcoversStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchHeadcoversStateSearching value) searching,
    required TResult Function(_SearchHeadcoversStateResult value) result,
    required TResult Function(_SearchHeadcoversStateEmpty value) empty,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchHeadcoversState value)? initial,
    TResult? Function(_ErrorSearchHeadcoversState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchHeadcoversStateSearching value)? searching,
    TResult? Function(_SearchHeadcoversStateResult value)? result,
    TResult? Function(_SearchHeadcoversStateEmpty value)? empty,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchHeadcoversState value)? initial,
    TResult Function(_ErrorSearchHeadcoversState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult Function(_SearchHeadcoversStateSearching value)? searching,
    TResult Function(_SearchHeadcoversStateResult value)? result,
    TResult Function(_SearchHeadcoversStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _SearchHeadcoversStateResult extends SearchHeadcoversState {
  factory _SearchHeadcoversStateResult(
      {required final Map<SearchTab, List<CatalogItemModel>> result,
      final String query,
      final SearchTab tab}) = _$_SearchHeadcoversStateResult;
  _SearchHeadcoversStateResult._() : super._();

  Map<SearchTab, List<CatalogItemModel>> get result;
  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchHeadcoversStateResultCopyWith<_$_SearchHeadcoversStateResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchHeadcoversStateEmptyCopyWith<$Res> {
  factory _$$_SearchHeadcoversStateEmptyCopyWith(
          _$_SearchHeadcoversStateEmpty value,
          $Res Function(_$_SearchHeadcoversStateEmpty) then) =
      __$$_SearchHeadcoversStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchHeadcoversStateEmptyCopyWithImpl<$Res>
    extends _$SearchHeadcoversStateCopyWithImpl<$Res,
        _$_SearchHeadcoversStateEmpty>
    implements _$$_SearchHeadcoversStateEmptyCopyWith<$Res> {
  __$$_SearchHeadcoversStateEmptyCopyWithImpl(
      _$_SearchHeadcoversStateEmpty _value,
      $Res Function(_$_SearchHeadcoversStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchHeadcoversStateEmpty extends _SearchHeadcoversStateEmpty {
  _$_SearchHeadcoversStateEmpty() : super._();

  @override
  String toString() {
    return 'SearchHeadcoversState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchHeadcoversStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CategoryModel> categoryList)
        loadedCategories,
    required TResult Function(List<String> queries) recentSearch,
    required TResult Function(String query, SearchTab tab) searching,
    required TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)
        result,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult? Function(List<String> queries)? recentSearch,
    TResult? Function(String query, SearchTab tab)? searching,
    TResult? Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CategoryModel> categoryList)? loadedCategories,
    TResult Function(List<String> queries)? recentSearch,
    TResult Function(String query, SearchTab tab)? searching,
    TResult Function(Map<SearchTab, List<CatalogItemModel>> result,
            String query, SearchTab tab)?
        result,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearchHeadcoversState value) initial,
    required TResult Function(_ErrorSearchHeadcoversState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchHeadcoversStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchHeadcoversStateSearching value) searching,
    required TResult Function(_SearchHeadcoversStateResult value) result,
    required TResult Function(_SearchHeadcoversStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchHeadcoversState value)? initial,
    TResult? Function(_ErrorSearchHeadcoversState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchHeadcoversStateSearching value)? searching,
    TResult? Function(_SearchHeadcoversStateResult value)? result,
    TResult? Function(_SearchHeadcoversStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchHeadcoversState value)? initial,
    TResult Function(_ErrorSearchHeadcoversState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchHeadcoversStateRecentSearch value)? recentSearch,
    TResult Function(_SearchHeadcoversStateSearching value)? searching,
    TResult Function(_SearchHeadcoversStateResult value)? result,
    TResult Function(_SearchHeadcoversStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _SearchHeadcoversStateEmpty extends SearchHeadcoversState {
  factory _SearchHeadcoversStateEmpty() = _$_SearchHeadcoversStateEmpty;
  _SearchHeadcoversStateEmpty._() : super._();
}
