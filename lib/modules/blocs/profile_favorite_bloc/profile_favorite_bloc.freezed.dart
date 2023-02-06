// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavoriteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavoriteItem value) getFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavoriteItem value)? getFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavoriteItem value)? getFavoriteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetFavoriteItemCopyWith<$Res> {
  factory _$$_GetFavoriteItemCopyWith(
          _$_GetFavoriteItem value, $Res Function(_$_GetFavoriteItem) then) =
      __$$_GetFavoriteItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFavoriteItemCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$_GetFavoriteItem>
    implements _$$_GetFavoriteItemCopyWith<$Res> {
  __$$_GetFavoriteItemCopyWithImpl(
      _$_GetFavoriteItem _value, $Res Function(_$_GetFavoriteItem) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetFavoriteItem implements _GetFavoriteItem {
  const _$_GetFavoriteItem();

  @override
  String toString() {
    return 'FavoriteEvent.getFavoriteItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFavoriteItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavoriteItem,
  }) {
    return getFavoriteItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavoriteItem,
  }) {
    return getFavoriteItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavoriteItem,
    required TResult orElse(),
  }) {
    if (getFavoriteItem != null) {
      return getFavoriteItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavoriteItem value) getFavoriteItem,
  }) {
    return getFavoriteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavoriteItem value)? getFavoriteItem,
  }) {
    return getFavoriteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavoriteItem value)? getFavoriteItem,
    required TResult orElse(),
  }) {
    if (getFavoriteItem != null) {
      return getFavoriteItem(this);
    }
    return orElse();
  }
}

abstract class _GetFavoriteItem implements FavoriteEvent {
  const factory _GetFavoriteItem() = _$_GetFavoriteItem;
}

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<FavoriteItemModel> dataFavoriteList)
        loadedFavoriteItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<FavoriteItemModel> dataFavoriteList)?
        loadedFavoriteItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<FavoriteItemModel> dataFavoriteList)?
        loadedFavoriteItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFavoriteState value) initial,
    required TResult Function(_ErrorFavoriteState value) error,
    required TResult Function(LoadedFavoriteItemState value)
        loadedFavoriteItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFavoriteState value)? initial,
    TResult? Function(_ErrorFavoriteState value)? error,
    TResult? Function(LoadedFavoriteItemState value)? loadedFavoriteItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFavoriteState value)? initial,
    TResult Function(_ErrorFavoriteState value)? error,
    TResult Function(LoadedFavoriteItemState value)? loadedFavoriteItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialFavoriteStateCopyWith<$Res> {
  factory _$$_InitialFavoriteStateCopyWith(_$_InitialFavoriteState value,
          $Res Function(_$_InitialFavoriteState) then) =
      __$$_InitialFavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialFavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_InitialFavoriteState>
    implements _$$_InitialFavoriteStateCopyWith<$Res> {
  __$$_InitialFavoriteStateCopyWithImpl(_$_InitialFavoriteState _value,
      $Res Function(_$_InitialFavoriteState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialFavoriteState extends _InitialFavoriteState {
  _$_InitialFavoriteState() : super._();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialFavoriteState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<FavoriteItemModel> dataFavoriteList)
        loadedFavoriteItems,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<FavoriteItemModel> dataFavoriteList)?
        loadedFavoriteItems,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<FavoriteItemModel> dataFavoriteList)?
        loadedFavoriteItems,
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
    required TResult Function(_InitialFavoriteState value) initial,
    required TResult Function(_ErrorFavoriteState value) error,
    required TResult Function(LoadedFavoriteItemState value)
        loadedFavoriteItems,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFavoriteState value)? initial,
    TResult? Function(_ErrorFavoriteState value)? error,
    TResult? Function(LoadedFavoriteItemState value)? loadedFavoriteItems,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFavoriteState value)? initial,
    TResult Function(_ErrorFavoriteState value)? error,
    TResult Function(LoadedFavoriteItemState value)? loadedFavoriteItems,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialFavoriteState extends FavoriteState {
  factory _InitialFavoriteState() = _$_InitialFavoriteState;
  _InitialFavoriteState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorFavoriteStateCopyWith<$Res> {
  factory _$$_ErrorFavoriteStateCopyWith(_$_ErrorFavoriteState value,
          $Res Function(_$_ErrorFavoriteState) then) =
      __$$_ErrorFavoriteStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorFavoriteStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$_ErrorFavoriteState>
    implements _$$_ErrorFavoriteStateCopyWith<$Res> {
  __$$_ErrorFavoriteStateCopyWithImpl(
      _$_ErrorFavoriteState _value, $Res Function(_$_ErrorFavoriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorFavoriteState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorFavoriteState extends _ErrorFavoriteState {
  _$_ErrorFavoriteState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'FavoriteState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorFavoriteState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorFavoriteStateCopyWith<_$_ErrorFavoriteState> get copyWith =>
      __$$_ErrorFavoriteStateCopyWithImpl<_$_ErrorFavoriteState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<FavoriteItemModel> dataFavoriteList)
        loadedFavoriteItems,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<FavoriteItemModel> dataFavoriteList)?
        loadedFavoriteItems,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<FavoriteItemModel> dataFavoriteList)?
        loadedFavoriteItems,
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
    required TResult Function(_InitialFavoriteState value) initial,
    required TResult Function(_ErrorFavoriteState value) error,
    required TResult Function(LoadedFavoriteItemState value)
        loadedFavoriteItems,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFavoriteState value)? initial,
    TResult? Function(_ErrorFavoriteState value)? error,
    TResult? Function(LoadedFavoriteItemState value)? loadedFavoriteItems,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFavoriteState value)? initial,
    TResult Function(_ErrorFavoriteState value)? error,
    TResult Function(LoadedFavoriteItemState value)? loadedFavoriteItems,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorFavoriteState extends FavoriteState {
  factory _ErrorFavoriteState(final String message) = _$_ErrorFavoriteState;
  _ErrorFavoriteState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorFavoriteStateCopyWith<_$_ErrorFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedFavoriteItemStateCopyWith<$Res> {
  factory _$$LoadedFavoriteItemStateCopyWith(_$LoadedFavoriteItemState value,
          $Res Function(_$LoadedFavoriteItemState) then) =
      __$$LoadedFavoriteItemStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FavoriteItemModel> dataFavoriteList});
}

