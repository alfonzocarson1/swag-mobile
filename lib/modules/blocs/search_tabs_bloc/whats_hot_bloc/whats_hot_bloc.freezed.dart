// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whats_hot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchWhatsHotEvent {
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
    required TResult Function(_SearchWhatsHotEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchWhatsHotEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchWhatsHotEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchWhatsHotEventCopyWith<SearchWhatsHotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWhatsHotEventCopyWith<$Res> {
  factory $SearchWhatsHotEventCopyWith(
          SearchWhatsHotEvent value, $Res Function(SearchWhatsHotEvent) then) =
      _$SearchWhatsHotEventCopyWithImpl<$Res, SearchWhatsHotEvent>;
  @useResult
  $Res call({SearchRequestPayloadModel payload, FiltersPayload param});

  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class _$SearchWhatsHotEventCopyWithImpl<$Res, $Val extends SearchWhatsHotEvent>
    implements $SearchWhatsHotEventCopyWith<$Res> {
  _$SearchWhatsHotEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_SearchWhatsHotEventCopyWith<$Res>
    implements $SearchWhatsHotEventCopyWith<$Res> {
  factory _$$_SearchWhatsHotEventCopyWith(_$_SearchWhatsHotEvent value,
          $Res Function(_$_SearchWhatsHotEvent) then) =
      __$$_SearchWhatsHotEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchRequestPayloadModel payload, FiltersPayload param});

  @override
  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_SearchWhatsHotEventCopyWithImpl<$Res>
    extends _$SearchWhatsHotEventCopyWithImpl<$Res, _$_SearchWhatsHotEvent>
    implements _$$_SearchWhatsHotEventCopyWith<$Res> {
  __$$_SearchWhatsHotEventCopyWithImpl(_$_SearchWhatsHotEvent _value,
      $Res Function(_$_SearchWhatsHotEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? param = null,
  }) {
    return _then(_$_SearchWhatsHotEvent(
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

class _$_SearchWhatsHotEvent implements _SearchWhatsHotEvent {
  const _$_SearchWhatsHotEvent(this.payload, this.param);

  @override
  final SearchRequestPayloadModel payload;
  @override
  final FiltersPayload param;

  @override
  String toString() {
    return 'SearchWhatsHotEvent.search(payload: $payload, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchWhatsHotEvent &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchWhatsHotEventCopyWith<_$_SearchWhatsHotEvent> get copyWith =>
      __$$_SearchWhatsHotEventCopyWithImpl<_$_SearchWhatsHotEvent>(
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
    required TResult Function(_SearchWhatsHotEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchWhatsHotEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchWhatsHotEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchWhatsHotEvent implements SearchWhatsHotEvent {
  const factory _SearchWhatsHotEvent(
          final SearchRequestPayloadModel payload, final FiltersPayload param) =
      _$_SearchWhatsHotEvent;

  @override
  SearchRequestPayloadModel get payload;
  @override
  FiltersPayload get param;
  @override
  @JsonKey(ignore: true)
  _$$_SearchWhatsHotEventCopyWith<_$_SearchWhatsHotEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchWhatsHotState {
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
    required TResult Function(_InitialSearchWhatsHotState value) initial,
    required TResult Function(_ErrorSearchWhatsHotState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchWhatsHotStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchWhatsHotStateSearching value) searching,
    required TResult Function(_SearchWhatsHotStateResult value) result,
    required TResult Function(_SearchWhatsHotStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWhatsHotState value)? initial,
    TResult? Function(_ErrorSearchWhatsHotState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchWhatsHotStateSearching value)? searching,
    TResult? Function(_SearchWhatsHotStateResult value)? result,
    TResult? Function(_SearchWhatsHotStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWhatsHotState value)? initial,
    TResult Function(_ErrorSearchWhatsHotState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult Function(_SearchWhatsHotStateSearching value)? searching,
    TResult Function(_SearchWhatsHotStateResult value)? result,
    TResult Function(_SearchWhatsHotStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchWhatsHotStateCopyWith<$Res> {
  factory $SearchWhatsHotStateCopyWith(
          SearchWhatsHotState value, $Res Function(SearchWhatsHotState) then) =
      _$SearchWhatsHotStateCopyWithImpl<$Res, SearchWhatsHotState>;
}

/// @nodoc
class _$SearchWhatsHotStateCopyWithImpl<$Res, $Val extends SearchWhatsHotState>
    implements $SearchWhatsHotStateCopyWith<$Res> {
  _$SearchWhatsHotStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSearchWhatsHotStateCopyWith<$Res> {
  factory _$$_InitialSearchWhatsHotStateCopyWith(
          _$_InitialSearchWhatsHotState value,
          $Res Function(_$_InitialSearchWhatsHotState) then) =
      __$$_InitialSearchWhatsHotStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSearchWhatsHotStateCopyWithImpl<$Res>
    extends _$SearchWhatsHotStateCopyWithImpl<$Res,
        _$_InitialSearchWhatsHotState>
    implements _$$_InitialSearchWhatsHotStateCopyWith<$Res> {
  __$$_InitialSearchWhatsHotStateCopyWithImpl(
      _$_InitialSearchWhatsHotState _value,
      $Res Function(_$_InitialSearchWhatsHotState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSearchWhatsHotState extends _InitialSearchWhatsHotState {
  _$_InitialSearchWhatsHotState() : super._();

  @override
  String toString() {
    return 'SearchWhatsHotState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSearchWhatsHotState);
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
    required TResult Function(_InitialSearchWhatsHotState value) initial,
    required TResult Function(_ErrorSearchWhatsHotState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchWhatsHotStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchWhatsHotStateSearching value) searching,
    required TResult Function(_SearchWhatsHotStateResult value) result,
    required TResult Function(_SearchWhatsHotStateEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWhatsHotState value)? initial,
    TResult? Function(_ErrorSearchWhatsHotState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchWhatsHotStateSearching value)? searching,
    TResult? Function(_SearchWhatsHotStateResult value)? result,
    TResult? Function(_SearchWhatsHotStateEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWhatsHotState value)? initial,
    TResult Function(_ErrorSearchWhatsHotState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult Function(_SearchWhatsHotStateSearching value)? searching,
    TResult Function(_SearchWhatsHotStateResult value)? result,
    TResult Function(_SearchWhatsHotStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchWhatsHotState extends SearchWhatsHotState {
  factory _InitialSearchWhatsHotState() = _$_InitialSearchWhatsHotState;
  _InitialSearchWhatsHotState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorSearchWhatsHotStateCopyWith<$Res> {
  factory _$$_ErrorSearchWhatsHotStateCopyWith(
          _$_ErrorSearchWhatsHotState value,
          $Res Function(_$_ErrorSearchWhatsHotState) then) =
      __$$_ErrorSearchWhatsHotStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorSearchWhatsHotStateCopyWithImpl<$Res>
    extends _$SearchWhatsHotStateCopyWithImpl<$Res, _$_ErrorSearchWhatsHotState>
    implements _$$_ErrorSearchWhatsHotStateCopyWith<$Res> {
  __$$_ErrorSearchWhatsHotStateCopyWithImpl(_$_ErrorSearchWhatsHotState _value,
      $Res Function(_$_ErrorSearchWhatsHotState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorSearchWhatsHotState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorSearchWhatsHotState extends _ErrorSearchWhatsHotState {
  _$_ErrorSearchWhatsHotState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SearchWhatsHotState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSearchWhatsHotState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSearchWhatsHotStateCopyWith<_$_ErrorSearchWhatsHotState>
      get copyWith => __$$_ErrorSearchWhatsHotStateCopyWithImpl<
          _$_ErrorSearchWhatsHotState>(this, _$identity);

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
    required TResult Function(_InitialSearchWhatsHotState value) initial,
    required TResult Function(_ErrorSearchWhatsHotState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchWhatsHotStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchWhatsHotStateSearching value) searching,
    required TResult Function(_SearchWhatsHotStateResult value) result,
    required TResult Function(_SearchWhatsHotStateEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWhatsHotState value)? initial,
    TResult? Function(_ErrorSearchWhatsHotState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchWhatsHotStateSearching value)? searching,
    TResult? Function(_SearchWhatsHotStateResult value)? result,
    TResult? Function(_SearchWhatsHotStateEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWhatsHotState value)? initial,
    TResult Function(_ErrorSearchWhatsHotState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult Function(_SearchWhatsHotStateSearching value)? searching,
    TResult Function(_SearchWhatsHotStateResult value)? result,
    TResult Function(_SearchWhatsHotStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSearchWhatsHotState extends SearchWhatsHotState {
  factory _ErrorSearchWhatsHotState(final String message) =
      _$_ErrorSearchWhatsHotState;
  _ErrorSearchWhatsHotState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorSearchWhatsHotStateCopyWith<_$_ErrorSearchWhatsHotState>
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
    extends _$SearchWhatsHotStateCopyWithImpl<$Res, _$LoadedCategoriesState>
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
    return 'SearchWhatsHotState.loadedCategories(categoryList: $categoryList)';
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
    required TResult Function(_InitialSearchWhatsHotState value) initial,
    required TResult Function(_ErrorSearchWhatsHotState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchWhatsHotStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchWhatsHotStateSearching value) searching,
    required TResult Function(_SearchWhatsHotStateResult value) result,
    required TResult Function(_SearchWhatsHotStateEmpty value) empty,
  }) {
    return loadedCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWhatsHotState value)? initial,
    TResult? Function(_ErrorSearchWhatsHotState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchWhatsHotStateSearching value)? searching,
    TResult? Function(_SearchWhatsHotStateResult value)? result,
    TResult? Function(_SearchWhatsHotStateEmpty value)? empty,
  }) {
    return loadedCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWhatsHotState value)? initial,
    TResult Function(_ErrorSearchWhatsHotState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult Function(_SearchWhatsHotStateSearching value)? searching,
    TResult Function(_SearchWhatsHotStateResult value)? result,
    TResult Function(_SearchWhatsHotStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loadedCategories != null) {
      return loadedCategories(this);
    }
    return orElse();
  }
}

abstract class LoadedCategoriesState extends SearchWhatsHotState {
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
abstract class _$$_SearchWhatsHotStateRecentSearchCopyWith<$Res> {
  factory _$$_SearchWhatsHotStateRecentSearchCopyWith(
          _$_SearchWhatsHotStateRecentSearch value,
          $Res Function(_$_SearchWhatsHotStateRecentSearch) then) =
      __$$_SearchWhatsHotStateRecentSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> queries});
}

/// @nodoc
class __$$_SearchWhatsHotStateRecentSearchCopyWithImpl<$Res>
    extends _$SearchWhatsHotStateCopyWithImpl<$Res,
        _$_SearchWhatsHotStateRecentSearch>
    implements _$$_SearchWhatsHotStateRecentSearchCopyWith<$Res> {
  __$$_SearchWhatsHotStateRecentSearchCopyWithImpl(
      _$_SearchWhatsHotStateRecentSearch _value,
      $Res Function(_$_SearchWhatsHotStateRecentSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queries = null,
  }) {
    return _then(_$_SearchWhatsHotStateRecentSearch(
      queries: null == queries
          ? _value._queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SearchWhatsHotStateRecentSearch
    extends _SearchWhatsHotStateRecentSearch {
  _$_SearchWhatsHotStateRecentSearch({required final List<String> queries})
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
    return 'SearchWhatsHotState.recentSearch(queries: $queries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchWhatsHotStateRecentSearch &&
            const DeepCollectionEquality().equals(other._queries, _queries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchWhatsHotStateRecentSearchCopyWith<
          _$_SearchWhatsHotStateRecentSearch>
      get copyWith => __$$_SearchWhatsHotStateRecentSearchCopyWithImpl<
          _$_SearchWhatsHotStateRecentSearch>(this, _$identity);

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
    required TResult Function(_InitialSearchWhatsHotState value) initial,
    required TResult Function(_ErrorSearchWhatsHotState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchWhatsHotStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchWhatsHotStateSearching value) searching,
    required TResult Function(_SearchWhatsHotStateResult value) result,
    required TResult Function(_SearchWhatsHotStateEmpty value) empty,
  }) {
    return recentSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWhatsHotState value)? initial,
    TResult? Function(_ErrorSearchWhatsHotState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchWhatsHotStateSearching value)? searching,
    TResult? Function(_SearchWhatsHotStateResult value)? result,
    TResult? Function(_SearchWhatsHotStateEmpty value)? empty,
  }) {
    return recentSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWhatsHotState value)? initial,
    TResult Function(_ErrorSearchWhatsHotState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult Function(_SearchWhatsHotStateSearching value)? searching,
    TResult Function(_SearchWhatsHotStateResult value)? result,
    TResult Function(_SearchWhatsHotStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (recentSearch != null) {
      return recentSearch(this);
    }
    return orElse();
  }
}

abstract class _SearchWhatsHotStateRecentSearch extends SearchWhatsHotState {
  factory _SearchWhatsHotStateRecentSearch(
          {required final List<String> queries}) =
      _$_SearchWhatsHotStateRecentSearch;
  _SearchWhatsHotStateRecentSearch._() : super._();

  List<String> get queries;
  @JsonKey(ignore: true)
  _$$_SearchWhatsHotStateRecentSearchCopyWith<
          _$_SearchWhatsHotStateRecentSearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchWhatsHotStateSearchingCopyWith<$Res> {
  factory _$$_SearchWhatsHotStateSearchingCopyWith(
          _$_SearchWhatsHotStateSearching value,
          $Res Function(_$_SearchWhatsHotStateSearching) then) =
      __$$_SearchWhatsHotStateSearchingCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, SearchTab tab});
}

/// @nodoc
class __$$_SearchWhatsHotStateSearchingCopyWithImpl<$Res>
    extends _$SearchWhatsHotStateCopyWithImpl<$Res,
        _$_SearchWhatsHotStateSearching>
    implements _$$_SearchWhatsHotStateSearchingCopyWith<$Res> {
  __$$_SearchWhatsHotStateSearchingCopyWithImpl(
      _$_SearchWhatsHotStateSearching _value,
      $Res Function(_$_SearchWhatsHotStateSearching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchWhatsHotStateSearching(
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

class _$_SearchWhatsHotStateSearching extends _SearchWhatsHotStateSearching {
  _$_SearchWhatsHotStateSearching({this.query = '', this.tab = SearchTab.all})
      : super._();

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final SearchTab tab;

  @override
  String toString() {
    return 'SearchWhatsHotState.searching(query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchWhatsHotStateSearching &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchWhatsHotStateSearchingCopyWith<_$_SearchWhatsHotStateSearching>
      get copyWith => __$$_SearchWhatsHotStateSearchingCopyWithImpl<
          _$_SearchWhatsHotStateSearching>(this, _$identity);

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
    required TResult Function(_InitialSearchWhatsHotState value) initial,
    required TResult Function(_ErrorSearchWhatsHotState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchWhatsHotStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchWhatsHotStateSearching value) searching,
    required TResult Function(_SearchWhatsHotStateResult value) result,
    required TResult Function(_SearchWhatsHotStateEmpty value) empty,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWhatsHotState value)? initial,
    TResult? Function(_ErrorSearchWhatsHotState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchWhatsHotStateSearching value)? searching,
    TResult? Function(_SearchWhatsHotStateResult value)? result,
    TResult? Function(_SearchWhatsHotStateEmpty value)? empty,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWhatsHotState value)? initial,
    TResult Function(_ErrorSearchWhatsHotState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult Function(_SearchWhatsHotStateSearching value)? searching,
    TResult Function(_SearchWhatsHotStateResult value)? result,
    TResult Function(_SearchWhatsHotStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _SearchWhatsHotStateSearching extends SearchWhatsHotState {
  factory _SearchWhatsHotStateSearching(
      {final String query,
      final SearchTab tab}) = _$_SearchWhatsHotStateSearching;
  _SearchWhatsHotStateSearching._() : super._();

  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchWhatsHotStateSearchingCopyWith<_$_SearchWhatsHotStateSearching>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchWhatsHotStateResultCopyWith<$Res> {
  factory _$$_SearchWhatsHotStateResultCopyWith(
          _$_SearchWhatsHotStateResult value,
          $Res Function(_$_SearchWhatsHotStateResult) then) =
      __$$_SearchWhatsHotStateResultCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<SearchTab, List<CatalogItemModel>> result,
      String query,
      SearchTab tab});
}

/// @nodoc
class __$$_SearchWhatsHotStateResultCopyWithImpl<$Res>
    extends _$SearchWhatsHotStateCopyWithImpl<$Res,
        _$_SearchWhatsHotStateResult>
    implements _$$_SearchWhatsHotStateResultCopyWith<$Res> {
  __$$_SearchWhatsHotStateResultCopyWithImpl(
      _$_SearchWhatsHotStateResult _value,
      $Res Function(_$_SearchWhatsHotStateResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchWhatsHotStateResult(
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

class _$_SearchWhatsHotStateResult extends _SearchWhatsHotStateResult {
  _$_SearchWhatsHotStateResult(
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
    return 'SearchWhatsHotState.result(result: $result, query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchWhatsHotStateResult &&
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
  _$$_SearchWhatsHotStateResultCopyWith<_$_SearchWhatsHotStateResult>
      get copyWith => __$$_SearchWhatsHotStateResultCopyWithImpl<
          _$_SearchWhatsHotStateResult>(this, _$identity);

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
    required TResult Function(_InitialSearchWhatsHotState value) initial,
    required TResult Function(_ErrorSearchWhatsHotState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchWhatsHotStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchWhatsHotStateSearching value) searching,
    required TResult Function(_SearchWhatsHotStateResult value) result,
    required TResult Function(_SearchWhatsHotStateEmpty value) empty,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWhatsHotState value)? initial,
    TResult? Function(_ErrorSearchWhatsHotState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchWhatsHotStateSearching value)? searching,
    TResult? Function(_SearchWhatsHotStateResult value)? result,
    TResult? Function(_SearchWhatsHotStateEmpty value)? empty,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWhatsHotState value)? initial,
    TResult Function(_ErrorSearchWhatsHotState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult Function(_SearchWhatsHotStateSearching value)? searching,
    TResult Function(_SearchWhatsHotStateResult value)? result,
    TResult Function(_SearchWhatsHotStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _SearchWhatsHotStateResult extends SearchWhatsHotState {
  factory _SearchWhatsHotStateResult(
      {required final Map<SearchTab, List<CatalogItemModel>> result,
      final String query,
      final SearchTab tab}) = _$_SearchWhatsHotStateResult;
  _SearchWhatsHotStateResult._() : super._();

  Map<SearchTab, List<CatalogItemModel>> get result;
  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchWhatsHotStateResultCopyWith<_$_SearchWhatsHotStateResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchWhatsHotStateEmptyCopyWith<$Res> {
  factory _$$_SearchWhatsHotStateEmptyCopyWith(
          _$_SearchWhatsHotStateEmpty value,
          $Res Function(_$_SearchWhatsHotStateEmpty) then) =
      __$$_SearchWhatsHotStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchWhatsHotStateEmptyCopyWithImpl<$Res>
    extends _$SearchWhatsHotStateCopyWithImpl<$Res, _$_SearchWhatsHotStateEmpty>
    implements _$$_SearchWhatsHotStateEmptyCopyWith<$Res> {
  __$$_SearchWhatsHotStateEmptyCopyWithImpl(_$_SearchWhatsHotStateEmpty _value,
      $Res Function(_$_SearchWhatsHotStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchWhatsHotStateEmpty extends _SearchWhatsHotStateEmpty {
  _$_SearchWhatsHotStateEmpty() : super._();

  @override
  String toString() {
    return 'SearchWhatsHotState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchWhatsHotStateEmpty);
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
    required TResult Function(_InitialSearchWhatsHotState value) initial,
    required TResult Function(_ErrorSearchWhatsHotState value) error,
    required TResult Function(LoadedCategoriesState value) loadedCategories,
    required TResult Function(_SearchWhatsHotStateRecentSearch value)
        recentSearch,
    required TResult Function(_SearchWhatsHotStateSearching value) searching,
    required TResult Function(_SearchWhatsHotStateResult value) result,
    required TResult Function(_SearchWhatsHotStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchWhatsHotState value)? initial,
    TResult? Function(_ErrorSearchWhatsHotState value)? error,
    TResult? Function(LoadedCategoriesState value)? loadedCategories,
    TResult? Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchWhatsHotStateSearching value)? searching,
    TResult? Function(_SearchWhatsHotStateResult value)? result,
    TResult? Function(_SearchWhatsHotStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchWhatsHotState value)? initial,
    TResult Function(_ErrorSearchWhatsHotState value)? error,
    TResult Function(LoadedCategoriesState value)? loadedCategories,
    TResult Function(_SearchWhatsHotStateRecentSearch value)? recentSearch,
    TResult Function(_SearchWhatsHotStateSearching value)? searching,
    TResult Function(_SearchWhatsHotStateResult value)? result,
    TResult Function(_SearchWhatsHotStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _SearchWhatsHotStateEmpty extends SearchWhatsHotState {
  factory _SearchWhatsHotStateEmpty() = _$_SearchWhatsHotStateEmpty;
  _SearchWhatsHotStateEmpty._() : super._();
}
