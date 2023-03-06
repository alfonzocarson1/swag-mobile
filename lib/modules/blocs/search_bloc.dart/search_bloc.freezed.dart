// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequestPayloadModel payload, SearchTab tab)
        performSearch,
    required TResult Function() reset,
    required TResult Function(SearchTab tab) selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequestPayloadModel payload, SearchTab tab)?
        performSearch,
    TResult? Function()? reset,
    TResult? Function(SearchTab tab)? selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequestPayloadModel payload, SearchTab tab)?
        performSearch,
    TResult Function()? reset,
    TResult Function(SearchTab tab)? selectTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_SearchEventReset value) reset,
    required TResult Function(_SearchEventSelectTab value) selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_SearchEventReset value)? reset,
    TResult? Function(_SearchEventSelectTab value)? selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_SearchEventReset value)? reset,
    TResult Function(_SearchEventSelectTab value)? selectTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PerformSearchCopyWith<$Res> {
  factory _$$_PerformSearchCopyWith(
          _$_PerformSearch value, $Res Function(_$_PerformSearch) then) =
      __$$_PerformSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchRequestPayloadModel payload, SearchTab tab});

  $SearchRequestPayloadModelCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_PerformSearchCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_PerformSearch>
    implements _$$_PerformSearchCopyWith<$Res> {
  __$$_PerformSearchCopyWithImpl(
      _$_PerformSearch _value, $Res Function(_$_PerformSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
    Object? tab = null,
  }) {
    return _then(_$_PerformSearch(
      null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SearchRequestPayloadModel,
      null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as SearchTab,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchRequestPayloadModelCopyWith<$Res> get payload {
    return $SearchRequestPayloadModelCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc

class _$_PerformSearch implements _PerformSearch {
  const _$_PerformSearch(this.payload, this.tab);

  @override
  final SearchRequestPayloadModel payload;
  @override
  final SearchTab tab;

  @override
  String toString() {
    return 'SearchEvent.performSearch(payload: $payload, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerformSearch &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PerformSearchCopyWith<_$_PerformSearch> get copyWith =>
      __$$_PerformSearchCopyWithImpl<_$_PerformSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequestPayloadModel payload, SearchTab tab)
        performSearch,
    required TResult Function() reset,
    required TResult Function(SearchTab tab) selectTab,
  }) {
    return performSearch(payload, tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequestPayloadModel payload, SearchTab tab)?
        performSearch,
    TResult? Function()? reset,
    TResult? Function(SearchTab tab)? selectTab,
  }) {
    return performSearch?.call(payload, tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequestPayloadModel payload, SearchTab tab)?
        performSearch,
    TResult Function()? reset,
    TResult Function(SearchTab tab)? selectTab,
    required TResult orElse(),
  }) {
    if (performSearch != null) {
      return performSearch(payload, tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_SearchEventReset value) reset,
    required TResult Function(_SearchEventSelectTab value) selectTab,
  }) {
    return performSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_SearchEventReset value)? reset,
    TResult? Function(_SearchEventSelectTab value)? selectTab,
  }) {
    return performSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_SearchEventReset value)? reset,
    TResult Function(_SearchEventSelectTab value)? selectTab,
    required TResult orElse(),
  }) {
    if (performSearch != null) {
      return performSearch(this);
    }
    return orElse();
  }
}

abstract class _PerformSearch implements SearchEvent {
  const factory _PerformSearch(
          final SearchRequestPayloadModel payload, final SearchTab tab) =
      _$_PerformSearch;

