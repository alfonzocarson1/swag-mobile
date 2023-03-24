// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_sale_listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuySaleListingEvent {
  String get itemId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) getBuyListingItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String itemId)? getBuyListingItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? getBuyListingItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBuyListingItem value) getBuyListingItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBuyListingItem value)? getBuyListingItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBuyListingItem value)? getBuyListingItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuySaleListingEventCopyWith<BuySaleListingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuySaleListingEventCopyWith<$Res> {
  factory $BuySaleListingEventCopyWith(
          BuySaleListingEvent value, $Res Function(BuySaleListingEvent) then) =
      _$BuySaleListingEventCopyWithImpl<$Res, BuySaleListingEvent>;
  @useResult
  $Res call({String itemId});
}

/// @nodoc
class _$BuySaleListingEventCopyWithImpl<$Res, $Val extends BuySaleListingEvent>
    implements $BuySaleListingEventCopyWith<$Res> {
  _$BuySaleListingEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetBuyListingItemCopyWith<$Res>
    implements $BuySaleListingEventCopyWith<$Res> {
  factory _$$_GetBuyListingItemCopyWith(_$_GetBuyListingItem value,
          $Res Function(_$_GetBuyListingItem) then) =
      __$$_GetBuyListingItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemId});
}

/// @nodoc
class __$$_GetBuyListingItemCopyWithImpl<$Res>
    extends _$BuySaleListingEventCopyWithImpl<$Res, _$_GetBuyListingItem>
    implements _$$_GetBuyListingItemCopyWith<$Res> {
  __$$_GetBuyListingItemCopyWithImpl(
      _$_GetBuyListingItem _value, $Res Function(_$_GetBuyListingItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$_GetBuyListingItem(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetBuyListingItem implements _GetBuyListingItem {
  const _$_GetBuyListingItem(this.itemId);

  @override
  final String itemId;

  @override
  String toString() {
    return 'BuySaleListingEvent.getBuyListingItem(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBuyListingItem &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetBuyListingItemCopyWith<_$_GetBuyListingItem> get copyWith =>
      __$$_GetBuyListingItemCopyWithImpl<_$_GetBuyListingItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String itemId) getBuyListingItem,
  }) {
    return getBuyListingItem(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String itemId)? getBuyListingItem,
  }) {
    return getBuyListingItem?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String itemId)? getBuyListingItem,
    required TResult orElse(),
  }) {
    if (getBuyListingItem != null) {
      return getBuyListingItem(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBuyListingItem value) getBuyListingItem,
  }) {
    return getBuyListingItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBuyListingItem value)? getBuyListingItem,
  }) {
    return getBuyListingItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBuyListingItem value)? getBuyListingItem,
    required TResult orElse(),
  }) {
    if (getBuyListingItem != null) {
      return getBuyListingItem(this);
    }
    return orElse();
  }
}

abstract class _GetBuyListingItem implements BuySaleListingEvent {
  const factory _GetBuyListingItem(final String itemId) = _$_GetBuyListingItem;

  @override
  String get itemId;
  @override
  @JsonKey(ignore: true)
  _$$_GetBuyListingItemCopyWith<_$_GetBuyListingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BuySaleListingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(
            List<BuyForSaleListingResponseModel> saledItemdList)
        loadedSaledItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<BuyForSaleListingResponseModel> saledItemdList)?
        loadedSaledItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<BuyForSaleListingResponseModel> saledItemdList)?
        loadedSaledItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialBuySaleListingState value) initial,
    required TResult Function(_ErrorBuySaleListingState value) error,
    required TResult Function(LoadedBuySaleListingState value) loadedSaledItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialBuySaleListingState value)? initial,
    TResult? Function(_ErrorBuySaleListingState value)? error,
    TResult? Function(LoadedBuySaleListingState value)? loadedSaledItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialBuySaleListingState value)? initial,
    TResult Function(_ErrorBuySaleListingState value)? error,
    TResult Function(LoadedBuySaleListingState value)? loadedSaledItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuySaleListingStateCopyWith<$Res> {
  factory $BuySaleListingStateCopyWith(
          BuySaleListingState value, $Res Function(BuySaleListingState) then) =
      _$BuySaleListingStateCopyWithImpl<$Res, BuySaleListingState>;
}

