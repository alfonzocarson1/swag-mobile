// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExploreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExploreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExploreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExploreItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExploreItems value) getExploreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExploreItems value)? getExploreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExploreItems value)? getExploreItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreEventCopyWith<$Res> {
  factory $ExploreEventCopyWith(
          ExploreEvent value, $Res Function(ExploreEvent) then) =
      _$ExploreEventCopyWithImpl<$Res, ExploreEvent>;
}

/// @nodoc
class _$ExploreEventCopyWithImpl<$Res, $Val extends ExploreEvent>
    implements $ExploreEventCopyWith<$Res> {
  _$ExploreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetExploreItemsCopyWith<$Res> {
  factory _$$_GetExploreItemsCopyWith(
          _$_GetExploreItems value, $Res Function(_$_GetExploreItems) then) =
      __$$_GetExploreItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetExploreItemsCopyWithImpl<$Res>
    extends _$ExploreEventCopyWithImpl<$Res, _$_GetExploreItems>
    implements _$$_GetExploreItemsCopyWith<$Res> {
  __$$_GetExploreItemsCopyWithImpl(
      _$_GetExploreItems _value, $Res Function(_$_GetExploreItems) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetExploreItems implements _GetExploreItems {
  const _$_GetExploreItems();

  @override
  String toString() {
    return 'ExploreEvent.getExploreItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetExploreItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExploreItems,
  }) {
    return getExploreItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExploreItems,
  }) {
    return getExploreItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExploreItems,
    required TResult orElse(),
  }) {
    if (getExploreItems != null) {
      return getExploreItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExploreItems value) getExploreItems,
  }) {
    return getExploreItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExploreItems value)? getExploreItems,
  }) {
    return getExploreItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExploreItems value)? getExploreItems,
    required TResult orElse(),
  }) {
    if (getExploreItems != null) {
      return getExploreItems(this);
    }
    return orElse();
  }
}

abstract class _GetExploreItems implements ExploreEvent {
  const factory _GetExploreItems() = _$_GetExploreItems;
}

/// @nodoc
mixin _$ExploreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<ExploreItemModel> exploreList)
        loadedExploreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<ExploreItemModel> exploreList)? loadedExploreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<ExploreItemModel> exploreList)? loadedExploreItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialExploreState value) initial,
    required TResult Function(_ErrorExploreState value) error,
    required TResult Function(LoadedExploreItemsState value) loadedExploreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialExploreState value)? initial,
    TResult? Function(_ErrorExploreState value)? error,
    TResult? Function(LoadedExploreItemsState value)? loadedExploreItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialExploreState value)? initial,
    TResult Function(_ErrorExploreState value)? error,
    TResult Function(LoadedExploreItemsState value)? loadedExploreItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreStateCopyWith<$Res> {
  factory $ExploreStateCopyWith(
          ExploreState value, $Res Function(ExploreState) then) =
      _$ExploreStateCopyWithImpl<$Res, ExploreState>;
}