/// @nodoc
class __$$LoadedFavoriteItemStateCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$LoadedFavoriteItemState>
    implements _$$LoadedFavoriteItemStateCopyWith<$Res> {
  __$$LoadedFavoriteItemStateCopyWithImpl(_$LoadedFavoriteItemState _value,
      $Res Function(_$LoadedFavoriteItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataFavoriteList = null,
  }) {
    return _then(_$LoadedFavoriteItemState(
      dataFavoriteList: null == dataFavoriteList
          ? _value._dataFavoriteList
          : dataFavoriteList // ignore: cast_nullable_to_non_nullable
              as List<FavoriteItemModel>,
    ));
  }
}

/// @nodoc

class _$LoadedFavoriteItemState extends LoadedFavoriteItemState {
  _$LoadedFavoriteItemState(
      {required final List<FavoriteItemModel> dataFavoriteList})
      : _dataFavoriteList = dataFavoriteList,
        super._();

  final List<FavoriteItemModel> _dataFavoriteList;
  @override
  List<FavoriteItemModel> get dataFavoriteList {
    if (_dataFavoriteList is EqualUnmodifiableListView)
      return _dataFavoriteList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataFavoriteList);
  }

  @override
  String toString() {
    return 'FavoriteState.loadedFavoriteItems(dataFavoriteList: $dataFavoriteList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedFavoriteItemState &&
            const DeepCollectionEquality()
                .equals(other._dataFavoriteList, _dataFavoriteList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dataFavoriteList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedFavoriteItemStateCopyWith<_$LoadedFavoriteItemState> get copyWith =>
      __$$LoadedFavoriteItemStateCopyWithImpl<_$LoadedFavoriteItemState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<FavoriteItemModel> dataFavoriteList)
        loadedFavoriteItems,
  }) {
    return loadedFavoriteItems(dataFavoriteList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<FavoriteItemModel> dataFavoriteList)?
        loadedFavoriteItems,
  }) {
    return loadedFavoriteItems?.call(dataFavoriteList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<FavoriteItemModel> dataFavoriteList)?
        loadedFavoriteItems,
    required TResult orElse(),
  }) {
    if (loadedFavoriteItems != null) {
      return loadedFavoriteItems(dataFavoriteList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFavoriteState value) initial,
    required TResult Function(_ErrorFavoriteState value) error,
    required TResult Function(LoadedFavoriteItemState value)
        loadedFavoriteItems,
  }) {
    return loadedFavoriteItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFavoriteState value)? initial,
    TResult? Function(_ErrorFavoriteState value)? error,
    TResult? Function(LoadedFavoriteItemState value)? loadedFavoriteItems,
  }) {
    return loadedFavoriteItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFavoriteState value)? initial,
    TResult Function(_ErrorFavoriteState value)? error,
    TResult Function(LoadedFavoriteItemState value)? loadedFavoriteItems,
    required TResult orElse(),
  }) {
    if (loadedFavoriteItems != null) {
      return loadedFavoriteItems(this);
    }
    return orElse();
  }
}

abstract class LoadedFavoriteItemState extends FavoriteState {
  factory LoadedFavoriteItemState(
          {required final List<FavoriteItemModel> dataFavoriteList}) =
      _$LoadedFavoriteItemState;
  LoadedFavoriteItemState._() : super._();

  List<FavoriteItemModel> get dataFavoriteList;
  @JsonKey(ignore: true)
  _$$LoadedFavoriteItemStateCopyWith<_$LoadedFavoriteItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