/// @nodoc
class _$BuySaleListingStateCopyWithImpl<$Res, $Val extends BuySaleListingState>
    implements $BuySaleListingStateCopyWith<$Res> {
  _$BuySaleListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialBuySaleListingStateCopyWith<$Res> {
  factory _$$_InitialBuySaleListingStateCopyWith(
          _$_InitialBuySaleListingState value,
          $Res Function(_$_InitialBuySaleListingState) then) =
      __$$_InitialBuySaleListingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialBuySaleListingStateCopyWithImpl<$Res>
    extends _$BuySaleListingStateCopyWithImpl<$Res,
        _$_InitialBuySaleListingState>
    implements _$$_InitialBuySaleListingStateCopyWith<$Res> {
  __$$_InitialBuySaleListingStateCopyWithImpl(
      _$_InitialBuySaleListingState _value,
      $Res Function(_$_InitialBuySaleListingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialBuySaleListingState extends _InitialBuySaleListingState {
  _$_InitialBuySaleListingState() : super._();

  @override
  String toString() {
    return 'BuySaleListingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialBuySaleListingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(
            List<BuyForSaleListingResponseModel> saledItemdList)
        loadedSaledItems,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<BuyForSaleListingResponseModel> saledItemdList)?
        loadedSaledItems,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<BuyForSaleListingResponseModel> saledItemdList)?
        loadedSaledItems,
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
    required TResult Function(_InitialBuySaleListingState value) initial,
    required TResult Function(_ErrorBuySaleListingState value) error,
    required TResult Function(LoadedBuySaleListingState value) loadedSaledItems,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialBuySaleListingState value)? initial,
    TResult? Function(_ErrorBuySaleListingState value)? error,
    TResult? Function(LoadedBuySaleListingState value)? loadedSaledItems,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialBuySaleListingState value)? initial,
    TResult Function(_ErrorBuySaleListingState value)? error,
    TResult Function(LoadedBuySaleListingState value)? loadedSaledItems,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialBuySaleListingState extends BuySaleListingState {
  factory _InitialBuySaleListingState() = _$_InitialBuySaleListingState;
  _InitialBuySaleListingState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorBuySaleListingStateCopyWith<$Res> {
  factory _$$_ErrorBuySaleListingStateCopyWith(
          _$_ErrorBuySaleListingState value,
          $Res Function(_$_ErrorBuySaleListingState) then) =
      __$$_ErrorBuySaleListingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorBuySaleListingStateCopyWithImpl<$Res>
    extends _$BuySaleListingStateCopyWithImpl<$Res, _$_ErrorBuySaleListingState>
    implements _$$_ErrorBuySaleListingStateCopyWith<$Res> {
  __$$_ErrorBuySaleListingStateCopyWithImpl(_$_ErrorBuySaleListingState _value,
      $Res Function(_$_ErrorBuySaleListingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorBuySaleListingState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorBuySaleListingState extends _ErrorBuySaleListingState {
  _$_ErrorBuySaleListingState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'BuySaleListingState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorBuySaleListingState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorBuySaleListingStateCopyWith<_$_ErrorBuySaleListingState>
      get copyWith => __$$_ErrorBuySaleListingStateCopyWithImpl<
          _$_ErrorBuySaleListingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(
            List<BuyForSaleListingResponseModel> saledItemdList)
        loadedSaledItems,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<BuyForSaleListingResponseModel> saledItemdList)?
        loadedSaledItems,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<BuyForSaleListingResponseModel> saledItemdList)?
        loadedSaledItems,
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
    required TResult Function(_InitialBuySaleListingState value) initial,
    required TResult Function(_ErrorBuySaleListingState value) error,
    required TResult Function(LoadedBuySaleListingState value) loadedSaledItems,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialBuySaleListingState value)? initial,
    TResult? Function(_ErrorBuySaleListingState value)? error,
    TResult? Function(LoadedBuySaleListingState value)? loadedSaledItems,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialBuySaleListingState value)? initial,
    TResult Function(_ErrorBuySaleListingState value)? error,
    TResult Function(LoadedBuySaleListingState value)? loadedSaledItems,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorBuySaleListingState extends BuySaleListingState {
  factory _ErrorBuySaleListingState(final String message) =
      _$_ErrorBuySaleListingState;
  _ErrorBuySaleListingState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorBuySaleListingStateCopyWith<_$_ErrorBuySaleListingState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedBuySaleListingStateCopyWith<$Res> {
  factory _$$LoadedBuySaleListingStateCopyWith(
          _$LoadedBuySaleListingState value,
          $Res Function(_$LoadedBuySaleListingState) then) =
      __$$LoadedBuySaleListingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BuyForSaleListingResponseModel> saledItemdList});
}

/// @nodoc
class __$$LoadedBuySaleListingStateCopyWithImpl<$Res>
    extends _$BuySaleListingStateCopyWithImpl<$Res, _$LoadedBuySaleListingState>
    implements _$$LoadedBuySaleListingStateCopyWith<$Res> {
  __$$LoadedBuySaleListingStateCopyWithImpl(_$LoadedBuySaleListingState _value,
      $Res Function(_$LoadedBuySaleListingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saledItemdList = null,
  }) {
    return _then(_$LoadedBuySaleListingState(
      saledItemdList: null == saledItemdList
          ? _value._saledItemdList
          : saledItemdList // ignore: cast_nullable_to_non_nullable
              as List<BuyForSaleListingResponseModel>,
    ));
  }
}

/// @nodoc

class _$LoadedBuySaleListingState extends LoadedBuySaleListingState {
  _$LoadedBuySaleListingState(
      {required final List<BuyForSaleListingResponseModel> saledItemdList})
      : _saledItemdList = saledItemdList,
        super._();

  final List<BuyForSaleListingResponseModel> _saledItemdList;
  @override
  List<BuyForSaleListingResponseModel> get saledItemdList {
    if (_saledItemdList is EqualUnmodifiableListView) return _saledItemdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saledItemdList);
  }

  @override
  String toString() {
    return 'BuySaleListingState.loadedSaledItems(saledItemdList: $saledItemdList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedBuySaleListingState &&
            const DeepCollectionEquality()
                .equals(other._saledItemdList, _saledItemdList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_saledItemdList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedBuySaleListingStateCopyWith<_$LoadedBuySaleListingState>
      get copyWith => __$$LoadedBuySaleListingStateCopyWithImpl<
          _$LoadedBuySaleListingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(
            List<BuyForSaleListingResponseModel> saledItemdList)
        loadedSaledItems,
  }) {
    return loadedSaledItems(saledItemdList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<BuyForSaleListingResponseModel> saledItemdList)?
        loadedSaledItems,
  }) {
    return loadedSaledItems?.call(saledItemdList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<BuyForSaleListingResponseModel> saledItemdList)?
        loadedSaledItems,
    required TResult orElse(),
  }) {
    if (loadedSaledItems != null) {
      return loadedSaledItems(saledItemdList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialBuySaleListingState value) initial,
    required TResult Function(_ErrorBuySaleListingState value) error,
    required TResult Function(LoadedBuySaleListingState value) loadedSaledItems,
  }) {
    return loadedSaledItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialBuySaleListingState value)? initial,
    TResult? Function(_ErrorBuySaleListingState value)? error,
    TResult? Function(LoadedBuySaleListingState value)? loadedSaledItems,
  }) {
    return loadedSaledItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialBuySaleListingState value)? initial,
    TResult Function(_ErrorBuySaleListingState value)? error,
    TResult Function(LoadedBuySaleListingState value)? loadedSaledItems,
    required TResult orElse(),
  }) {
    if (loadedSaledItems != null) {
      return loadedSaledItems(this);
    }
    return orElse();
  }
}

abstract class LoadedBuySaleListingState extends BuySaleListingState {
  factory LoadedBuySaleListingState(
      {required final List<BuyForSaleListingResponseModel>
          saledItemdList}) = _$LoadedBuySaleListingState;
  LoadedBuySaleListingState._() : super._();

  List<BuyForSaleListingResponseModel> get saledItemdList;
  @JsonKey(ignore: true)
  _$$LoadedBuySaleListingStateCopyWith<_$LoadedBuySaleListingState>
      get copyWith => throw _privateConstructorUsedError;
}
