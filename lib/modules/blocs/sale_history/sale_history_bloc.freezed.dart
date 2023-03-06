// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesHistoryEvent {
  String get itemId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) getSalesHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String itemId)? getSalesHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? getSalesHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSalesHistoryItem value) getSalesHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSalesHistoryItem value)? getSalesHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSalesHistoryItem value)? getSalesHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesHistoryEventCopyWith<SalesHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesHistoryEventCopyWith<$Res> {
  factory $SalesHistoryEventCopyWith(
          SalesHistoryEvent value, $Res Function(SalesHistoryEvent) then) =
      _$SalesHistoryEventCopyWithImpl<$Res, SalesHistoryEvent>;
  @useResult
  $Res call({String itemId});
}

/// @nodoc
class _$SalesHistoryEventCopyWithImpl<$Res, $Val extends SalesHistoryEvent>
    implements $SalesHistoryEventCopyWith<$Res> {
  _$SalesHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetSalesHistoryItemCopyWith<$Res>
    implements $SalesHistoryEventCopyWith<$Res> {
  factory _$$_GetSalesHistoryItemCopyWith(_$_GetSalesHistoryItem value,
          $Res Function(_$_GetSalesHistoryItem) then) =
      __$$_GetSalesHistoryItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemId});
}

/// @nodoc
class __$$_GetSalesHistoryItemCopyWithImpl<$Res>
    extends _$SalesHistoryEventCopyWithImpl<$Res, _$_GetSalesHistoryItem>
    implements _$$_GetSalesHistoryItemCopyWith<$Res> {
  __$$_GetSalesHistoryItemCopyWithImpl(_$_GetSalesHistoryItem _value,
      $Res Function(_$_GetSalesHistoryItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$_GetSalesHistoryItem(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSalesHistoryItem implements _GetSalesHistoryItem {
  const _$_GetSalesHistoryItem(this.itemId);

  @override
  final String itemId;

  @override
  String toString() {
    return 'SalesHistoryEvent.getSalesHistory(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSalesHistoryItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetSalesHistoryItemCopyWith<_$_GetSalesHistoryItem> get copyWith =>
      __$$_GetSalesHistoryItemCopyWithImpl<_$_GetSalesHistoryItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) getSalesHistory,
  }) {
    return getSalesHistory(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String itemId)? getSalesHistory,
  }) {
    return getSalesHistory?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? getSalesHistory,
    required TResult orElse(),
  }) {
    if (getSalesHistory != null) {
      return getSalesHistory(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSalesHistoryItem value) getSalesHistory,
  }) {
    return getSalesHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSalesHistoryItem value)? getSalesHistory,
  }) {
    return getSalesHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSalesHistoryItem value)? getSalesHistory,
    required TResult orElse(),
  }) {
    if (getSalesHistory != null) {
      return getSalesHistory(this);
    }
    return orElse();
  }
}

abstract class _GetSalesHistoryItem implements SalesHistoryEvent {
  const factory _GetSalesHistoryItem(final String itemId) =
      _$_GetSalesHistoryItem;

  @override
  String get itemId;
  @override
  @JsonKey(ignore: true)
  _$$_GetSalesHistoryItemCopyWith<_$_GetSalesHistoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<SalesHistoryListModel> detaSalesHistoryList)
        loadedSalesHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<SalesHistoryListModel> detaSalesHistoryList)?
        loadedSalesHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<SalesHistoryListModel> detaSalesHistoryList)?
        loadedSalesHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSalesHistoryState value) initial,
    required TResult Function(_ErrorSalesHistoryState value) error,
    required TResult Function(LoadedSalesHistoryState value) loadedSalesHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSalesHistoryState value)? initial,
    TResult? Function(_ErrorSalesHistoryState value)? error,
    TResult? Function(LoadedSalesHistoryState value)? loadedSalesHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSalesHistoryState value)? initial,
    TResult Function(_ErrorSalesHistoryState value)? error,
    TResult Function(LoadedSalesHistoryState value)? loadedSalesHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesHistoryStateCopyWith<$Res> {
  factory $SalesHistoryStateCopyWith(
          SalesHistoryState value, $Res Function(SalesHistoryState) then) =
      _$SalesHistoryStateCopyWithImpl<$Res, SalesHistoryState>;
}