/// @nodoc
class _$ExploreStateCopyWithImpl<$Res, $Val extends ExploreState>
    implements $ExploreStateCopyWith<$Res> {
  _$ExploreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialExploreStateCopyWith<$Res> {
  factory _$$_InitialExploreStateCopyWith(_$_InitialExploreState value,
          $Res Function(_$_InitialExploreState) then) =
      __$$_InitialExploreStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialExploreStateCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$_InitialExploreState>
    implements _$$_InitialExploreStateCopyWith<$Res> {
  __$$_InitialExploreStateCopyWithImpl(_$_InitialExploreState _value,
      $Res Function(_$_InitialExploreState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialExploreState extends _InitialExploreState {
  _$_InitialExploreState() : super._();

  @override
  String toString() {
    return 'ExploreState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialExploreState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<ExploreItemModel> exploreList)
        loadedExploreItems,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<ExploreItemModel> exploreList)? loadedExploreItems,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<ExploreItemModel> exploreList)? loadedExploreItems,
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
    required TResult Function(_InitialExploreState value) initial,
    required TResult Function(_ErrorExploreState value) error,
    required TResult Function(LoadedExploreItemsState value) loadedExploreItems,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialExploreState value)? initial,
    TResult? Function(_ErrorExploreState value)? error,
    TResult? Function(LoadedExploreItemsState value)? loadedExploreItems,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialExploreState value)? initial,
    TResult Function(_ErrorExploreState value)? error,
    TResult Function(LoadedExploreItemsState value)? loadedExploreItems,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialExploreState extends ExploreState {
  factory _InitialExploreState() = _$_InitialExploreState;
  _InitialExploreState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorExploreStateCopyWith<$Res> {
  factory _$$_ErrorExploreStateCopyWith(_$_ErrorExploreState value,
          $Res Function(_$_ErrorExploreState) then) =
      __$$_ErrorExploreStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorExploreStateCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$_ErrorExploreState>
    implements _$$_ErrorExploreStateCopyWith<$Res> {
  __$$_ErrorExploreStateCopyWithImpl(
      _$_ErrorExploreState _value, $Res Function(_$_ErrorExploreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorExploreState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorExploreState extends _ErrorExploreState {
  _$_ErrorExploreState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'ExploreState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorExploreState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorExploreStateCopyWith<_$_ErrorExploreState> get copyWith =>
      __$$_ErrorExploreStateCopyWithImpl<_$_ErrorExploreState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<ExploreItemModel> exploreList)
        loadedExploreItems,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<ExploreItemModel> exploreList)? loadedExploreItems,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<ExploreItemModel> exploreList)? loadedExploreItems,
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
    required TResult Function(_InitialExploreState value) initial,
    required TResult Function(_ErrorExploreState value) error,
    required TResult Function(LoadedExploreItemsState value) loadedExploreItems,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialExploreState value)? initial,
    TResult? Function(_ErrorExploreState value)? error,
    TResult? Function(LoadedExploreItemsState value)? loadedExploreItems,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialExploreState value)? initial,
    TResult Function(_ErrorExploreState value)? error,
    TResult Function(LoadedExploreItemsState value)? loadedExploreItems,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorExploreState extends ExploreState {
  factory _ErrorExploreState(final String message) = _$_ErrorExploreState;
  _ErrorExploreState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorExploreStateCopyWith<_$_ErrorExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedExploreItemsStateCopyWith<$Res> {
  factory _$$LoadedExploreItemsStateCopyWith(_$LoadedExploreItemsState value,
          $Res Function(_$LoadedExploreItemsState) then) =
      __$$LoadedExploreItemsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExploreItemModel> exploreList});
}

/// @nodoc
class __$$LoadedExploreItemsStateCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$LoadedExploreItemsState>
    implements _$$LoadedExploreItemsStateCopyWith<$Res> {
  __$$LoadedExploreItemsStateCopyWithImpl(_$LoadedExploreItemsState _value,
      $Res Function(_$LoadedExploreItemsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exploreList = null,
  }) {
    return _then(_$LoadedExploreItemsState(
      exploreList: null == exploreList
          ? _value._exploreList
          : exploreList // ignore: cast_nullable_to_non_nullable
              as List<ExploreItemModel>,
    ));
  }
}

/// @nodoc

class _$LoadedExploreItemsState extends LoadedExploreItemsState {
  _$LoadedExploreItemsState({required final List<ExploreItemModel> exploreList})
      : _exploreList = exploreList,
        super._();

  final List<ExploreItemModel> _exploreList;
  @override
  List<ExploreItemModel> get exploreList {
    if (_exploreList is EqualUnmodifiableListView) return _exploreList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exploreList);
  }

  @override
  String toString() {
    return 'ExploreState.loadedExploreItems(exploreList: $exploreList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedExploreItemsState &&
            const DeepCollectionEquality()
                .equals(other._exploreList, _exploreList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_exploreList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedExploreItemsStateCopyWith<_$LoadedExploreItemsState> get copyWith =>
      __$$LoadedExploreItemsStateCopyWithImpl<_$LoadedExploreItemsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<ExploreItemModel> exploreList)
        loadedExploreItems,
  }) {
    return loadedExploreItems(exploreList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<ExploreItemModel> exploreList)? loadedExploreItems,
  }) {
    return loadedExploreItems?.call(exploreList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<ExploreItemModel> exploreList)? loadedExploreItems,
    required TResult orElse(),
  }) {
    if (loadedExploreItems != null) {
      return loadedExploreItems(exploreList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialExploreState value) initial,
    required TResult Function(_ErrorExploreState value) error,
    required TResult Function(LoadedExploreItemsState value) loadedExploreItems,
  }) {
    return loadedExploreItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialExploreState value)? initial,
    TResult? Function(_ErrorExploreState value)? error,
    TResult? Function(LoadedExploreItemsState value)? loadedExploreItems,
  }) {
    return loadedExploreItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialExploreState value)? initial,
    TResult Function(_ErrorExploreState value)? error,
    TResult Function(LoadedExploreItemsState value)? loadedExploreItems,
    required TResult orElse(),
  }) {
    if (loadedExploreItems != null) {
      return loadedExploreItems(this);
    }
    return orElse();
  }
}

abstract class LoadedExploreItemsState extends ExploreState {
  factory LoadedExploreItemsState(
          {required final List<ExploreItemModel> exploreList}) =
      _$LoadedExploreItemsState;
  LoadedExploreItemsState._() : super._();

  List<ExploreItemModel> get exploreList;
  @JsonKey(ignore: true)
  _$$LoadedExploreItemsStateCopyWith<_$LoadedExploreItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}
