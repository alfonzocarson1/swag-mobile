// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sold_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SoldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSoldItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSoldItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSoldItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSoldItem value) getSoldItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSoldItem value)? getSoldItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSoldItem value)? getSoldItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldEventCopyWith<$Res> {
  factory $SoldEventCopyWith(SoldEvent value, $Res Function(SoldEvent) then) =
      _$SoldEventCopyWithImpl<$Res, SoldEvent>;
}

/// @nodoc
class _$SoldEventCopyWithImpl<$Res, $Val extends SoldEvent>
    implements $SoldEventCopyWith<$Res> {
  _$SoldEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSoldItemCopyWith<$Res> {
  factory _$$_GetSoldItemCopyWith(
          _$_GetSoldItem value, $Res Function(_$_GetSoldItem) then) =
      __$$_GetSoldItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSoldItemCopyWithImpl<$Res>
    extends _$SoldEventCopyWithImpl<$Res, _$_GetSoldItem>
    implements _$$_GetSoldItemCopyWith<$Res> {
  __$$_GetSoldItemCopyWithImpl(
      _$_GetSoldItem _value, $Res Function(_$_GetSoldItem) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSoldItem implements _GetSoldItem {
  const _$_GetSoldItem();

  @override
  String toString() {
    return 'SoldEvent.getSoldItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSoldItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSoldItem,
  }) {
    return getSoldItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSoldItem,
  }) {
    return getSoldItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSoldItem,
    required TResult orElse(),
  }) {
    if (getSoldItem != null) {
      return getSoldItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSoldItem value) getSoldItem,
  }) {
    return getSoldItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSoldItem value)? getSoldItem,
  }) {
    return getSoldItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSoldItem value)? getSoldItem,
    required TResult orElse(),
  }) {
    if (getSoldItem != null) {
      return getSoldItem(this);
    }
    return orElse();
  }
}

abstract class _GetSoldItem implements SoldEvent {
  const factory _GetSoldItem() = _$_GetSoldItem;
}

/// @nodoc
mixin _$SoldState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<SoldItemModel> dataSoldList) loadedSoldItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<SoldItemModel> dataSoldList)? loadedSoldItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<SoldItemModel> dataSoldList)? loadedSoldItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSoldState value) initial,
    required TResult Function(_ErrorSoldState value) error,
    required TResult Function(LoadedSoldItemState value) loadedSoldItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSoldState value)? initial,
    TResult? Function(_ErrorSoldState value)? error,
    TResult? Function(LoadedSoldItemState value)? loadedSoldItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSoldState value)? initial,
    TResult Function(_ErrorSoldState value)? error,
    TResult Function(LoadedSoldItemState value)? loadedSoldItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldStateCopyWith<$Res> {
  factory $SoldStateCopyWith(SoldState value, $Res Function(SoldState) then) =
      _$SoldStateCopyWithImpl<$Res, SoldState>;
}