/// @nodoc
class _$SalesHistoryStateCopyWithImpl<$Res, $Val extends SalesHistoryState>
    implements $SalesHistoryStateCopyWith<$Res> {
  _$SalesHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSalesHistoryStateCopyWith<$Res> {
  factory _$$_InitialSalesHistoryStateCopyWith(
          _$_InitialSalesHistoryState value,
          $Res Function(_$_InitialSalesHistoryState) then) =
      __$$_InitialSalesHistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSalesHistoryStateCopyWithImpl<$Res>
    extends _$SalesHistoryStateCopyWithImpl<$Res, _$_InitialSalesHistoryState>
    implements _$$_InitialSalesHistoryStateCopyWith<$Res> {
  __$$_InitialSalesHistoryStateCopyWithImpl(_$_InitialSalesHistoryState _value,
      $Res Function(_$_InitialSalesHistoryState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSalesHistoryState extends _InitialSalesHistoryState {
  _$_InitialSalesHistoryState() : super._();

  @override
  String toString() {
    return 'SalesHistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSalesHistoryState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<SalesHistoryListModel> detaSalesHistoryList)
        loadedSalesHistory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<SalesHistoryListModel> detaSalesHistoryList)?
        loadedSalesHistory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<SalesHistoryListModel> detaSalesHistoryList)?
        loadedSalesHistory,
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
    required TResult Function(_InitialSalesHistoryState value) initial,
    required TResult Function(_ErrorSalesHistoryState value) error,
    required TResult Function(LoadedSalesHistoryState value) loadedSalesHistory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSalesHistoryState value)? initial,
    TResult? Function(_ErrorSalesHistoryState value)? error,
    TResult? Function(LoadedSalesHistoryState value)? loadedSalesHistory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSalesHistoryState value)? initial,
    TResult Function(_ErrorSalesHistoryState value)? error,
    TResult Function(LoadedSalesHistoryState value)? loadedSalesHistory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSalesHistoryState extends SalesHistoryState {
  factory _InitialSalesHistoryState() = _$_InitialSalesHistoryState;
  _InitialSalesHistoryState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorSalesHistoryStateCopyWith<$Res> {
  factory _$$_ErrorSalesHistoryStateCopyWith(_$_ErrorSalesHistoryState value,
          $Res Function(_$_ErrorSalesHistoryState) then) =
      __$$_ErrorSalesHistoryStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorSalesHistoryStateCopyWithImpl<$Res>
    extends _$SalesHistoryStateCopyWithImpl<$Res, _$_ErrorSalesHistoryState>
    implements _$$_ErrorSalesHistoryStateCopyWith<$Res> {
  __$$_ErrorSalesHistoryStateCopyWithImpl(_$_ErrorSalesHistoryState _value,
      $Res Function(_$_ErrorSalesHistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorSalesHistoryState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorSalesHistoryState extends _ErrorSalesHistoryState {
  _$_ErrorSalesHistoryState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SalesHistoryState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSalesHistoryState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSalesHistoryStateCopyWith<_$_ErrorSalesHistoryState> get copyWith =>
      __$$_ErrorSalesHistoryStateCopyWithImpl<_$_ErrorSalesHistoryState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<SalesHistoryListModel> detaSalesHistoryList)
        loadedSalesHistory,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<SalesHistoryListModel> detaSalesHistoryList)?
        loadedSalesHistory,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<SalesHistoryListModel> detaSalesHistoryList)?
        loadedSalesHistory,
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
    required TResult Function(_InitialSalesHistoryState value) initial,
    required TResult Function(_ErrorSalesHistoryState value) error,
    required TResult Function(LoadedSalesHistoryState value) loadedSalesHistory,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSalesHistoryState value)? initial,
    TResult? Function(_ErrorSalesHistoryState value)? error,
    TResult? Function(LoadedSalesHistoryState value)? loadedSalesHistory,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSalesHistoryState value)? initial,
    TResult Function(_ErrorSalesHistoryState value)? error,
    TResult Function(LoadedSalesHistoryState value)? loadedSalesHistory,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSalesHistoryState extends SalesHistoryState {
  factory _ErrorSalesHistoryState(final String message) =
      _$_ErrorSalesHistoryState;
  _ErrorSalesHistoryState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorSalesHistoryStateCopyWith<_$_ErrorSalesHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSalesHistoryStateCopyWith<$Res> {
  factory _$$LoadedSalesHistoryStateCopyWith(_$LoadedSalesHistoryState value,
          $Res Function(_$LoadedSalesHistoryState) then) =
      __$$LoadedSalesHistoryStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SalesHistoryListModel> detaSalesHistoryList});
}

/// @nodoc
class __$$LoadedSalesHistoryStateCopyWithImpl<$Res>
    extends _$SalesHistoryStateCopyWithImpl<$Res, _$LoadedSalesHistoryState>
    implements _$$LoadedSalesHistoryStateCopyWith<$Res> {
  __$$LoadedSalesHistoryStateCopyWithImpl(_$LoadedSalesHistoryState _value,
      $Res Function(_$LoadedSalesHistoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detaSalesHistoryList = null,
  }) {
    return _then(_$LoadedSalesHistoryState(
      detaSalesHistoryList: null == detaSalesHistoryList
          ? _value._detaSalesHistoryList
          : detaSalesHistoryList // ignore: cast_nullable_to_non_nullable
              as List<SalesHistoryListModel>,
    ));
  }
}

/// @nodoc

class _$LoadedSalesHistoryState extends LoadedSalesHistoryState {
  _$LoadedSalesHistoryState(
      {required final List<SalesHistoryListModel> detaSalesHistoryList})
      : _detaSalesHistoryList = detaSalesHistoryList,
        super._();

  final List<SalesHistoryListModel> _detaSalesHistoryList;
  @override
  List<SalesHistoryListModel> get detaSalesHistoryList {
    if (_detaSalesHistoryList is EqualUnmodifiableListView)
      return _detaSalesHistoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detaSalesHistoryList);
  }

  @override
  String toString() {
    return 'SalesHistoryState.loadedSalesHistory(detaSalesHistoryList: $detaSalesHistoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSalesHistoryState &&
            const DeepCollectionEquality()
                .equals(other._detaSalesHistoryList, _detaSalesHistoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_detaSalesHistoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSalesHistoryStateCopyWith<_$LoadedSalesHistoryState> get copyWith =>
      __$$LoadedSalesHistoryStateCopyWithImpl<_$LoadedSalesHistoryState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<SalesHistoryListModel> detaSalesHistoryList)
        loadedSalesHistory,
  }) {
    return loadedSalesHistory(detaSalesHistoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<SalesHistoryListModel> detaSalesHistoryList)?
        loadedSalesHistory,
  }) {
    return loadedSalesHistory?.call(detaSalesHistoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<SalesHistoryListModel> detaSalesHistoryList)?
        loadedSalesHistory,
    required TResult orElse(),
  }) {
    if (loadedSalesHistory != null) {
      return loadedSalesHistory(detaSalesHistoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSalesHistoryState value) initial,
    required TResult Function(_ErrorSalesHistoryState value) error,
    required TResult Function(LoadedSalesHistoryState value) loadedSalesHistory,
  }) {
    return loadedSalesHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSalesHistoryState value)? initial,
    TResult? Function(_ErrorSalesHistoryState value)? error,
    TResult? Function(LoadedSalesHistoryState value)? loadedSalesHistory,
  }) {
    return loadedSalesHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSalesHistoryState value)? initial,
    TResult Function(_ErrorSalesHistoryState value)? error,
    TResult Function(LoadedSalesHistoryState value)? loadedSalesHistory,
    required TResult orElse(),
  }) {
    if (loadedSalesHistory != null) {
      return loadedSalesHistory(this);
    }
    return orElse();
  }
}

abstract class LoadedSalesHistoryState extends SalesHistoryState {
  factory LoadedSalesHistoryState(
          {required final List<SalesHistoryListModel> detaSalesHistoryList}) =
      _$LoadedSalesHistoryState;
  LoadedSalesHistoryState._() : super._();

  List<SalesHistoryListModel> get detaSalesHistoryList;
  @JsonKey(ignore: true)
  _$$LoadedSalesHistoryStateCopyWith<_$LoadedSalesHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
