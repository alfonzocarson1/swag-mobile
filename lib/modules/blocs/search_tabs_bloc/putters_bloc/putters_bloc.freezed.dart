// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'putters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPuttersEvent {
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
    required TResult Function(_SearchPuttersEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchPuttersEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPuttersEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPuttersEventCopyWith<SearchPuttersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPuttersEventCopyWith<$Res> {
  factory $SearchPuttersEventCopyWith(
          SearchPuttersEvent value, $Res Function(SearchPuttersEvent) then) =
      _$SearchPuttersEventCopyWithImpl<$Res, SearchPuttersEvent>;
  @useResult
  $Res call({SearchRequestPayloadModel payload, FiltersPayload param});

  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class _$SearchPuttersEventCopyWithImpl<$Res, $Val extends SearchPuttersEvent>
    implements $SearchPuttersEventCopyWith<$Res> {
  _$SearchPuttersEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_SearchPuttersEventCopyWith<$Res>
    implements $SearchPuttersEventCopyWith<$Res> {
  factory _$$_SearchPuttersEventCopyWith(_$_SearchPuttersEvent value,
          $Res Function(_$_SearchPuttersEvent) then) =
      __$$_SearchPuttersEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchRequestPayloadModel payload, FiltersPayload param});

  @override
  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_SearchPuttersEventCopyWithImpl<$Res>
    extends _$SearchPuttersEventCopyWithImpl<$Res, _$_SearchPuttersEvent>
    implements _$$_SearchPuttersEventCopyWith<$Res> {
  __$$_SearchPuttersEventCopyWithImpl(
      _$_SearchPuttersEvent _value, $Res Function(_$_SearchPuttersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? param = null,
  }) {
    return _then(_$_SearchPuttersEvent(
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

class _$_SearchPuttersEvent implements _SearchPuttersEvent {
  const _$_SearchPuttersEvent(this.payload, this.param);

  @override
  final SearchRequestPayloadModel payload;
  @override
  final FiltersPayload param;

  @override
  String toString() {
    return 'SearchPuttersEvent.search(payload: $payload, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPuttersEvent &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPuttersEventCopyWith<_$_SearchPuttersEvent> get copyWith =>
      __$$_SearchPuttersEventCopyWithImpl<_$_SearchPuttersEvent>(
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
    required TResult Function(_SearchPuttersEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchPuttersEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPuttersEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchPuttersEvent implements SearchPuttersEvent {
  const factory _SearchPuttersEvent(
          final SearchRequestPayloadModel payload, final FiltersPayload param) =
      _$_SearchPuttersEvent;

  @override
  SearchRequestPayloadModel get payload;
  @override
  FiltersPayload get param;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPuttersEventCopyWith<_$_SearchPuttersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchPuttersState {
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
    required TResult Function(_InitialSearchPuttersState value) initial,
    required TResult Function(_ErrorSearchPuttersState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchPuttersStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchPuttersStateSearching value) searching,
    required TResult Function(_SearchPuttersStateResult value) result,
    required TResult Function(_SearchPuttersStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchPuttersState value)? initial,
    TResult? Function(_ErrorSearchPuttersState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchPuttersStateSearching value)? searching,
    TResult? Function(_SearchPuttersStateResult value)? result,
    TResult? Function(_SearchPuttersStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchPuttersState value)? initial,
    TResult Function(_ErrorSearchPuttersState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult Function(_SearchPuttersStateSearching value)? searching,
    TResult Function(_SearchPuttersStateResult value)? result,
    TResult Function(_SearchPuttersStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPuttersStateCopyWith<$Res> {
  factory $SearchPuttersStateCopyWith(
          SearchPuttersState value, $Res Function(SearchPuttersState) then) =
      _$SearchPuttersStateCopyWithImpl<$Res, SearchPuttersState>;
}

/// @nodoc
class _$SearchPuttersStateCopyWithImpl<$Res, $Val extends SearchPuttersState>
    implements $SearchPuttersStateCopyWith<$Res> {
  _$SearchPuttersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSearchPuttersStateCopyWith<$Res> {
  factory _$$_InitialSearchPuttersStateCopyWith(
          _$_InitialSearchPuttersState value,
          $Res Function(_$_InitialSearchPuttersState) then) =
      __$$_InitialSearchPuttersStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSearchPuttersStateCopyWithImpl<$Res>
    extends _$SearchPuttersStateCopyWithImpl<$Res, _$_InitialSearchPuttersState>
    implements _$$_InitialSearchPuttersStateCopyWith<$Res> {
  __$$_InitialSearchPuttersStateCopyWithImpl(
      _$_InitialSearchPuttersState _value,
      $Res Function(_$_InitialSearchPuttersState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSearchPuttersState extends _InitialSearchPuttersState {
  _$_InitialSearchPuttersState() : super._();

  @override
  String toString() {
    return 'SearchPuttersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSearchPuttersState);
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
    required TResult Function(_InitialSearchPuttersState value) initial,
    required TResult Function(_ErrorSearchPuttersState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchPuttersStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchPuttersStateSearching value) searching,
    required TResult Function(_SearchPuttersStateResult value) result,
    required TResult Function(_SearchPuttersStateEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchPuttersState value)? initial,
    TResult? Function(_ErrorSearchPuttersState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchPuttersStateSearching value)? searching,
    TResult? Function(_SearchPuttersStateResult value)? result,
    TResult? Function(_SearchPuttersStateEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchPuttersState value)? initial,
    TResult Function(_ErrorSearchPuttersState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult Function(_SearchPuttersStateSearching value)? searching,
    TResult Function(_SearchPuttersStateResult value)? result,
    TResult Function(_SearchPuttersStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchPuttersState extends SearchPuttersState {
  factory _InitialSearchPuttersState() = _$_InitialSearchPuttersState;
  _InitialSearchPuttersState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorSearchPuttersStateCopyWith<$Res> {
  factory _$$_ErrorSearchPuttersStateCopyWith(_$_ErrorSearchPuttersState value,
          $Res Function(_$_ErrorSearchPuttersState) then) =
      __$$_ErrorSearchPuttersStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorSearchPuttersStateCopyWithImpl<$Res>
    extends _$SearchPuttersStateCopyWithImpl<$Res, _$_ErrorSearchPuttersState>
    implements _$$_ErrorSearchPuttersStateCopyWith<$Res> {
  __$$_ErrorSearchPuttersStateCopyWithImpl(_$_ErrorSearchPuttersState _value,
      $Res Function(_$_ErrorSearchPuttersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorSearchPuttersState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorSearchPuttersState extends _ErrorSearchPuttersState {
  _$_ErrorSearchPuttersState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SearchPuttersState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSearchPuttersState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSearchPuttersStateCopyWith<_$_ErrorSearchPuttersState>
      get copyWith =>
          __$$_ErrorSearchPuttersStateCopyWithImpl<_$_ErrorSearchPuttersState>(
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
    required TResult Function(_InitialSearchPuttersState value) initial,
    required TResult Function(_ErrorSearchPuttersState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchPuttersStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchPuttersStateSearching value) searching,
    required TResult Function(_SearchPuttersStateResult value) result,
    required TResult Function(_SearchPuttersStateEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchPuttersState value)? initial,
    TResult? Function(_ErrorSearchPuttersState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchPuttersStateSearching value)? searching,
    TResult? Function(_SearchPuttersStateResult value)? result,
    TResult? Function(_SearchPuttersStateEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchPuttersState value)? initial,
    TResult Function(_ErrorSearchPuttersState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult Function(_SearchPuttersStateSearching value)? searching,
    TResult Function(_SearchPuttersStateResult value)? result,
    TResult Function(_SearchPuttersStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSearchPuttersState extends SearchPuttersState {
  factory _ErrorSearchPuttersState(final String message) =
      _$_ErrorSearchPuttersState;
  _ErrorSearchPuttersState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorSearchPuttersStateCopyWith<_$_ErrorSearchPuttersState>
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
    extends _$SearchPuttersStateCopyWithImpl<$Res, _$LoadedCategoriesState>
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
    return 'SearchPuttersState.loadedCategories(categoryList: $categoryList)';
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
    required TResult Function(_InitialSearchPuttersState value) initial,
    required TResult Function(_ErrorSearchPuttersState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchPuttersStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchPuttersStateSearching value) searching,
    required TResult Function(_SearchPuttersStateResult value) result,
    required TResult Function(_SearchPuttersStateEmpty value) empty,
  }) {
    return loadedCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchPuttersState value)? initial,
    TResult? Function(_ErrorSearchPuttersState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchPuttersStateSearching value)? searching,
    TResult? Function(_SearchPuttersStateResult value)? result,
    TResult? Function(_SearchPuttersStateEmpty value)? empty,
  }) {
    return loadedCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchPuttersState value)? initial,
    TResult Function(_ErrorSearchPuttersState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult Function(_SearchPuttersStateSearching value)? searching,
    TResult Function(_SearchPuttersStateResult value)? result,
    TResult Function(_SearchPuttersStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(this);
    }
    return orElse();
  }
}

abstract class LoadedCategoriesState extends SearchPuttersState {
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
abstract class _$$_SearchPuttersStateRecentSearchCopyWith<$Res> {
  factory _$$_SearchPuttersStateRecentSearchCopyWith(
          _$_SearchPuttersStateRecentSearch value,
          $Res Function(_$_SearchPuttersStateRecentSearch) then) =
      __$$_SearchPuttersStateRecentSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> queries});
}

/// @nodoc
class __$$_SearchPuttersStateRecentSearchCopyWithImpl<$Res>
    extends _$SearchPuttersStateCopyWithImpl<$Res,
        _$_SearchPuttersStateRecentSearch>
    implements _$$_SearchPuttersStateRecentSearchCopyWith<$Res> {
  __$$_SearchPuttersStateRecentSearchCopyWithImpl(
      _$_SearchPuttersStateRecentSearch _value,
      $Res Function(_$_SearchPuttersStateRecentSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queries = null,
  }) {
    return _then(_$_SearchPuttersStateRecentSearch(
      queries: null == queries
          ? _value._queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SearchPuttersStateRecentSearch
    extends _SearchPuttersStateRecentSearch {
  _$_SearchPuttersStateRecentSearch({required final List<String> queries})
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
    return 'SearchPuttersState.recentSearch(queries: $queries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPuttersStateRecentSearch &&
            const DeepCollectionEquality().equals(other._queries, _queries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPuttersStateRecentSearchCopyWith<_$_SearchPuttersStateRecentSearch>
      get copyWith => __$$_SearchPuttersStateRecentSearchCopyWithImpl<
          _$_SearchPuttersStateRecentSearch>(this, _$identity);

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
    required TResult Function(_InitialSearchPuttersState value) initial,
    required TResult Function(_ErrorSearchPuttersState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchPuttersStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchPuttersStateSearching value) searching,
    required TResult Function(_SearchPuttersStateResult value) result,
    required TResult Function(_SearchPuttersStateEmpty value) empty,
  }) {
    return recentSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchPuttersState value)? initial,
    TResult? Function(_ErrorSearchPuttersState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchPuttersStateSearching value)? searching,
    TResult? Function(_SearchPuttersStateResult value)? result,
    TResult? Function(_SearchPuttersStateEmpty value)? empty,
  }) {
    return recentSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchPuttersState value)? initial,
    TResult Function(_ErrorSearchPuttersState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult Function(_SearchPuttersStateSearching value)? searching,
    TResult Function(_SearchPuttersStateResult value)? result,
    TResult Function(_SearchPuttersStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (recentSearch != null) {
      return recentSearch(this);
    }
    return orElse();
  }
}

abstract class _SearchPuttersStateRecentSearch extends SearchPuttersState {
  factory _SearchPuttersStateRecentSearch(
          {required final List<String> queries}) =
      _$_SearchPuttersStateRecentSearch;
  _SearchPuttersStateRecentSearch._() : super._();

  List<String> get queries;
  @JsonKey(ignore: true)
  _$$_SearchPuttersStateRecentSearchCopyWith<_$_SearchPuttersStateRecentSearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchPuttersStateSearchingCopyWith<$Res> {
  factory _$$_SearchPuttersStateSearchingCopyWith(
          _$_SearchPuttersStateSearching value,
          $Res Function(_$_SearchPuttersStateSearching) then) =
      __$$_SearchPuttersStateSearchingCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, SearchTab tab});
}

/// @nodoc
class __$$_SearchPuttersStateSearchingCopyWithImpl<$Res>
    extends _$SearchPuttersStateCopyWithImpl<$Res,
        _$_SearchPuttersStateSearching>
    implements _$$_SearchPuttersStateSearchingCopyWith<$Res> {
  __$$_SearchPuttersStateSearchingCopyWithImpl(
      _$_SearchPuttersStateSearching _value,
      $Res Function(_$_SearchPuttersStateSearching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchPuttersStateSearching(
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

class _$_SearchPuttersStateSearching extends _SearchPuttersStateSearching {
  _$_SearchPuttersStateSearching({this.query = '', this.tab = SearchTab.all})
      : super._();

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final SearchTab tab;

  @override
  String toString() {
    return 'SearchPuttersState.searching(query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPuttersStateSearching &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPuttersStateSearchingCopyWith<_$_SearchPuttersStateSearching>
      get copyWith => __$$_SearchPuttersStateSearchingCopyWithImpl<
          _$_SearchPuttersStateSearching>(this, _$identity);

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
    required TResult Function(_InitialSearchPuttersState value) initial,
    required TResult Function(_ErrorSearchPuttersState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchPuttersStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchPuttersStateSearching value) searching,
    required TResult Function(_SearchPuttersStateResult value) result,
    required TResult Function(_SearchPuttersStateEmpty value) empty,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchPuttersState value)? initial,
    TResult? Function(_ErrorSearchPuttersState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchPuttersStateSearching value)? searching,
    TResult? Function(_SearchPuttersStateResult value)? result,
    TResult? Function(_SearchPuttersStateEmpty value)? empty,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchPuttersState value)? initial,
    TResult Function(_ErrorSearchPuttersState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult Function(_SearchPuttersStateSearching value)? searching,
    TResult Function(_SearchPuttersStateResult value)? result,
    TResult Function(_SearchPuttersStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _SearchPuttersStateSearching extends SearchPuttersState {
  factory _SearchPuttersStateSearching(
      {final String query,
      final SearchTab tab}) = _$_SearchPuttersStateSearching;
  _SearchPuttersStateSearching._() : super._();

  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchPuttersStateSearchingCopyWith<_$_SearchPuttersStateSearching>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchPuttersStateResultCopyWith<$Res> {
  factory _$$_SearchPuttersStateResultCopyWith(
          _$_SearchPuttersStateResult value,
          $Res Function(_$_SearchPuttersStateResult) then) =
      __$$_SearchPuttersStateResultCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<SearchTab, List<CatalogItemModel>> result,
      String query,
      SearchTab tab});
}

/// @nodoc
class __$$_SearchPuttersStateResultCopyWithImpl<$Res>
    extends _$SearchPuttersStateCopyWithImpl<$Res, _$_SearchPuttersStateResult>
    implements _$$_SearchPuttersStateResultCopyWith<$Res> {
  __$$_SearchPuttersStateResultCopyWithImpl(_$_SearchPuttersStateResult _value,
      $Res Function(_$_SearchPuttersStateResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchPuttersStateResult(
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

class _$_SearchPuttersStateResult extends _SearchPuttersStateResult {
  _$_SearchPuttersStateResult(
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
    return 'SearchPuttersState.result(result: $result, query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPuttersStateResult &&
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
  _$$_SearchPuttersStateResultCopyWith<_$_SearchPuttersStateResult>
      get copyWith => __$$_SearchPuttersStateResultCopyWithImpl<
          _$_SearchPuttersStateResult>(this, _$identity);

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
    required TResult Function(_InitialSearchPuttersState value) initial,
    required TResult Function(_ErrorSearchPuttersState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchPuttersStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchPuttersStateSearching value) searching,
    required TResult Function(_SearchPuttersStateResult value) result,
    required TResult Function(_SearchPuttersStateEmpty value) empty,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchPuttersState value)? initial,
    TResult? Function(_ErrorSearchPuttersState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchPuttersStateSearching value)? searching,
    TResult? Function(_SearchPuttersStateResult value)? result,
    TResult? Function(_SearchPuttersStateEmpty value)? empty,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchPuttersState value)? initial,
    TResult Function(_ErrorSearchPuttersState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult Function(_SearchPuttersStateSearching value)? searching,
    TResult Function(_SearchPuttersStateResult value)? result,
    TResult Function(_SearchPuttersStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _SearchPuttersStateResult extends SearchPuttersState {
  factory _SearchPuttersStateResult(
      {required final Map<SearchTab, List<CatalogItemModel>> result,
      final String query,
      final SearchTab tab}) = _$_SearchPuttersStateResult;
  _SearchPuttersStateResult._() : super._();

  Map<SearchTab, List<CatalogItemModel>> get result;
  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchPuttersStateResultCopyWith<_$_SearchPuttersStateResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchPuttersStateEmptyCopyWith<$Res> {
  factory _$$_SearchPuttersStateEmptyCopyWith(_$_SearchPuttersStateEmpty value,
          $Res Function(_$_SearchPuttersStateEmpty) then) =
      __$$_SearchPuttersStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchPuttersStateEmptyCopyWithImpl<$Res>
    extends _$SearchPuttersStateCopyWithImpl<$Res, _$_SearchPuttersStateEmpty>
    implements _$$_SearchPuttersStateEmptyCopyWith<$Res> {
  __$$_SearchPuttersStateEmptyCopyWithImpl(_$_SearchPuttersStateEmpty _value,
      $Res Function(_$_SearchPuttersStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchPuttersStateEmpty extends _SearchPuttersStateEmpty {
  _$_SearchPuttersStateEmpty() : super._();

  @override
  String toString() {
    return 'SearchPuttersState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPuttersStateEmpty);
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
    required TResult Function(_InitialSearchPuttersState value) initial,
    required TResult Function(_ErrorSearchPuttersState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchPuttersStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchPuttersStateSearching value) searching,
    required TResult Function(_SearchPuttersStateResult value) result,
    required TResult Function(_SearchPuttersStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchPuttersState value)? initial,
    TResult? Function(_ErrorSearchPuttersState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchPuttersStateSearching value)? searching,
    TResult? Function(_SearchPuttersStateResult value)? result,
    TResult? Function(_SearchPuttersStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchPuttersState value)? initial,
    TResult Function(_ErrorSearchPuttersState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchPuttersStateRecentSearch value)? recentSearch,
    TResult Function(_SearchPuttersStateSearching value)? searching,
    TResult Function(_SearchPuttersStateResult value)? result,
    TResult Function(_SearchPuttersStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _SearchPuttersStateEmpty extends SearchPuttersState {
  factory _SearchPuttersStateEmpty() = _$_SearchPuttersStateEmpty;
  _SearchPuttersStateEmpty._() : super._();
}
