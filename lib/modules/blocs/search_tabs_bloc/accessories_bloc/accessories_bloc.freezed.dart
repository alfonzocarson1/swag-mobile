// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accessories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchAccessoriesEvent {
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
    required TResult Function(_SearchAccessoriesEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchAccessoriesEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchAccessoriesEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAccessoriesEventCopyWith<SearchAccessoriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAccessoriesEventCopyWith<$Res> {
  factory $SearchAccessoriesEventCopyWith(SearchAccessoriesEvent value,
          $Res Function(SearchAccessoriesEvent) then) =
      _$SearchAccessoriesEventCopyWithImpl<$Res, SearchAccessoriesEvent>;
  @useResult
  $Res call({SearchRequestPayloadModel payload, FiltersPayload param});

  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class _$SearchAccessoriesEventCopyWithImpl<$Res,
        $Val extends SearchAccessoriesEvent>
    implements $SearchAccessoriesEventCopyWith<$Res> {
  _$SearchAccessoriesEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_SearchAccessoriesEventCopyWith<$Res>
    implements $SearchAccessoriesEventCopyWith<$Res> {
  factory _$$_SearchAccessoriesEventCopyWith(_$_SearchAccessoriesEvent value,
          $Res Function(_$_SearchAccessoriesEvent) then) =
      __$$_SearchAccessoriesEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchRequestPayloadModel payload, FiltersPayload param});

  @override
  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_SearchAccessoriesEventCopyWithImpl<$Res>
    extends _$SearchAccessoriesEventCopyWithImpl<$Res,
        _$_SearchAccessoriesEvent>
    implements _$$_SearchAccessoriesEventCopyWith<$Res> {
  __$$_SearchAccessoriesEventCopyWithImpl(_$_SearchAccessoriesEvent _value,
      $Res Function(_$_SearchAccessoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? param = null,
  }) {
    return _then(_$_SearchAccessoriesEvent(
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

class _$_SearchAccessoriesEvent implements _SearchAccessoriesEvent {
  const _$_SearchAccessoriesEvent(this.payload, this.param);

  @override
  final SearchRequestPayloadModel payload;
  @override
  final FiltersPayload param;

  @override
  String toString() {
    return 'SearchAccessoriesEvent.search(payload: $payload, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAccessoriesEvent &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAccessoriesEventCopyWith<_$_SearchAccessoriesEvent> get copyWith =>
      __$$_SearchAccessoriesEventCopyWithImpl<_$_SearchAccessoriesEvent>(
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
    required TResult Function(_SearchAccessoriesEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchAccessoriesEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchAccessoriesEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchAccessoriesEvent implements SearchAccessoriesEvent {
  const factory _SearchAccessoriesEvent(
          final SearchRequestPayloadModel payload, final FiltersPayload param) =
      _$_SearchAccessoriesEvent;

  @override
  SearchRequestPayloadModel get payload;
  @override
  FiltersPayload get param;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAccessoriesEventCopyWith<_$_SearchAccessoriesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchAccessoriesState {
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
    required TResult Function(_InitialSearchAccessoriesState value) initial,
    required TResult Function(_ErrorSearchAccessoriesState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchAccessoriesStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchAccessoriesStateSearching value) searching,
    required TResult Function(_SearchAccessoriesStateResult value) result,
    required TResult Function(_SearchAccessoriesStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAccessoriesState value)? initial,
    TResult? Function(_ErrorSearchAccessoriesState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchAccessoriesStateSearching value)? searching,
    TResult? Function(_SearchAccessoriesStateResult value)? result,
    TResult? Function(_SearchAccessoriesStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAccessoriesState value)? initial,
    TResult Function(_ErrorSearchAccessoriesState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult Function(_SearchAccessoriesStateSearching value)? searching,
    TResult Function(_SearchAccessoriesStateResult value)? result,
    TResult Function(_SearchAccessoriesStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAccessoriesStateCopyWith<$Res> {
  factory $SearchAccessoriesStateCopyWith(SearchAccessoriesState value,
          $Res Function(SearchAccessoriesState) then) =
      _$SearchAccessoriesStateCopyWithImpl<$Res, SearchAccessoriesState>;
}

/// @nodoc
class _$SearchAccessoriesStateCopyWithImpl<$Res,
        $Val extends SearchAccessoriesState>
    implements $SearchAccessoriesStateCopyWith<$Res> {
  _$SearchAccessoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSearchAccessoriesStateCopyWith<$Res> {
  factory _$$_InitialSearchAccessoriesStateCopyWith(
          _$_InitialSearchAccessoriesState value,
          $Res Function(_$_InitialSearchAccessoriesState) then) =
      __$$_InitialSearchAccessoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSearchAccessoriesStateCopyWithImpl<$Res>
    extends _$SearchAccessoriesStateCopyWithImpl<$Res,
        _$_InitialSearchAccessoriesState>
    implements _$$_InitialSearchAccessoriesStateCopyWith<$Res> {
  __$$_InitialSearchAccessoriesStateCopyWithImpl(
      _$_InitialSearchAccessoriesState _value,
      $Res Function(_$_InitialSearchAccessoriesState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSearchAccessoriesState extends _InitialSearchAccessoriesState {
  _$_InitialSearchAccessoriesState() : super._();

  @override
  String toString() {
    return 'SearchAccessoriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSearchAccessoriesState);
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
    required TResult Function(_InitialSearchAccessoriesState value) initial,
    required TResult Function(_ErrorSearchAccessoriesState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchAccessoriesStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchAccessoriesStateSearching value) searching,
    required TResult Function(_SearchAccessoriesStateResult value) result,
    required TResult Function(_SearchAccessoriesStateEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAccessoriesState value)? initial,
    TResult? Function(_ErrorSearchAccessoriesState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchAccessoriesStateSearching value)? searching,
    TResult? Function(_SearchAccessoriesStateResult value)? result,
    TResult? Function(_SearchAccessoriesStateEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAccessoriesState value)? initial,
    TResult Function(_ErrorSearchAccessoriesState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult Function(_SearchAccessoriesStateSearching value)? searching,
    TResult Function(_SearchAccessoriesStateResult value)? result,
    TResult Function(_SearchAccessoriesStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchAccessoriesState extends SearchAccessoriesState {
  factory _InitialSearchAccessoriesState() = _$_InitialSearchAccessoriesState;
  _InitialSearchAccessoriesState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorSearchAccessoriesStateCopyWith<$Res> {
  factory _$$_ErrorSearchAccessoriesStateCopyWith(
          _$_ErrorSearchAccessoriesState value,
          $Res Function(_$_ErrorSearchAccessoriesState) then) =
      __$$_ErrorSearchAccessoriesStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorSearchAccessoriesStateCopyWithImpl<$Res>
    extends _$SearchAccessoriesStateCopyWithImpl<$Res,
        _$_ErrorSearchAccessoriesState>
    implements _$$_ErrorSearchAccessoriesStateCopyWith<$Res> {
  __$$_ErrorSearchAccessoriesStateCopyWithImpl(
      _$_ErrorSearchAccessoriesState _value,
      $Res Function(_$_ErrorSearchAccessoriesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorSearchAccessoriesState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorSearchAccessoriesState extends _ErrorSearchAccessoriesState {
  _$_ErrorSearchAccessoriesState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SearchAccessoriesState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSearchAccessoriesState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSearchAccessoriesStateCopyWith<_$_ErrorSearchAccessoriesState>
      get copyWith => __$$_ErrorSearchAccessoriesStateCopyWithImpl<
          _$_ErrorSearchAccessoriesState>(this, _$identity);

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
    required TResult Function(_InitialSearchAccessoriesState value) initial,
    required TResult Function(_ErrorSearchAccessoriesState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchAccessoriesStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchAccessoriesStateSearching value) searching,
    required TResult Function(_SearchAccessoriesStateResult value) result,
    required TResult Function(_SearchAccessoriesStateEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAccessoriesState value)? initial,
    TResult? Function(_ErrorSearchAccessoriesState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchAccessoriesStateSearching value)? searching,
    TResult? Function(_SearchAccessoriesStateResult value)? result,
    TResult? Function(_SearchAccessoriesStateEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAccessoriesState value)? initial,
    TResult Function(_ErrorSearchAccessoriesState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult Function(_SearchAccessoriesStateSearching value)? searching,
    TResult Function(_SearchAccessoriesStateResult value)? result,
    TResult Function(_SearchAccessoriesStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSearchAccessoriesState extends SearchAccessoriesState {
  factory _ErrorSearchAccessoriesState(final String message) =
      _$_ErrorSearchAccessoriesState;
  _ErrorSearchAccessoriesState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorSearchAccessoriesStateCopyWith<_$_ErrorSearchAccessoriesState>
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
    extends _$SearchAccessoriesStateCopyWithImpl<$Res, _$LoadedCategoriesState>
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
    return 'SearchAccessoriesState.loadedCategories(categoryList: $categoryList)';
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
    required TResult Function(_InitialSearchAccessoriesState value) initial,
    required TResult Function(_ErrorSearchAccessoriesState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchAccessoriesStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchAccessoriesStateSearching value) searching,
    required TResult Function(_SearchAccessoriesStateResult value) result,
    required TResult Function(_SearchAccessoriesStateEmpty value) empty,
  }) {
    return loadedCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAccessoriesState value)? initial,
    TResult? Function(_ErrorSearchAccessoriesState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchAccessoriesStateSearching value)? searching,
    TResult? Function(_SearchAccessoriesStateResult value)? result,
    TResult? Function(_SearchAccessoriesStateEmpty value)? empty,
  }) {
    return loadedCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAccessoriesState value)? initial,
    TResult Function(_ErrorSearchAccessoriesState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult Function(_SearchAccessoriesStateSearching value)? searching,
    TResult Function(_SearchAccessoriesStateResult value)? result,
    TResult Function(_SearchAccessoriesStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(this);
    }
    return orElse();
  }
}

abstract class LoadedCategoriesState extends SearchAccessoriesState {
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
abstract class _$$_SearchAccessoriesStateRecentSearchCopyWith<$Res> {
  factory _$$_SearchAccessoriesStateRecentSearchCopyWith(
          _$_SearchAccessoriesStateRecentSearch value,
          $Res Function(_$_SearchAccessoriesStateRecentSearch) then) =
      __$$_SearchAccessoriesStateRecentSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> queries});
}

/// @nodoc
class __$$_SearchAccessoriesStateRecentSearchCopyWithImpl<$Res>
    extends _$SearchAccessoriesStateCopyWithImpl<$Res,
        _$_SearchAccessoriesStateRecentSearch>
    implements _$$_SearchAccessoriesStateRecentSearchCopyWith<$Res> {
  __$$_SearchAccessoriesStateRecentSearchCopyWithImpl(
      _$_SearchAccessoriesStateRecentSearch _value,
      $Res Function(_$_SearchAccessoriesStateRecentSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queries = null,
  }) {
    return _then(_$_SearchAccessoriesStateRecentSearch(
      queries: null == queries
          ? _value._queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SearchAccessoriesStateRecentSearch
    extends _SearchAccessoriesStateRecentSearch {
  _$_SearchAccessoriesStateRecentSearch({required final List<String> queries})
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
    return 'SearchAccessoriesState.recentSearch(queries: $queries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAccessoriesStateRecentSearch &&
            const DeepCollectionEquality().equals(other._queries, _queries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAccessoriesStateRecentSearchCopyWith<
          _$_SearchAccessoriesStateRecentSearch>
      get copyWith => __$$_SearchAccessoriesStateRecentSearchCopyWithImpl<
          _$_SearchAccessoriesStateRecentSearch>(this, _$identity);

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
    required TResult Function(_InitialSearchAccessoriesState value) initial,
    required TResult Function(_ErrorSearchAccessoriesState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchAccessoriesStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchAccessoriesStateSearching value) searching,
    required TResult Function(_SearchAccessoriesStateResult value) result,
    required TResult Function(_SearchAccessoriesStateEmpty value) empty,
  }) {
    return recentSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAccessoriesState value)? initial,
    TResult? Function(_ErrorSearchAccessoriesState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchAccessoriesStateSearching value)? searching,
    TResult? Function(_SearchAccessoriesStateResult value)? result,
    TResult? Function(_SearchAccessoriesStateEmpty value)? empty,
  }) {
    return recentSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAccessoriesState value)? initial,
    TResult Function(_ErrorSearchAccessoriesState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult Function(_SearchAccessoriesStateSearching value)? searching,
    TResult Function(_SearchAccessoriesStateResult value)? result,
    TResult Function(_SearchAccessoriesStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (recentSearch != null) {
      return recentSearch(this);
    }
    return orElse();
  }
}

abstract class _SearchAccessoriesStateRecentSearch
    extends SearchAccessoriesState {
  factory _SearchAccessoriesStateRecentSearch(
          {required final List<String> queries}) =
      _$_SearchAccessoriesStateRecentSearch;
  _SearchAccessoriesStateRecentSearch._() : super._();

  List<String> get queries;
  @JsonKey(ignore: true)
  _$$_SearchAccessoriesStateRecentSearchCopyWith<
          _$_SearchAccessoriesStateRecentSearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchAccessoriesStateSearchingCopyWith<$Res> {
  factory _$$_SearchAccessoriesStateSearchingCopyWith(
          _$_SearchAccessoriesStateSearching value,
          $Res Function(_$_SearchAccessoriesStateSearching) then) =
      __$$_SearchAccessoriesStateSearchingCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, SearchTab tab});
}

/// @nodoc
class __$$_SearchAccessoriesStateSearchingCopyWithImpl<$Res>
    extends _$SearchAccessoriesStateCopyWithImpl<$Res,
        _$_SearchAccessoriesStateSearching>
    implements _$$_SearchAccessoriesStateSearchingCopyWith<$Res> {
  __$$_SearchAccessoriesStateSearchingCopyWithImpl(
      _$_SearchAccessoriesStateSearching _value,
      $Res Function(_$_SearchAccessoriesStateSearching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchAccessoriesStateSearching(
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

class _$_SearchAccessoriesStateSearching
    extends _SearchAccessoriesStateSearching {
  _$_SearchAccessoriesStateSearching(
      {this.query = '', this.tab = SearchTab.all})
      : super._();

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final SearchTab tab;

  @override
  String toString() {
    return 'SearchAccessoriesState.searching(query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAccessoriesStateSearching &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAccessoriesStateSearchingCopyWith<
          _$_SearchAccessoriesStateSearching>
      get copyWith => __$$_SearchAccessoriesStateSearchingCopyWithImpl<
          _$_SearchAccessoriesStateSearching>(this, _$identity);

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
    required TResult Function(_InitialSearchAccessoriesState value) initial,
    required TResult Function(_ErrorSearchAccessoriesState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchAccessoriesStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchAccessoriesStateSearching value) searching,
    required TResult Function(_SearchAccessoriesStateResult value) result,
    required TResult Function(_SearchAccessoriesStateEmpty value) empty,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAccessoriesState value)? initial,
    TResult? Function(_ErrorSearchAccessoriesState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchAccessoriesStateSearching value)? searching,
    TResult? Function(_SearchAccessoriesStateResult value)? result,
    TResult? Function(_SearchAccessoriesStateEmpty value)? empty,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAccessoriesState value)? initial,
    TResult Function(_ErrorSearchAccessoriesState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult Function(_SearchAccessoriesStateSearching value)? searching,
    TResult Function(_SearchAccessoriesStateResult value)? result,
    TResult Function(_SearchAccessoriesStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _SearchAccessoriesStateSearching extends SearchAccessoriesState {
  factory _SearchAccessoriesStateSearching(
      {final String query,
      final SearchTab tab}) = _$_SearchAccessoriesStateSearching;
  _SearchAccessoriesStateSearching._() : super._();

  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchAccessoriesStateSearchingCopyWith<
          _$_SearchAccessoriesStateSearching>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchAccessoriesStateResultCopyWith<$Res> {
  factory _$$_SearchAccessoriesStateResultCopyWith(
          _$_SearchAccessoriesStateResult value,
          $Res Function(_$_SearchAccessoriesStateResult) then) =
      __$$_SearchAccessoriesStateResultCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<SearchTab, List<CatalogItemModel>> result,
      String query,
      SearchTab tab});
}

/// @nodoc
class __$$_SearchAccessoriesStateResultCopyWithImpl<$Res>
    extends _$SearchAccessoriesStateCopyWithImpl<$Res,
        _$_SearchAccessoriesStateResult>
    implements _$$_SearchAccessoriesStateResultCopyWith<$Res> {
  __$$_SearchAccessoriesStateResultCopyWithImpl(
      _$_SearchAccessoriesStateResult _value,
      $Res Function(_$_SearchAccessoriesStateResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchAccessoriesStateResult(
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

class _$_SearchAccessoriesStateResult extends _SearchAccessoriesStateResult {
  _$_SearchAccessoriesStateResult(
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
    return 'SearchAccessoriesState.result(result: $result, query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAccessoriesStateResult &&
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
  _$$_SearchAccessoriesStateResultCopyWith<_$_SearchAccessoriesStateResult>
      get copyWith => __$$_SearchAccessoriesStateResultCopyWithImpl<
          _$_SearchAccessoriesStateResult>(this, _$identity);

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
    required TResult Function(_InitialSearchAccessoriesState value) initial,
    required TResult Function(_ErrorSearchAccessoriesState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchAccessoriesStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchAccessoriesStateSearching value) searching,
    required TResult Function(_SearchAccessoriesStateResult value) result,
    required TResult Function(_SearchAccessoriesStateEmpty value) empty,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAccessoriesState value)? initial,
    TResult? Function(_ErrorSearchAccessoriesState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchAccessoriesStateSearching value)? searching,
    TResult? Function(_SearchAccessoriesStateResult value)? result,
    TResult? Function(_SearchAccessoriesStateEmpty value)? empty,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAccessoriesState value)? initial,
    TResult Function(_ErrorSearchAccessoriesState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult Function(_SearchAccessoriesStateSearching value)? searching,
    TResult Function(_SearchAccessoriesStateResult value)? result,
    TResult Function(_SearchAccessoriesStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _SearchAccessoriesStateResult extends SearchAccessoriesState {
  factory _SearchAccessoriesStateResult(
      {required final Map<SearchTab, List<CatalogItemModel>> result,
      final String query,
      final SearchTab tab}) = _$_SearchAccessoriesStateResult;
  _SearchAccessoriesStateResult._() : super._();

  Map<SearchTab, List<CatalogItemModel>> get result;
  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchAccessoriesStateResultCopyWith<_$_SearchAccessoriesStateResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchAccessoriesStateEmptyCopyWith<$Res> {
  factory _$$_SearchAccessoriesStateEmptyCopyWith(
          _$_SearchAccessoriesStateEmpty value,
          $Res Function(_$_SearchAccessoriesStateEmpty) then) =
      __$$_SearchAccessoriesStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchAccessoriesStateEmptyCopyWithImpl<$Res>
    extends _$SearchAccessoriesStateCopyWithImpl<$Res,
        _$_SearchAccessoriesStateEmpty>
    implements _$$_SearchAccessoriesStateEmptyCopyWith<$Res> {
  __$$_SearchAccessoriesStateEmptyCopyWithImpl(
      _$_SearchAccessoriesStateEmpty _value,
      $Res Function(_$_SearchAccessoriesStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchAccessoriesStateEmpty extends _SearchAccessoriesStateEmpty {
  _$_SearchAccessoriesStateEmpty() : super._();

  @override
  String toString() {
    return 'SearchAccessoriesState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAccessoriesStateEmpty);
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
    required TResult Function(_InitialSearchAccessoriesState value) initial,
    required TResult Function(_ErrorSearchAccessoriesState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchAccessoriesStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchAccessoriesStateSearching value) searching,
    required TResult Function(_SearchAccessoriesStateResult value) result,
    required TResult Function(_SearchAccessoriesStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchAccessoriesState value)? initial,
    TResult? Function(_ErrorSearchAccessoriesState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchAccessoriesStateSearching value)? searching,
    TResult? Function(_SearchAccessoriesStateResult value)? result,
    TResult? Function(_SearchAccessoriesStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchAccessoriesState value)? initial,
    TResult Function(_ErrorSearchAccessoriesState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchAccessoriesStateRecentSearch value)? recentSearch,
    TResult Function(_SearchAccessoriesStateSearching value)? searching,
    TResult Function(_SearchAccessoriesStateResult value)? result,
    TResult Function(_SearchAccessoriesStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _SearchAccessoriesStateEmpty extends SearchAccessoriesState {
  factory _SearchAccessoriesStateEmpty() = _$_SearchAccessoriesStateEmpty;
  _SearchAccessoriesStateEmpty._() : super._();
}
