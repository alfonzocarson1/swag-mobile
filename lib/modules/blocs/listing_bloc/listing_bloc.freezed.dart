// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getListingItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getListingItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListingItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetListingItem value) getListingItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetListingItem value)? getListingItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetListingItem value)? getListingItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingEventCopyWith<$Res> {
  factory $ListingEventCopyWith(
          ListingEvent value, $Res Function(ListingEvent) then) =
      _$ListingEventCopyWithImpl<$Res, ListingEvent>;
}

/// @nodoc
class _$ListingEventCopyWithImpl<$Res, $Val extends ListingEvent>
    implements $ListingEventCopyWith<$Res> {
  _$ListingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetListingItemCopyWith<$Res> {
  factory _$$_GetListingItemCopyWith(
          _$_GetListingItem value, $Res Function(_$_GetListingItem) then) =
      __$$_GetListingItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetListingItemCopyWithImpl<$Res>
    extends _$ListingEventCopyWithImpl<$Res, _$_GetListingItem>
    implements _$$_GetListingItemCopyWith<$Res> {
  __$$_GetListingItemCopyWithImpl(
      _$_GetListingItem _value, $Res Function(_$_GetListingItem) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetListingItem implements _GetListingItem {
  const _$_GetListingItem();

  @override
  String toString() {
    return 'ListingEvent.getListingItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetListingItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getListingItem,
  }) {
    return getListingItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getListingItem,
  }) {
    return getListingItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListingItem,
    required TResult orElse(),
  }) {
    if (getListingItem != null) {
      return getListingItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetListingItem value) getListingItem,
  }) {
    return getListingItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetListingItem value)? getListingItem,
  }) {
    return getListingItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetListingItem value)? getListingItem,
    required TResult orElse(),
  }) {
    if (getListingItem != null) {
      return getListingItem(this);
    }
    return orElse();
  }
}

abstract class _GetListingItem implements ListingEvent {
  const factory _GetListingItem() = _$_GetListingItem;
}

/// @nodoc
mixin _$ListingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialListingState value) initial,
    required TResult Function(_ErrorListingState value) error,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingStateCopyWith<$Res> {
  factory $ListingStateCopyWith(
          ListingState value, $Res Function(ListingState) then) =
      _$ListingStateCopyWithImpl<$Res, ListingState>;
}

/// @nodoc
class _$ListingStateCopyWithImpl<$Res, $Val extends ListingState>
    implements $ListingStateCopyWith<$Res> {
  _$ListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialListingStateCopyWith<$Res> {
  factory _$$_InitialListingStateCopyWith(_$_InitialListingState value,
          $Res Function(_$_InitialListingState) then) =
      __$$_InitialListingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialListingStateCopyWithImpl<$Res>
    extends _$ListingStateCopyWithImpl<$Res, _$_InitialListingState>
    implements _$$_InitialListingStateCopyWith<$Res> {
  __$$_InitialListingStateCopyWithImpl(_$_InitialListingState _value,
      $Res Function(_$_InitialListingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialListingState extends _InitialListingState {
  _$_InitialListingState() : super._();

  @override
  String toString() {
    return 'ListingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialListingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
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
    required TResult Function(_InitialListingState value) initial,
    required TResult Function(_ErrorListingState value) error,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialListingState extends ListingState {
  factory _InitialListingState() = _$_InitialListingState;
  _InitialListingState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorListingStateCopyWith<$Res> {
  factory _$$_ErrorListingStateCopyWith(_$_ErrorListingState value,
          $Res Function(_$_ErrorListingState) then) =
      __$$_ErrorListingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorListingStateCopyWithImpl<$Res>
    extends _$ListingStateCopyWithImpl<$Res, _$_ErrorListingState>
    implements _$$_ErrorListingStateCopyWith<$Res> {
  __$$_ErrorListingStateCopyWithImpl(
      _$_ErrorListingState _value, $Res Function(_$_ErrorListingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorListingState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorListingState extends _ErrorListingState {
  _$_ErrorListingState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'ListingState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorListingState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorListingStateCopyWith<_$_ErrorListingState> get copyWith =>
      __$$_ErrorListingStateCopyWithImpl<_$_ErrorListingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
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
    required TResult Function(_InitialListingState value) initial,
    required TResult Function(_ErrorListingState value) error,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorListingState extends ListingState {
  factory _ErrorListingState(final String message) = _$_ErrorListingState;
  _ErrorListingState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorListingStateCopyWith<_$_ErrorListingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedListingItemStateCopyWith<$Res> {
  factory _$$LoadedListingItemStateCopyWith(_$LoadedListingItemState value,
          $Res Function(_$LoadedListingItemState) then) =
      __$$LoadedListingItemStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CatalogItemModel> dataListingList});
}

/// @nodoc
class __$$LoadedListingItemStateCopyWithImpl<$Res>
    extends _$ListingStateCopyWithImpl<$Res, _$LoadedListingItemState>
    implements _$$LoadedListingItemStateCopyWith<$Res> {
  __$$LoadedListingItemStateCopyWithImpl(_$LoadedListingItemState _value,
      $Res Function(_$LoadedListingItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataListingList = null,
  }) {
    return _then(_$LoadedListingItemState(
      dataListingList: null == dataListingList
          ? _value._dataListingList
          : dataListingList // ignore: cast_nullable_to_non_nullable
              as List<CatalogItemModel>,
    ));
  }
}

/// @nodoc

class _$LoadedListingItemState extends LoadedListingItemState {
  _$LoadedListingItemState(
      {required final List<CatalogItemModel> dataListingList})
      : _dataListingList = dataListingList,
        super._();

  final List<CatalogItemModel> _dataListingList;
  @override
  List<CatalogItemModel> get dataListingList {
    if (_dataListingList is EqualUnmodifiableListView) return _dataListingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataListingList);
  }

  @override
  String toString() {
    return 'ListingState.loadedListingItems(dataListingList: $dataListingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedListingItemState &&
            const DeepCollectionEquality()
                .equals(other._dataListingList, _dataListingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dataListingList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedListingItemStateCopyWith<_$LoadedListingItemState> get copyWith =>
      __$$LoadedListingItemStateCopyWithImpl<_$LoadedListingItemState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
  }) {
    return loadedListingItems(dataListingList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
  }) {
    return loadedListingItems?.call(dataListingList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    required TResult orElse(),
  }) {
    if (loadedListingItems != null) {
      return loadedListingItems(dataListingList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialListingState value) initial,
    required TResult Function(_ErrorListingState value) error,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
  }) {
    return loadedListingItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
  }) {
    return loadedListingItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    required TResult orElse(),
  }) {
    if (loadedListingItems != null) {
      return loadedListingItems(this);
    }
    return orElse();
  }
}

abstract class LoadedListingItemState extends ListingState {
  factory LoadedListingItemState(
          {required final List<CatalogItemModel> dataListingList}) =
      _$LoadedListingItemState;
  LoadedListingItemState._() : super._();

  List<CatalogItemModel> get dataListingList;
  @JsonKey(ignore: true)
  _$$LoadedListingItemStateCopyWith<_$LoadedListingItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