/// @nodoc
class _$SoldStateCopyWithImpl<$Res, $Val extends SoldState>
    implements $SoldStateCopyWith<$Res> {
  _$SoldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialSoldStateCopyWith<$Res> {
  factory _$$_InitialSoldStateCopyWith(
          _$_InitialSoldState value, $Res Function(_$_InitialSoldState) then) =
      __$$_InitialSoldStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialSoldStateCopyWithImpl<$Res>
    extends _$SoldStateCopyWithImpl<$Res, _$_InitialSoldState>
    implements _$$_InitialSoldStateCopyWith<$Res> {
  __$$_InitialSoldStateCopyWithImpl(
      _$_InitialSoldState _value, $Res Function(_$_InitialSoldState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialSoldState extends _InitialSoldState {
  _$_InitialSoldState() : super._();

  @override
  String toString() {
    return 'SoldState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialSoldState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<SoldItemModel> dataSoldList) loadedSoldItems,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<SoldItemModel> dataSoldList)? loadedSoldItems,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<SoldItemModel> dataSoldList)? loadedSoldItems,
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
    required TResult Function(_InitialSoldState value) initial,
    required TResult Function(_ErrorSoldState value) error,
    required TResult Function(LoadedSoldItemState value) loadedSoldItems,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSoldState value)? initial,
    TResult? Function(_ErrorSoldState value)? error,
    TResult? Function(LoadedSoldItemState value)? loadedSoldItems,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSoldState value)? initial,
    TResult Function(_ErrorSoldState value)? error,
    TResult Function(LoadedSoldItemState value)? loadedSoldItems,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSoldState extends SoldState {
  factory _InitialSoldState() = _$_InitialSoldState;
  _InitialSoldState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorSoldStateCopyWith<$Res> {
  factory _$$_ErrorSoldStateCopyWith(
          _$_ErrorSoldState value, $Res Function(_$_ErrorSoldState) then) =
      __$$_ErrorSoldStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorSoldStateCopyWithImpl<$Res>
    extends _$SoldStateCopyWithImpl<$Res, _$_ErrorSoldState>
    implements _$$_ErrorSoldStateCopyWith<$Res> {
  __$$_ErrorSoldStateCopyWithImpl(
      _$_ErrorSoldState _value, $Res Function(_$_ErrorSoldState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorSoldState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorSoldState extends _ErrorSoldState {
  _$_ErrorSoldState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SoldState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSoldState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSoldStateCopyWith<_$_ErrorSoldState> get copyWith =>
      __$$_ErrorSoldStateCopyWithImpl<_$_ErrorSoldState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<SoldItemModel> dataSoldList) loadedSoldItems,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<SoldItemModel> dataSoldList)? loadedSoldItems,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<SoldItemModel> dataSoldList)? loadedSoldItems,
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
    required TResult Function(_InitialSoldState value) initial,
    required TResult Function(_ErrorSoldState value) error,
    required TResult Function(LoadedSoldItemState value) loadedSoldItems,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSoldState value)? initial,
    TResult? Function(_ErrorSoldState value)? error,
    TResult? Function(LoadedSoldItemState value)? loadedSoldItems,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSoldState value)? initial,
    TResult Function(_ErrorSoldState value)? error,
    TResult Function(LoadedSoldItemState value)? loadedSoldItems,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSoldState extends SoldState {
  factory _ErrorSoldState(final String message) = _$_ErrorSoldState;
  _ErrorSoldState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorSoldStateCopyWith<_$_ErrorSoldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSoldItemStateCopyWith<$Res> {
  factory _$$LoadedSoldItemStateCopyWith(_$LoadedSoldItemState value,
          $Res Function(_$LoadedSoldItemState) then) =
      __$$LoadedSoldItemStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SoldItemModel> dataSoldList});
}

/// @nodoc
class __$$LoadedSoldItemStateCopyWithImpl<$Res>
    extends _$SoldStateCopyWithImpl<$Res, _$LoadedSoldItemState>
    implements _$$LoadedSoldItemStateCopyWith<$Res> {
  __$$LoadedSoldItemStateCopyWithImpl(
      _$LoadedSoldItemState _value, $Res Function(_$LoadedSoldItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataSoldList = null,
  }) {
    return _then(_$LoadedSoldItemState(
      dataSoldList: null == dataSoldList
          ? _value._dataSoldList
          : dataSoldList // ignore: cast_nullable_to_non_nullable
              as List<SoldItemModel>,
    ));
  }
}

/// @nodoc

class _$LoadedSoldItemState extends LoadedSoldItemState {
  _$LoadedSoldItemState({required final List<SoldItemModel> dataSoldList})
      : _dataSoldList = dataSoldList,
        super._();

  final List<SoldItemModel> _dataSoldList;
  @override
  List<SoldItemModel> get dataSoldList {
    if (_dataSoldList is EqualUnmodifiableListView) return _dataSoldList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataSoldList);
  }

  @override
  String toString() {
    return 'SoldState.loadedSoldItems(dataSoldList: $dataSoldList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSoldItemState &&
            const DeepCollectionEquality()
                .equals(other._dataSoldList, _dataSoldList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dataSoldList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSoldItemStateCopyWith<_$LoadedSoldItemState> get copyWith =>
      __$$LoadedSoldItemStateCopyWithImpl<_$LoadedSoldItemState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<SoldItemModel> dataSoldList) loadedSoldItems,
  }) {
    return loadedSoldItems(dataSoldList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<SoldItemModel> dataSoldList)? loadedSoldItems,
  }) {
    return loadedSoldItems?.call(dataSoldList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<SoldItemModel> dataSoldList)? loadedSoldItems,
    required TResult orElse(),
  }) {
    if (loadedSoldItems != null) {
      return loadedSoldItems(dataSoldList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSoldState value) initial,
    required TResult Function(_ErrorSoldState value) error,
    required TResult Function(LoadedSoldItemState value) loadedSoldItems,
  }) {
    return loadedSoldItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSoldState value)? initial,
    TResult? Function(_ErrorSoldState value)? error,
    TResult? Function(LoadedSoldItemState value)? loadedSoldItems,
  }) {
    return loadedSoldItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSoldState value)? initial,
    TResult Function(_ErrorSoldState value)? error,
    TResult Function(LoadedSoldItemState value)? loadedSoldItems,
    required TResult orElse(),
  }) {
    if (loadedSoldItems != null) {
      return loadedSoldItems(this);
    }
    return orElse();
  }
}

abstract class LoadedSoldItemState extends SoldState {
  factory LoadedSoldItemState(
          {required final List<SoldItemModel> dataSoldList}) =
      _$LoadedSoldItemState;
  LoadedSoldItemState._() : super._();

  List<SoldItemModel> get dataSoldList;
  @JsonKey(ignore: true)
  _$$LoadedSoldItemStateCopyWith<_$LoadedSoldItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
