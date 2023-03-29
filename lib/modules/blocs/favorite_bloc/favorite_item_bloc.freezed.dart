// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteItemEvent {
  FavoriteModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteModel model) addFavoriteItem,
    required TResult Function(FavoriteModel model) removeFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteModel model)? addFavoriteItem,
    TResult? Function(FavoriteModel model)? removeFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteModel model)? addFavoriteItem,
    TResult Function(FavoriteModel model)? removeFavoriteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavoriteItem value) addFavoriteItem,
    required TResult Function(_RemoveFavoriteItem value) removeFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavoriteItem value)? addFavoriteItem,
    TResult? Function(_RemoveFavoriteItem value)? removeFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavoriteItem value)? addFavoriteItem,
    TResult Function(_RemoveFavoriteItem value)? removeFavoriteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteItemEventCopyWith<FavoriteItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteItemEventCopyWith<$Res> {
  factory $FavoriteItemEventCopyWith(
          FavoriteItemEvent value, $Res Function(FavoriteItemEvent) then) =
      _$FavoriteItemEventCopyWithImpl<$Res, FavoriteItemEvent>;
  @useResult
  $Res call({FavoriteModel model});

  $FavoriteModelCopyWith<$Res> get model;
}

/// @nodoc
class _$FavoriteItemEventCopyWithImpl<$Res, $Val extends FavoriteItemEvent>
    implements $FavoriteItemEventCopyWith<$Res> {
  _$FavoriteItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FavoriteModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoriteModelCopyWith<$Res> get model {
    return $FavoriteModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddFavoriteItemCopyWith<$Res>
    implements $FavoriteItemEventCopyWith<$Res> {
  factory _$$_AddFavoriteItemCopyWith(
          _$_AddFavoriteItem value, $Res Function(_$_AddFavoriteItem) then) =
      __$$_AddFavoriteItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoriteModel model});

  @override
  $FavoriteModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_AddFavoriteItemCopyWithImpl<$Res>
    extends _$FavoriteItemEventCopyWithImpl<$Res, _$_AddFavoriteItem>
    implements _$$_AddFavoriteItemCopyWith<$Res> {
  __$$_AddFavoriteItemCopyWithImpl(
      _$_AddFavoriteItem _value, $Res Function(_$_AddFavoriteItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_AddFavoriteItem(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FavoriteModel,
    ));
  }
}

/// @nodoc

class _$_AddFavoriteItem implements _AddFavoriteItem {
  const _$_AddFavoriteItem(this.model);

  @override
  final FavoriteModel model;

  @override
  String toString() {
    return 'FavoriteItemEvent.addFavoriteItem(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFavoriteItem &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFavoriteItemCopyWith<_$_AddFavoriteItem> get copyWith =>
      __$$_AddFavoriteItemCopyWithImpl<_$_AddFavoriteItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteModel model) addFavoriteItem,
    required TResult Function(FavoriteModel model) removeFavoriteItem,
  }) {
    return addFavoriteItem(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteModel model)? addFavoriteItem,
    TResult? Function(FavoriteModel model)? removeFavoriteItem,
  }) {
    return addFavoriteItem?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteModel model)? addFavoriteItem,
    TResult Function(FavoriteModel model)? removeFavoriteItem,
    required TResult orElse(),
  }) {
    if (addFavoriteItem != null) {
      return addFavoriteItem(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavoriteItem value) addFavoriteItem,
    required TResult Function(_RemoveFavoriteItem value) removeFavoriteItem,
  }) {
    return addFavoriteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavoriteItem value)? addFavoriteItem,
    TResult? Function(_RemoveFavoriteItem value)? removeFavoriteItem,
  }) {
    return addFavoriteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavoriteItem value)? addFavoriteItem,
    TResult Function(_RemoveFavoriteItem value)? removeFavoriteItem,
    required TResult orElse(),
  }) {
    if (addFavoriteItem != null) {
      return addFavoriteItem(this);
    }
    return orElse();
  }
}