  SearchRequestPayloadModel get payload;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_PerformSearchCopyWith<_$_PerformSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchEventResetCopyWith<$Res> {
  factory _$$_SearchEventResetCopyWith(
          _$_SearchEventReset value, $Res Function(_$_SearchEventReset) then) =
      __$$_SearchEventResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchEventResetCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchEventReset>
    implements _$$_SearchEventResetCopyWith<$Res> {
  __$$_SearchEventResetCopyWithImpl(
      _$_SearchEventReset _value, $Res Function(_$_SearchEventReset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchEventReset implements _SearchEventReset {
  const _$_SearchEventReset();

  @override
  String toString() {
    return 'SearchEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchEventReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequestPayloadModel payload, SearchTab tab)
        performSearch,
    required TResult Function() reset,
    required TResult Function(SearchTab tab) selectTab,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequestPayloadModel payload, SearchTab tab)?
        performSearch,
    TResult? Function()? reset,
    TResult? Function(SearchTab tab)? selectTab,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequestPayloadModel payload, SearchTab tab)?
        performSearch,
    TResult Function()? reset,
    TResult Function(SearchTab tab)? selectTab,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_SearchEventReset value) reset,
    required TResult Function(_SearchEventSelectTab value) selectTab,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_SearchEventReset value)? reset,
    TResult? Function(_SearchEventSelectTab value)? selectTab,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_SearchEventReset value)? reset,
    TResult Function(_SearchEventSelectTab value)? selectTab,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _SearchEventReset implements SearchEvent {
  const factory _SearchEventReset() = _$_SearchEventReset;
}

/// @nodoc
abstract class _$$_SearchEventSelectTabCopyWith<$Res> {
  factory _$$_SearchEventSelectTabCopyWith(_$_SearchEventSelectTab value,
          $Res Function(_$_SearchEventSelectTab) then) =
      __$$_SearchEventSelectTabCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchTab tab});
}

/// @nodoc
class __$$_SearchEventSelectTabCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchEventSelectTab>
    implements _$$_SearchEventSelectTabCopyWith<$Res> {
  __$$_SearchEventSelectTabCopyWithImpl(_$_SearchEventSelectTab _value,
      $Res Function(_$_SearchEventSelectTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$_SearchEventSelectTab(
      null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as SearchTab,
    ));
  }
}

/// @nodoc

class _$_SearchEventSelectTab implements _SearchEventSelectTab {
  const _$_SearchEventSelectTab(this.tab);

  @override
  final SearchTab tab;

  @override
  String toString() {
    return 'SearchEvent.selectTab(tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEventSelectTab &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchEventSelectTabCopyWith<_$_SearchEventSelectTab> get copyWith =>
      __$$_SearchEventSelectTabCopyWithImpl<_$_SearchEventSelectTab>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequestPayloadModel payload, SearchTab tab)
        performSearch,
    required TResult Function() reset,
    required TResult Function(SearchTab tab) selectTab,
  }) {
    return selectTab(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequestPayloadModel payload, SearchTab tab)?
        performSearch,
    TResult? Function()? reset,
    TResult? Function(SearchTab tab)? selectTab,
  }) {
    return selectTab?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequestPayloadModel payload, SearchTab tab)?
        performSearch,
    TResult Function()? reset,
    TResult Function(SearchTab tab)? selectTab,
    required TResult orElse(),
  }) {
    if (selectTab != null) {
      return selectTab(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_SearchEventReset value) reset,
    required TResult Function(_SearchEventSelectTab value) selectTab,
  }) {
    return selectTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_SearchEventReset value)? reset,
    TResult? Function(_SearchEventSelectTab value)? selectTab,
  }) {
    return selectTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_SearchEventReset value)? reset,
    TResult Function(_SearchEventSelectTab value)? selectTab,
    required TResult orElse(),
  }) {
    if (selectTab != null) {
      return selectTab(this);
    }
    return orElse();
  }
}

