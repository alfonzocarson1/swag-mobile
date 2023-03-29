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
    required TResult Function(ListingForSaleModel model, List<XFile> imgList)
        createListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getListingItem,
    TResult? Function(ListingForSaleModel model, List<XFile> imgList)?
        createListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListingItem,
    TResult Function(ListingForSaleModel model, List<XFile> imgList)?
        createListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetListingItem value) getListingItem,
    required TResult Function(_ListingEvent value) createListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetListingItem value)? getListingItem,
    TResult? Function(_ListingEvent value)? createListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetListingItem value)? getListingItem,
    TResult Function(_ListingEvent value)? createListing,
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
    required TResult Function(ListingForSaleModel model, List<XFile> imgList)
        createListing,
  }) {
    return getListingItem();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getListingItem,
    TResult? Function(ListingForSaleModel model, List<XFile> imgList)?
        createListing,
  }) {
    return getListingItem?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListingItem,
    TResult Function(ListingForSaleModel model, List<XFile> imgList)?
        createListing,
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
    required TResult Function(_ListingEvent value) createListing,
  }) {
    return getListingItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetListingItem value)? getListingItem,
    TResult? Function(_ListingEvent value)? createListing,
  }) {
    return getListingItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetListingItem value)? getListingItem,
    TResult Function(_ListingEvent value)? createListing,
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
abstract class _$$_ListingEventCopyWith<$Res> {
  factory _$$_ListingEventCopyWith(
          _$_ListingEvent value, $Res Function(_$_ListingEvent) then) =
      __$$_ListingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ListingForSaleModel model, List<XFile> imgList});

  $ListingForSaleModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_ListingEventCopyWithImpl<$Res>
    extends _$ListingEventCopyWithImpl<$Res, _$_ListingEvent>
    implements _$$_ListingEventCopyWith<$Res> {
  __$$_ListingEventCopyWithImpl(
      _$_ListingEvent _value, $Res Function(_$_ListingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? imgList = null,
  }) {
    return _then(_$_ListingEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ListingForSaleModel,
      null == imgList
          ? _value._imgList
          : imgList // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListingForSaleModelCopyWith<$Res> get model {
    return $ListingForSaleModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_ListingEvent implements _ListingEvent {
  const _$_ListingEvent(this.model, final List<XFile> imgList)
      : _imgList = imgList;

  @override
  final ListingForSaleModel model;
  final List<XFile> _imgList;
  @override
  List<XFile> get imgList {
    if (_imgList is EqualUnmodifiableListView) return _imgList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imgList);
  }

  @override
  String toString() {
    return 'ListingEvent.createListing(model: $model, imgList: $imgList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListingEvent &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._imgList, _imgList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, model, const DeepCollectionEquality().hash(_imgList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListingEventCopyWith<_$_ListingEvent> get copyWith =>
      __$$_ListingEventCopyWithImpl<_$_ListingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getListingItem,
    required TResult Function(ListingForSaleModel model, List<XFile> imgList)
        createListing,
  }) {
    return createListing(model, imgList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getListingItem,
    TResult? Function(ListingForSaleModel model, List<XFile> imgList)?
        createListing,
  }) {
    return createListing?.call(model, imgList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getListingItem,
    TResult Function(ListingForSaleModel model, List<XFile> imgList)?
        createListing,
    required TResult orElse(),
  }) {
    if (createListing != null) {
      return createListing(model, imgList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetListingItem value) getListingItem,
    required TResult Function(_ListingEvent value) createListing,
  }) {
    return createListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetListingItem value)? getListingItem,
    TResult? Function(_ListingEvent value)? createListing,
  }) {
    return createListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetListingItem value)? getListingItem,
    TResult Function(_ListingEvent value)? createListing,
    required TResult orElse(),
  }) {
    if (createListing != null) {
      return createListing(this);
    }
    return orElse();
  }
}

abstract class _ListingEvent implements ListingEvent {
  const factory _ListingEvent(
          final ListingForSaleModel model, final List<XFile> imgList) =
      _$_ListingEvent;