abstract class _AddFavoriteItem implements FavoriteItemEvent {
  const factory _AddFavoriteItem(final FavoriteModel model) =
      _$_AddFavoriteItem;

  @override
  FavoriteModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_AddFavoriteItemCopyWith<_$_AddFavoriteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveFavoriteItemCopyWith<$Res>
    implements $FavoriteItemEventCopyWith<$Res> {
  factory _$$_RemoveFavoriteItemCopyWith(_$_RemoveFavoriteItem value,
          $Res Function(_$_RemoveFavoriteItem) then) =
      __$$_RemoveFavoriteItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoriteModel model});

  @override
  $FavoriteModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_RemoveFavoriteItemCopyWithImpl<$Res>
    extends _$FavoriteItemEventCopyWithImpl<$Res, _$_RemoveFavoriteItem>
    implements _$$_RemoveFavoriteItemCopyWith<$Res> {
  __$$_RemoveFavoriteItemCopyWithImpl(
      _$_RemoveFavoriteItem _value, $Res Function(_$_RemoveFavoriteItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_RemoveFavoriteItem(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as FavoriteModel,
    ));
  }
}

/// @nodoc

class _$_RemoveFavoriteItem implements _RemoveFavoriteItem {
  const _$_RemoveFavoriteItem(this.model);

  @override
  final FavoriteModel model;

