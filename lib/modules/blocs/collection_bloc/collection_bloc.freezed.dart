// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCollectionItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCollectionItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCollectionItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollectionItem value) getCollectionItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCollectionItem value)? getCollectionItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollectionItem value)? getCollectionItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionEventCopyWith<$Res> {
  factory $CollectionEventCopyWith(
          CollectionEvent value, $Res Function(CollectionEvent) then) =
      _$CollectionEventCopyWithImpl<$Res, CollectionEvent>;
}

/// @nodoc
class _$CollectionEventCopyWithImpl<$Res, $Val extends CollectionEvent>
    implements $CollectionEventCopyWith<$Res> {
  _$CollectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCollectionItemCopyWith<$Res> {
  factory _$$_GetCollectionItemCopyWith(_$_GetCollectionItem value,
          $Res Function(_$_GetCollectionItem) then) =
      __$$_GetCollectionItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCollectionItemCopyWithImpl<$Res>
    extends _$CollectionEventCopyWithImpl<$Res, _$_GetCollectionItem>
    implements _$$_GetCollectionItemCopyWith<$Res> {
  __$$_GetCollectionItemCopyWithImpl(
      _$_GetCollectionItem _value, $Res Function(_$_GetCollectionItem) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCollectionItem implements _GetCollectionItem {
  const _$_GetCollectionItem();

  @override
  String toString() {
    return 'CollectionEvent.getCollectionItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCollectionItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCollectionItem,
  }) {
    return getCollectionItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCollectionItem,
  }) {
    return getCollectionItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCollectionItem,
    required TResult orElse(),
  }) {
    if (getCollectionItem != null) {
      return getCollectionItem();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCollectionItem value) getCollectionItem,
  }) {
    return getCollectionItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCollectionItem value)? getCollectionItem,
  }) {
    return getCollectionItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCollectionItem value)? getCollectionItem,
    required TResult orElse(),
  }) {
    if (getCollectionItem != null) {
      return getCollectionItem(this);
    }
    return orElse();
  }
}

abstract class _GetCollectionItem implements CollectionEvent {
  const factory _GetCollectionItem() = _$_GetCollectionItem;
}

/// @nodoc
mixin _$CollectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CatalogItemModel> dataCollectionlList)
        loadedCollectionItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CatalogItemModel> dataCollectionlList)?
        loadedCollectionItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CatalogItemModel> dataCollectionlList)?
        loadedCollectionItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCollectionState value) initial,
    required TResult Function(_ErrorCollectionState value) error,
    required TResult Function(LoadedCollectionItemState value)
        loadedCollectionItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCollectionState value)? initial,
    TResult? Function(_ErrorCollectionState value)? error,
    TResult? Function(LoadedCollectionItemState value)? loadedCollectionItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCollectionState value)? initial,
    TResult Function(_ErrorCollectionState value)? error,
    TResult Function(LoadedCollectionItemState value)? loadedCollectionItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionStateCopyWith<$Res> {
  factory $CollectionStateCopyWith(
          CollectionState value, $Res Function(CollectionState) then) =
      _$CollectionStateCopyWithImpl<$Res, CollectionState>;
}