  ListingForSaleModel get model;
  List<XFile> get imgList;
  @JsonKey(ignore: true)
  _$$_ListingEventCopyWith<_$_ListingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(ListingForSaleModel successCollection)
        loadedListingSuccess,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
    required TResult Function(UpdateAvatarModel successImageList)
        loadedImageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult? Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialListingState value) initial,
    required TResult Function(_ErrorListingState value) error,
    required TResult Function(LoadedSuccessListing value) loadedListingSuccess,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
    required TResult Function(LoadedImageSuccess value) loadedImageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
    TResult? Function(LoadedImageSuccess value)? loadedImageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    TResult Function(LoadedImageSuccess value)? loadedImageSuccess,
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
    required TResult Function(ListingForSaleModel successCollection)
        loadedListingSuccess,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
    required TResult Function(UpdateAvatarModel successImageList)
        loadedImageSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult? Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
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
    required TResult Function(LoadedSuccessListing value) loadedListingSuccess,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
    required TResult Function(LoadedImageSuccess value) loadedImageSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
    TResult? Function(LoadedImageSuccess value)? loadedImageSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    TResult Function(LoadedImageSuccess value)? loadedImageSuccess,
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
    required TResult Function(ListingForSaleModel successCollection)
        loadedListingSuccess,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
    required TResult Function(UpdateAvatarModel successImageList)
        loadedImageSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult? Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
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
    required TResult Function(LoadedSuccessListing value) loadedListingSuccess,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
    required TResult Function(LoadedImageSuccess value) loadedImageSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
    TResult? Function(LoadedImageSuccess value)? loadedImageSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    TResult Function(LoadedImageSuccess value)? loadedImageSuccess,
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
abstract class _$$LoadedSuccessListingCopyWith<$Res> {
  factory _$$LoadedSuccessListingCopyWith(_$LoadedSuccessListing value,
          $Res Function(_$LoadedSuccessListing) then) =
      __$$LoadedSuccessListingCopyWithImpl<$Res>;
  @useResult
  $Res call({ListingForSaleModel successCollection});

  $ListingForSaleModelCopyWith<$Res> get successCollection;
}