abstract class _SearchEventSelectTab implements SearchEvent {
  const factory _SearchEventSelectTab(final SearchTab tab) =
      _$_SearchEventSelectTab;

  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchEventSelectTabCopyWith<_$_SearchEventSelectTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
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
    required TResult Function(_InitialSearchState value) initial,
    required TResult Function(_ErrorSearchState value) error,
    required TResult Function(_SearchStateRecentSearch value) recentSearch,
    required TResult Function(_SearchStateSearching value) searching,
    required TResult Function(_SearchStateResult value) result,
    required TResult Function(_SearchStateEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchState value)? initial,
    TResult? Function(_ErrorSearchState value)? error,
    TResult? Function(_SearchStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchStateSearching value)? searching,
    TResult? Function(_SearchStateResult value)? result,
    TResult? Function(_SearchStateEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchState value)? initial,
    TResult Function(_ErrorSearchState value)? error,
    TResult Function(_SearchStateRecentSearch value)? recentSearch,
    TResult Function(_SearchStateSearching value)? searching,
    TResult Function(_SearchStateResult value)? result,
    TResult Function(_SearchStateEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSearchStateCopyWith<$Res> {
  factory _$$_InitialSearchStateCopyWith(_$_InitialSearchState value,
          $Res Function(_$_InitialSearchState) then) =
      __$$_InitialSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_InitialSearchState>
    implements _$$_InitialSearchStateCopyWith<$Res> {
  __$$_InitialSearchStateCopyWithImpl(
      _$_InitialSearchState _value, $Res Function(_$_InitialSearchState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSearchState extends _InitialSearchState {
  _$_InitialSearchState() : super._();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
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
    required TResult Function(_InitialSearchState value) initial,
    required TResult Function(_ErrorSearchState value) error,
    required TResult Function(_SearchStateRecentSearch value) recentSearch,
    required TResult Function(_SearchStateSearching value) searching,
    required TResult Function(_SearchStateResult value) result,
    required TResult Function(_SearchStateEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchState value)? initial,
    TResult? Function(_ErrorSearchState value)? error,
    TResult? Function(_SearchStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchStateSearching value)? searching,
    TResult? Function(_SearchStateResult value)? result,
    TResult? Function(_SearchStateEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchState value)? initial,
    TResult Function(_ErrorSearchState value)? error,
    TResult Function(_SearchStateRecentSearch value)? recentSearch,
    TResult Function(_SearchStateSearching value)? searching,
    TResult Function(_SearchStateResult value)? result,
    TResult Function(_SearchStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearchState extends SearchState {
  factory _InitialSearchState() = _$_InitialSearchState;
  _InitialSearchState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorSearchStateCopyWith<$Res> {
  factory _$$_ErrorSearchStateCopyWith(
          _$_ErrorSearchState value, $Res Function(_$_ErrorSearchState) then) =
      __$$_ErrorSearchStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorSearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_ErrorSearchState>
    implements _$$_ErrorSearchStateCopyWith<$Res> {
  __$$_ErrorSearchStateCopyWithImpl(
      _$_ErrorSearchState _value, $Res Function(_$_ErrorSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorSearchState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorSearchState extends _ErrorSearchState {
  _$_ErrorSearchState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSearchState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSearchStateCopyWith<_$_ErrorSearchState> get copyWith =>
      __$$_ErrorSearchStateCopyWithImpl<_$_ErrorSearchState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
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
    required TResult Function(_InitialSearchState value) initial,
    required TResult Function(_ErrorSearchState value) error,
    required TResult Function(_SearchStateRecentSearch value) recentSearch,
    required TResult Function(_SearchStateSearching value) searching,
    required TResult Function(_SearchStateResult value) result,
    required TResult Function(_SearchStateEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchState value)? initial,
    TResult? Function(_ErrorSearchState value)? error,
    TResult? Function(_SearchStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchStateSearching value)? searching,
    TResult? Function(_SearchStateResult value)? result,
    TResult? Function(_SearchStateEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchState value)? initial,
    TResult Function(_ErrorSearchState value)? error,
    TResult Function(_SearchStateRecentSearch value)? recentSearch,
    TResult Function(_SearchStateSearching value)? searching,
    TResult Function(_SearchStateResult value)? result,
    TResult Function(_SearchStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSearchState extends SearchState {
  factory _ErrorSearchState(final String message) = _$_ErrorSearchState;
  _ErrorSearchState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorSearchStateCopyWith<_$_ErrorSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchStateRecentSearchCopyWith<$Res> {
  factory _$$_SearchStateRecentSearchCopyWith(_$_SearchStateRecentSearch value,
          $Res Function(_$_SearchStateRecentSearch) then) =
      __$$_SearchStateRecentSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> queries});
}

/// @nodoc
class __$$_SearchStateRecentSearchCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchStateRecentSearch>
    implements _$$_SearchStateRecentSearchCopyWith<$Res> {
  __$$_SearchStateRecentSearchCopyWithImpl(_$_SearchStateRecentSearch _value,
      $Res Function(_$_SearchStateRecentSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queries = null,
  }) {
    return _then(_$_SearchStateRecentSearch(
      queries: null == queries
          ? _value._queries
          : queries // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_SearchStateRecentSearch extends _SearchStateRecentSearch {
  _$_SearchStateRecentSearch({required final List<String> queries})
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
    return 'SearchState.recentSearch(queries: $queries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateRecentSearch &&
            const DeepCollectionEquality().equals(other._queries, _queries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateRecentSearchCopyWith<_$_SearchStateRecentSearch>
      get copyWith =>
          __$$_SearchStateRecentSearchCopyWithImpl<_$_SearchStateRecentSearch>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
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
    required TResult Function(_InitialSearchState value) initial,
    required TResult Function(_ErrorSearchState value) error,
    required TResult Function(_SearchStateRecentSearch value) recentSearch,
    required TResult Function(_SearchStateSearching value) searching,
    required TResult Function(_SearchStateResult value) result,
    required TResult Function(_SearchStateEmpty value) empty,
  }) {
    return recentSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchState value)? initial,
    TResult? Function(_ErrorSearchState value)? error,
    TResult? Function(_SearchStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchStateSearching value)? searching,
    TResult? Function(_SearchStateResult value)? result,
    TResult? Function(_SearchStateEmpty value)? empty,
  }) {
    return recentSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchState value)? initial,
    TResult Function(_ErrorSearchState value)? error,
    TResult Function(_SearchStateRecentSearch value)? recentSearch,
    TResult Function(_SearchStateSearching value)? searching,
    TResult Function(_SearchStateResult value)? result,
    TResult Function(_SearchStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (recentSearch != null) {
      return recentSearch(this);
    }
    return orElse();
  }
}

abstract class _SearchStateRecentSearch extends SearchState {
  factory _SearchStateRecentSearch({required final List<String> queries}) =
      _$_SearchStateRecentSearch;
  _SearchStateRecentSearch._() : super._();

  List<String> get queries;
  @JsonKey(ignore: true)
  _$$_SearchStateRecentSearchCopyWith<_$_SearchStateRecentSearch>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchStateSearchingCopyWith<$Res> {
  factory _$$_SearchStateSearchingCopyWith(_$_SearchStateSearching value,
          $Res Function(_$_SearchStateSearching) then) =
      __$$_SearchStateSearchingCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, SearchTab tab});
}

/// @nodoc
class __$$_SearchStateSearchingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchStateSearching>
    implements _$$_SearchStateSearchingCopyWith<$Res> {
  __$$_SearchStateSearchingCopyWithImpl(_$_SearchStateSearching _value,
      $Res Function(_$_SearchStateSearching) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchStateSearching(
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

class _$_SearchStateSearching extends _SearchStateSearching {
  _$_SearchStateSearching({this.query = '', this.tab = SearchTab.whatsHot})
      : super._();

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final SearchTab tab;

  @override
  String toString() {
    return 'SearchState.searching(query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateSearching &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateSearchingCopyWith<_$_SearchStateSearching> get copyWith =>
      __$$_SearchStateSearchingCopyWithImpl<_$_SearchStateSearching>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
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
    required TResult Function(_InitialSearchState value) initial,
    required TResult Function(_ErrorSearchState value) error,
    required TResult Function(_SearchStateRecentSearch value) recentSearch,
    required TResult Function(_SearchStateSearching value) searching,
    required TResult Function(_SearchStateResult value) result,
    required TResult Function(_SearchStateEmpty value) empty,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchState value)? initial,
    TResult? Function(_ErrorSearchState value)? error,
    TResult? Function(_SearchStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchStateSearching value)? searching,
    TResult? Function(_SearchStateResult value)? result,
    TResult? Function(_SearchStateEmpty value)? empty,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchState value)? initial,
    TResult Function(_ErrorSearchState value)? error,
    TResult Function(_SearchStateRecentSearch value)? recentSearch,
    TResult Function(_SearchStateSearching value)? searching,
    TResult Function(_SearchStateResult value)? result,
    TResult Function(_SearchStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _SearchStateSearching extends SearchState {
  factory _SearchStateSearching({final String query, final SearchTab tab}) =
      _$_SearchStateSearching;
  _SearchStateSearching._() : super._();

  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchStateSearchingCopyWith<_$_SearchStateSearching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchStateResultCopyWith<$Res> {
  factory _$$_SearchStateResultCopyWith(_$_SearchStateResult value,
          $Res Function(_$_SearchStateResult) then) =
      __$$_SearchStateResultCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<SearchTab, List<CatalogItemModel>> result,
      String query,
      SearchTab tab});
}

/// @nodoc
class __$$_SearchStateResultCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchStateResult>
    implements _$$_SearchStateResultCopyWith<$Res> {
  __$$_SearchStateResultCopyWithImpl(
      _$_SearchStateResult _value, $Res Function(_$_SearchStateResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? query = null,
    Object? tab = null,
  }) {
    return _then(_$_SearchStateResult(
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

class _$_SearchStateResult extends _SearchStateResult {
  _$_SearchStateResult(
      {required final Map<SearchTab, List<CatalogItemModel>> result,
      this.query = '',
      this.tab = SearchTab.whatsHot})
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
    return 'SearchState.result(result: $result, query: $query, tab: $tab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStateResult &&
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
  _$$_SearchStateResultCopyWith<_$_SearchStateResult> get copyWith =>
      __$$_SearchStateResultCopyWithImpl<_$_SearchStateResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
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
    required TResult Function(_InitialSearchState value) initial,
    required TResult Function(_ErrorSearchState value) error,
    required TResult Function(_SearchStateRecentSearch value) recentSearch,
    required TResult Function(_SearchStateSearching value) searching,
    required TResult Function(_SearchStateResult value) result,
    required TResult Function(_SearchStateEmpty value) empty,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchState value)? initial,
    TResult? Function(_ErrorSearchState value)? error,
    TResult? Function(_SearchStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchStateSearching value)? searching,
    TResult? Function(_SearchStateResult value)? result,
    TResult? Function(_SearchStateEmpty value)? empty,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchState value)? initial,
    TResult Function(_ErrorSearchState value)? error,
    TResult Function(_SearchStateRecentSearch value)? recentSearch,
    TResult Function(_SearchStateSearching value)? searching,
    TResult Function(_SearchStateResult value)? result,
    TResult Function(_SearchStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _SearchStateResult extends SearchState {
  factory _SearchStateResult(
      {required final Map<SearchTab, List<CatalogItemModel>> result,
      final String query,
      final SearchTab tab}) = _$_SearchStateResult;
  _SearchStateResult._() : super._();

  Map<SearchTab, List<CatalogItemModel>> get result;
  String get query;
  SearchTab get tab;
  @JsonKey(ignore: true)
  _$$_SearchStateResultCopyWith<_$_SearchStateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchStateEmptyCopyWith<$Res> {
  factory _$$_SearchStateEmptyCopyWith(
          _$_SearchStateEmpty value, $Res Function(_$_SearchStateEmpty) then) =
      __$$_SearchStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchStateEmptyCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchStateEmpty>
    implements _$$_SearchStateEmptyCopyWith<$Res> {
  __$$_SearchStateEmptyCopyWithImpl(
      _$_SearchStateEmpty _value, $Res Function(_$_SearchStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchStateEmpty extends _SearchStateEmpty {
  _$_SearchStateEmpty() : super._();

  @override
  String toString() {
    return 'SearchState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
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
    required TResult Function(_InitialSearchState value) initial,
    required TResult Function(_ErrorSearchState value) error,
    required TResult Function(_SearchStateRecentSearch value) recentSearch,
    required TResult Function(_SearchStateSearching value) searching,
    required TResult Function(_SearchStateResult value) result,
    required TResult Function(_SearchStateEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearchState value)? initial,
    TResult? Function(_ErrorSearchState value)? error,
    TResult? Function(_SearchStateRecentSearch value)? recentSearch,
    TResult? Function(_SearchStateSearching value)? searching,
    TResult? Function(_SearchStateResult value)? result,
    TResult? Function(_SearchStateEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearchState value)? initial,
    TResult Function(_ErrorSearchState value)? error,
    TResult Function(_SearchStateRecentSearch value)? recentSearch,
    TResult Function(_SearchStateSearching value)? searching,
    TResult Function(_SearchStateResult value)? result,
    TResult Function(_SearchStateEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _SearchStateEmpty extends SearchState {
  factory _SearchStateEmpty() = _$_SearchStateEmpty;
  _SearchStateEmpty._() : super._();
}