/// @nodoc
class _$CollectionStateCopyWithImpl<$Res, $Val extends CollectionState>
    implements $CollectionStateCopyWith<$Res> {
  _$CollectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCollectionStateCopyWith<$Res> {
  factory _$$_InitialCollectionStateCopyWith(_$_InitialCollectionState value,
          $Res Function(_$_InitialCollectionState) then) =
      __$$_InitialCollectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCollectionStateCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$_InitialCollectionState>
    implements _$$_InitialCollectionStateCopyWith<$Res> {
  __$$_InitialCollectionStateCopyWithImpl(_$_InitialCollectionState _value,
      $Res Function(_$_InitialCollectionState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialCollectionState extends _InitialCollectionState {
  _$_InitialCollectionState() : super._();

  @override
  String toString() {
    return 'CollectionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialCollectionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CatalogItemModel> dataCollectionlList)
        loadedCollectionItems,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CatalogItemModel> dataCollectionlList)?
        loadedCollectionItems,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CatalogItemModel> dataCollectionlList)?
        loadedCollectionItems,
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
    required TResult Function(_InitialCollectionState value) initial,
    required TResult Function(_ErrorCollectionState value) error,
    required TResult Function(LoadedCollectionItemState value)
        loadedCollectionItems,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCollectionState value)? initial,
    TResult? Function(_ErrorCollectionState value)? error,
    TResult? Function(LoadedCollectionItemState value)? loadedCollectionItems,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCollectionState value)? initial,
    TResult Function(_ErrorCollectionState value)? error,
    TResult Function(LoadedCollectionItemState value)? loadedCollectionItems,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCollectionState extends CollectionState {
  factory _InitialCollectionState() = _$_InitialCollectionState;
  _InitialCollectionState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorCollectionStateCopyWith<$Res> {
  factory _$$_ErrorCollectionStateCopyWith(_$_ErrorCollectionState value,
          $Res Function(_$_ErrorCollectionState) then) =
      __$$_ErrorCollectionStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCollectionStateCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$_ErrorCollectionState>
    implements _$$_ErrorCollectionStateCopyWith<$Res> {
  __$$_ErrorCollectionStateCopyWithImpl(_$_ErrorCollectionState _value,
      $Res Function(_$_ErrorCollectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorCollectionState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorCollectionState extends _ErrorCollectionState {
  _$_ErrorCollectionState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CollectionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorCollectionState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCollectionStateCopyWith<_$_ErrorCollectionState> get copyWith =>
      __$$_ErrorCollectionStateCopyWithImpl<_$_ErrorCollectionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CatalogItemModel> dataCollectionlList)
        loadedCollectionItems,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CatalogItemModel> dataCollectionlList)?
        loadedCollectionItems,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CatalogItemModel> dataCollectionlList)?
        loadedCollectionItems,
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
    required TResult Function(_InitialCollectionState value) initial,
    required TResult Function(_ErrorCollectionState value) error,
    required TResult Function(LoadedCollectionItemState value)
        loadedCollectionItems,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCollectionState value)? initial,
    TResult? Function(_ErrorCollectionState value)? error,
    TResult? Function(LoadedCollectionItemState value)? loadedCollectionItems,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCollectionState value)? initial,
    TResult Function(_ErrorCollectionState value)? error,
    TResult Function(LoadedCollectionItemState value)? loadedCollectionItems,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCollectionState extends CollectionState {
  factory _ErrorCollectionState(final String message) = _$_ErrorCollectionState;
  _ErrorCollectionState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCollectionStateCopyWith<_$_ErrorCollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCollectionItemStateCopyWith<$Res> {
  factory _$$LoadedCollectionItemStateCopyWith(
          _$LoadedCollectionItemState value,
          $Res Function(_$LoadedCollectionItemState) then) =
      __$$LoadedCollectionItemStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CatalogItemModel> dataCollectionlList});
}

/// @nodoc
class __$$LoadedCollectionItemStateCopyWithImpl<$Res>
    extends _$CollectionStateCopyWithImpl<$Res, _$LoadedCollectionItemState>
    implements _$$LoadedCollectionItemStateCopyWith<$Res> {
  __$$LoadedCollectionItemStateCopyWithImpl(_$LoadedCollectionItemState _value,
      $Res Function(_$LoadedCollectionItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataCollectionlList = null,
  }) {
    return _then(_$LoadedCollectionItemState(
      dataCollectionlList: null == dataCollectionlList
          ? _value._dataCollectionlList
          : dataCollectionlList // ignore: cast_nullable_to_non_nullable
              as List<CatalogItemModel>,
    ));
  }
}

/// @nodoc

class _$LoadedCollectionItemState extends LoadedCollectionItemState {
  _$LoadedCollectionItemState(
      {required final List<CatalogItemModel> dataCollectionlList})
      : _dataCollectionlList = dataCollectionlList,
        super._();

  final List<CatalogItemModel> _dataCollectionlList;
  @override
  List<CatalogItemModel> get dataCollectionlList {
    if (_dataCollectionlList is EqualUnmodifiableListView)
      return _dataCollectionlList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dataCollectionlList);
  }

  @override
  String toString() {
    return 'CollectionState.loadedCollectionItems(dataCollectionlList: $dataCollectionlList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCollectionItemState &&
            const DeepCollectionEquality()
                .equals(other._dataCollectionlList, _dataCollectionlList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dataCollectionlList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCollectionItemStateCopyWith<_$LoadedCollectionItemState>
      get copyWith => __$$LoadedCollectionItemStateCopyWithImpl<
          _$LoadedCollectionItemState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<CatalogItemModel> dataCollectionlList)
        loadedCollectionItems,
  }) {
    return loadedCollectionItems(dataCollectionlList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<CatalogItemModel> dataCollectionlList)?
        loadedCollectionItems,
  }) {
    return loadedCollectionItems?.call(dataCollectionlList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<CatalogItemModel> dataCollectionlList)?
        loadedCollectionItems,
    required TResult orElse(),
  }) {
    if (loadedCollectionItems != null) {
      return loadedCollectionItems(dataCollectionlList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCollectionState value) initial,
    required TResult Function(_ErrorCollectionState value) error,
    required TResult Function(LoadedCollectionItemState value)
        loadedCollectionItems,
  }) {
    return loadedCollectionItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCollectionState value)? initial,
    TResult? Function(_ErrorCollectionState value)? error,
    TResult? Function(LoadedCollectionItemState value)? loadedCollectionItems,
  }) {
    return loadedCollectionItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCollectionState value)? initial,
    TResult Function(_ErrorCollectionState value)? error,
    TResult Function(LoadedCollectionItemState value)? loadedCollectionItems,
    required TResult orElse(),
  }) {
    if (loadedCollectionItems != null) {
      return loadedCollectionItems(this);
    }
    return orElse();
  }
}

abstract class LoadedCollectionItemState extends CollectionState {
  factory LoadedCollectionItemState(
          {required final List<CatalogItemModel> dataCollectionlList}) =
      _$LoadedCollectionItemState;
  LoadedCollectionItemState._() : super._();

  List<CatalogItemModel> get dataCollectionlList;
  @JsonKey(ignore: true)
  _$$LoadedCollectionItemStateCopyWith<_$LoadedCollectionItemState>
      get copyWith => throw _privateConstructorUsedError;
}