  @override
  String toString() {
    return 'FavoriteItemEvent.removeFavoriteItem(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveFavoriteItem &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveFavoriteItemCopyWith<_$_RemoveFavoriteItem> get copyWith =>
      __$$_RemoveFavoriteItemCopyWithImpl<_$_RemoveFavoriteItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FavoriteModel model) addFavoriteItem,
    required TResult Function(FavoriteModel model) removeFavoriteItem,
  }) {
    return removeFavoriteItem(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FavoriteModel model)? addFavoriteItem,
    TResult? Function(FavoriteModel model)? removeFavoriteItem,
  }) {
    return removeFavoriteItem?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FavoriteModel model)? addFavoriteItem,
    TResult Function(FavoriteModel model)? removeFavoriteItem,
    required TResult orElse(),
  }) {
    if (removeFavoriteItem != null) {
      return removeFavoriteItem(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavoriteItem value) addFavoriteItem,
    required TResult Function(_RemoveFavoriteItem value) removeFavoriteItem,
  }) {
    return removeFavoriteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavoriteItem value)? addFavoriteItem,
    TResult? Function(_RemoveFavoriteItem value)? removeFavoriteItem,
  }) {
    return removeFavoriteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavoriteItem value)? addFavoriteItem,
    TResult Function(_RemoveFavoriteItem value)? removeFavoriteItem,
    required TResult orElse(),
  }) {
    if (removeFavoriteItem != null) {
      return removeFavoriteItem(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavoriteItem implements FavoriteItemEvent {
  const factory _RemoveFavoriteItem(final FavoriteModel model) =
      _$_RemoveFavoriteItem;

  @override
  FavoriteModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveFavoriteItemCopyWith<_$_RemoveFavoriteItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteItemState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(FavoriteModel dataFavoriteItem)
        loadedFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(FavoriteModel dataFavoriteItem)? loadedFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(FavoriteModel dataFavoriteItem)? loadedFavoriteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFavoriteItemState value) initial,
    required TResult Function(_ErrorFavoriteItemState value) error,
    required TResult Function(LoadedFavoriteItemState value) loadedFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFavoriteItemState value)? initial,
    TResult? Function(_ErrorFavoriteItemState value)? error,
    TResult? Function(LoadedFavoriteItemState value)? loadedFavoriteItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFavoriteItemState value)? initial,
    TResult Function(_ErrorFavoriteItemState value)? error,
    TResult Function(LoadedFavoriteItemState value)? loadedFavoriteItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteItemStateCopyWith<$Res> {
  factory $FavoriteItemStateCopyWith(
          FavoriteItemState value, $Res Function(FavoriteItemState) then) =
      _$FavoriteItemStateCopyWithImpl<$Res, FavoriteItemState>;
}

/// @nodoc
class _$FavoriteItemStateCopyWithImpl<$Res, $Val extends FavoriteItemState>
    implements $FavoriteItemStateCopyWith<$Res> {
  _$FavoriteItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialFavoriteItemStateCopyWith<$Res> {
  factory _$$_InitialFavoriteItemStateCopyWith(
          _$_InitialFavoriteItemState value,
          $Res Function(_$_InitialFavoriteItemState) then) =
      __$$_InitialFavoriteItemStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialFavoriteItemStateCopyWithImpl<$Res>
    extends _$FavoriteItemStateCopyWithImpl<$Res, _$_InitialFavoriteItemState>
    implements _$$_InitialFavoriteItemStateCopyWith<$Res> {
  __$$_InitialFavoriteItemStateCopyWithImpl(_$_InitialFavoriteItemState _value,
      $Res Function(_$_InitialFavoriteItemState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialFavoriteItemState extends _InitialFavoriteItemState {
  _$_InitialFavoriteItemState() : super._();

  @override
  String toString() {
    return 'FavoriteItemState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialFavoriteItemState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(FavoriteModel dataFavoriteItem)
        loadedFavoriteItem,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(FavoriteModel dataFavoriteItem)? loadedFavoriteItem,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(FavoriteModel dataFavoriteItem)? loadedFavoriteItem,
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
    required TResult Function(_InitialFavoriteItemState value) initial,
    required TResult Function(_ErrorFavoriteItemState value) error,
    required TResult Function(LoadedFavoriteItemState value) loadedFavoriteItem,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFavoriteItemState value)? initial,
    TResult? Function(_ErrorFavoriteItemState value)? error,
    TResult? Function(LoadedFavoriteItemState value)? loadedFavoriteItem,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFavoriteItemState value)? initial,
    TResult Function(_ErrorFavoriteItemState value)? error,
    TResult Function(LoadedFavoriteItemState value)? loadedFavoriteItem,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialFavoriteItemState extends FavoriteItemState {
  factory _InitialFavoriteItemState() = _$_InitialFavoriteItemState;
  _InitialFavoriteItemState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorFavoriteItemStateCopyWith<$Res> {
  factory _$$_ErrorFavoriteItemStateCopyWith(_$_ErrorFavoriteItemState value,
          $Res Function(_$_ErrorFavoriteItemState) then) =
      __$$_ErrorFavoriteItemStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorFavoriteItemStateCopyWithImpl<$Res>
    extends _$FavoriteItemStateCopyWithImpl<$Res, _$_ErrorFavoriteItemState>
    implements _$$_ErrorFavoriteItemStateCopyWith<$Res> {
  __$$_ErrorFavoriteItemStateCopyWithImpl(_$_ErrorFavoriteItemState _value,
      $Res Function(_$_ErrorFavoriteItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorFavoriteItemState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorFavoriteItemState extends _ErrorFavoriteItemState {
  _$_ErrorFavoriteItemState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'FavoriteItemState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorFavoriteItemState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorFavoriteItemStateCopyWith<_$_ErrorFavoriteItemState> get copyWith =>
      __$$_ErrorFavoriteItemStateCopyWithImpl<_$_ErrorFavoriteItemState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(FavoriteModel dataFavoriteItem)
        loadedFavoriteItem,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(FavoriteModel dataFavoriteItem)? loadedFavoriteItem,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(FavoriteModel dataFavoriteItem)? loadedFavoriteItem,
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
    required TResult Function(_InitialFavoriteItemState value) initial,
    required TResult Function(_ErrorFavoriteItemState value) error,
    required TResult Function(LoadedFavoriteItemState value) loadedFavoriteItem,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFavoriteItemState value)? initial,
    TResult? Function(_ErrorFavoriteItemState value)? error,
    TResult? Function(LoadedFavoriteItemState value)? loadedFavoriteItem,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFavoriteItemState value)? initial,
    TResult Function(_ErrorFavoriteItemState value)? error,
    TResult Function(LoadedFavoriteItemState value)? loadedFavoriteItem,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorFavoriteItemState extends FavoriteItemState {
  factory _ErrorFavoriteItemState(final String message) =
      _$_ErrorFavoriteItemState;
  _ErrorFavoriteItemState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorFavoriteItemStateCopyWith<_$_ErrorFavoriteItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedFavoriteItemStateCopyWith<$Res> {
  factory _$$LoadedFavoriteItemStateCopyWith(_$LoadedFavoriteItemState value,
          $Res Function(_$LoadedFavoriteItemState) then) =
      __$$LoadedFavoriteItemStateCopyWithImpl<$Res>;
  @useResult
  $Res call({FavoriteModel dataFavoriteItem});

  $FavoriteModelCopyWith<$Res> get dataFavoriteItem;
}

/// @nodoc
class __$$LoadedFavoriteItemStateCopyWithImpl<$Res>
    extends _$FavoriteItemStateCopyWithImpl<$Res, _$LoadedFavoriteItemState>
    implements _$$LoadedFavoriteItemStateCopyWith<$Res> {
  __$$LoadedFavoriteItemStateCopyWithImpl(_$LoadedFavoriteItemState _value,
      $Res Function(_$LoadedFavoriteItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataFavoriteItem = null,
  }) {
    return _then(_$LoadedFavoriteItemState(
      null == dataFavoriteItem
          ? _value.dataFavoriteItem
          : dataFavoriteItem // ignore: cast_nullable_to_non_nullable
              as FavoriteModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoriteModelCopyWith<$Res> get dataFavoriteItem {
    return $FavoriteModelCopyWith<$Res>(_value.dataFavoriteItem, (value) {
      return _then(_value.copyWith(dataFavoriteItem: value));
    });
  }
}

/// @nodoc

class _$LoadedFavoriteItemState extends LoadedFavoriteItemState {
  _$LoadedFavoriteItemState(this.dataFavoriteItem) : super._();

  @override
  final FavoriteModel dataFavoriteItem;

  @override
  String toString() {
    return 'FavoriteItemState.loadedFavoriteItem(dataFavoriteItem: $dataFavoriteItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedFavoriteItemState &&
            (identical(other.dataFavoriteItem, dataFavoriteItem) ||
                other.dataFavoriteItem == dataFavoriteItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataFavoriteItem);

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
    required TResult Function(FavoriteModel dataFavoriteItem)
        loadedFavoriteItem,
  }) {
    return loadedFavoriteItem(dataFavoriteItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(FavoriteModel dataFavoriteItem)? loadedFavoriteItem,
  }) {
    return loadedFavoriteItem?.call(dataFavoriteItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(FavoriteModel dataFavoriteItem)? loadedFavoriteItem,
    required TResult orElse(),
  }) {
    if (loadedFavoriteItem != null) {
      return loadedFavoriteItem(dataFavoriteItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialFavoriteItemState value) initial,
    required TResult Function(_ErrorFavoriteItemState value) error,
    required TResult Function(LoadedFavoriteItemState value) loadedFavoriteItem,
  }) {
    return loadedFavoriteItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialFavoriteItemState value)? initial,
    TResult? Function(_ErrorFavoriteItemState value)? error,
    TResult? Function(LoadedFavoriteItemState value)? loadedFavoriteItem,
  }) {
    return loadedFavoriteItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialFavoriteItemState value)? initial,
    TResult Function(_ErrorFavoriteItemState value)? error,
    TResult Function(LoadedFavoriteItemState value)? loadedFavoriteItem,
    required TResult orElse(),
  }) {
    if (loadedFavoriteItem != null) {
      return loadedFavoriteItem(this);
    }
    return orElse();
  }
}

abstract class LoadedFavoriteItemState extends FavoriteItemState {
  factory LoadedFavoriteItemState(final FavoriteModel dataFavoriteItem) =
      _$LoadedFavoriteItemState;
  LoadedFavoriteItemState._() : super._();

  FavoriteModel get dataFavoriteItem;
  @JsonKey(ignore: true)
  _$$LoadedFavoriteItemStateCopyWith<_$LoadedFavoriteItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