/// @nodoc
class __$$LoadedSuccessListingCopyWithImpl<$Res>
    extends _$ListingStateCopyWithImpl<$Res, _$LoadedSuccessListing>
    implements _$$LoadedSuccessListingCopyWith<$Res> {
  __$$LoadedSuccessListingCopyWithImpl(_$LoadedSuccessListing _value,
      $Res Function(_$LoadedSuccessListing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successCollection = null,
  }) {
    return _then(_$LoadedSuccessListing(
      null == successCollection
          ? _value.successCollection
          : successCollection // ignore: cast_nullable_to_non_nullable
              as ListingForSaleModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListingForSaleModelCopyWith<$Res> get successCollection {
    return $ListingForSaleModelCopyWith<$Res>(_value.successCollection,
        (value) {
      return _then(_value.copyWith(successCollection: value));
    });
  }
}

/// @nodoc

class _$LoadedSuccessListing extends LoadedSuccessListing {
  _$LoadedSuccessListing(this.successCollection) : super._();

  @override
  final ListingForSaleModel successCollection;

  @override
  String toString() {
    return 'ListingState.loadedListingSuccess(successCollection: $successCollection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSuccessListing &&
            (identical(other.successCollection, successCollection) ||
                other.successCollection == successCollection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successCollection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSuccessListingCopyWith<_$LoadedSuccessListing> get copyWith =>
      __$$LoadedSuccessListingCopyWithImpl<_$LoadedSuccessListing>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(ListingForSaleModel successCollection)
        loadedListingSuccess,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
    required TResult Function(UpdateAvatarModel successImageList)
        loadedImageSuccess,
  }) {
    return loadedListingSuccess(successCollection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult? Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
  }) {
    return loadedListingSuccess?.call(successCollection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
    required TResult orElse(),
  }) {
    if (loadedListingSuccess != null) {
      return loadedListingSuccess(successCollection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialListingState value) initial,
    required TResult Function(_ErrorListingState value) error,
    required TResult Function(LoadedSuccessListing value) loadedListingSuccess,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
    required TResult Function(LoadedImageSuccess value) loadedImageSuccess,
  }) {
    return loadedListingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
    TResult? Function(LoadedImageSuccess value)? loadedImageSuccess,
  }) {
    return loadedListingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    TResult Function(LoadedImageSuccess value)? loadedImageSuccess,
    required TResult orElse(),
  }) {
    if (loadedListingSuccess != null) {
      return loadedListingSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadedSuccessListing extends ListingState {
  factory LoadedSuccessListing(final ListingForSaleModel successCollection) =
      _$LoadedSuccessListing;
  LoadedSuccessListing._() : super._();

  ListingForSaleModel get successCollection;
  @JsonKey(ignore: true)
  _$$LoadedSuccessListingCopyWith<_$LoadedSuccessListing> get copyWith =>
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
    required TResult Function(ListingForSaleModel successCollection)
        loadedListingSuccess,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
    required TResult Function(UpdateAvatarModel successImageList)
        loadedImageSuccess,
  }) {
    return loadedListingItems(dataListingList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult? Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
  }) {
    return loadedListingItems?.call(dataListingList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
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
    required TResult Function(LoadedSuccessListing value) loadedListingSuccess,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
    required TResult Function(LoadedImageSuccess value) loadedImageSuccess,
  }) {
    return loadedListingItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
    TResult? Function(LoadedImageSuccess value)? loadedImageSuccess,
  }) {
    return loadedListingItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    TResult Function(LoadedImageSuccess value)? loadedImageSuccess,
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

/// @nodoc
abstract class _$$LoadedImageSuccessCopyWith<$Res> {
  factory _$$LoadedImageSuccessCopyWith(_$LoadedImageSuccess value,
          $Res Function(_$LoadedImageSuccess) then) =
      __$$LoadedImageSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateAvatarModel successImageList});

  $UpdateAvatarModelCopyWith<$Res> get successImageList;
}

/// @nodoc
class __$$LoadedImageSuccessCopyWithImpl<$Res>
    extends _$ListingStateCopyWithImpl<$Res, _$LoadedImageSuccess>
    implements _$$LoadedImageSuccessCopyWith<$Res> {
  __$$LoadedImageSuccessCopyWithImpl(
      _$LoadedImageSuccess _value, $Res Function(_$LoadedImageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successImageList = null,
  }) {
    return _then(_$LoadedImageSuccess(
      null == successImageList
          ? _value.successImageList
          : successImageList // ignore: cast_nullable_to_non_nullable
              as UpdateAvatarModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateAvatarModelCopyWith<$Res> get successImageList {
    return $UpdateAvatarModelCopyWith<$Res>(_value.successImageList, (value) {
      return _then(_value.copyWith(successImageList: value));
    });
  }
}

/// @nodoc

class _$LoadedImageSuccess extends LoadedImageSuccess {
  _$LoadedImageSuccess(this.successImageList) : super._();

  @override
  final UpdateAvatarModel successImageList;

  @override
  String toString() {
    return 'ListingState.loadedImageSuccess(successImageList: $successImageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImageSuccess &&
            (identical(other.successImageList, successImageList) ||
                other.successImageList == successImageList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successImageList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImageSuccessCopyWith<_$LoadedImageSuccess> get copyWith =>
      __$$LoadedImageSuccessCopyWithImpl<_$LoadedImageSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(ListingForSaleModel successCollection)
        loadedListingSuccess,
    required TResult Function(List<CatalogItemModel> dataListingList)
        loadedListingItems,
    required TResult Function(UpdateAvatarModel successImageList)
        loadedImageSuccess,
  }) {
    return loadedImageSuccess(successImageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult? Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult? Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
  }) {
    return loadedImageSuccess?.call(successImageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(ListingForSaleModel successCollection)?
        loadedListingSuccess,
    TResult Function(List<CatalogItemModel> dataListingList)?
        loadedListingItems,
    TResult Function(UpdateAvatarModel successImageList)? loadedImageSuccess,
    required TResult orElse(),
  }) {
    if (loadedImageSuccess != null) {
      return loadedImageSuccess(successImageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialListingState value) initial,
    required TResult Function(_ErrorListingState value) error,
    required TResult Function(LoadedSuccessListing value) loadedListingSuccess,
    required TResult Function(LoadedListingItemState value) loadedListingItems,
    required TResult Function(LoadedImageSuccess value) loadedImageSuccess,
  }) {
    return loadedImageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialListingState value)? initial,
    TResult? Function(_ErrorListingState value)? error,
    TResult? Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult? Function(LoadedListingItemState value)? loadedListingItems,
    TResult? Function(LoadedImageSuccess value)? loadedImageSuccess,
  }) {
    return loadedImageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialListingState value)? initial,
    TResult Function(_ErrorListingState value)? error,
    TResult Function(LoadedSuccessListing value)? loadedListingSuccess,
    TResult Function(LoadedListingItemState value)? loadedListingItems,
    TResult Function(LoadedImageSuccess value)? loadedImageSuccess,
    required TResult orElse(),
  }) {
    if (loadedImageSuccess != null) {
      return loadedImageSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadedImageSuccess extends ListingState {
  factory LoadedImageSuccess(final UpdateAvatarModel successImageList) =
      _$LoadedImageSuccess;
  LoadedImageSuccess._() : super._();

  UpdateAvatarModel get successImageList;
  @JsonKey(ignore: true)
  _$$LoadedImageSuccessCopyWith<_$LoadedImageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
