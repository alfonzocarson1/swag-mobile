// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatalogItemModel _$CatalogItemModelFromJson(Map<String, dynamic> json) {
  return _CatalogItemModel.fromJson(json);
}

/// @nodoc
mixin _$CatalogItemModel {
  String get catalogItemId => throw _privateConstructorUsedError;
  String get catalogItemName => throw _privateConstructorUsedError;
  String get catalogItemImage => throw _privateConstructorUsedError;
  int get numberAvailable => throw _privateConstructorUsedError;
  DetailSaleInfoModel get saleInfo => throw _privateConstructorUsedError;
  bool get forSale => throw _privateConstructorUsedError;
  bool get inFavorites => throw _privateConstructorUsedError;
  bool get inCollection => throw _privateConstructorUsedError;
  String? get profileFavoriteItemId => throw _privateConstructorUsedError;
  List<DetailCollectionModel>? get collectionItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogItemModelCopyWith<CatalogItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogItemModelCopyWith<$Res> {
  factory $CatalogItemModelCopyWith(
          CatalogItemModel value, $Res Function(CatalogItemModel) then) =
      _$CatalogItemModelCopyWithImpl<$Res, CatalogItemModel>;
  @useResult
  $Res call(
      {String catalogItemId,
      String catalogItemName,
      String catalogItemImage,
      int numberAvailable,
      DetailSaleInfoModel saleInfo,
      bool forSale,
      bool inFavorites,
      bool inCollection,
      String? profileFavoriteItemId,
      List<DetailCollectionModel>? collectionItems});

  $DetailSaleInfoModelCopyWith<$Res> get saleInfo;
}

/// @nodoc
class _$CatalogItemModelCopyWithImpl<$Res, $Val extends CatalogItemModel>
    implements $CatalogItemModelCopyWith<$Res> {
  _$CatalogItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogItemId = null,
    Object? catalogItemName = null,
    Object? catalogItemImage = null,
    Object? numberAvailable = null,
    Object? saleInfo = null,
    Object? forSale = null,
    Object? inFavorites = null,
    Object? inCollection = null,
    Object? profileFavoriteItemId = freezed,
    Object? collectionItems = freezed,
  }) {
    return _then(_value.copyWith(
      catalogItemId: null == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemName: null == catalogItemName
          ? _value.catalogItemName
          : catalogItemName // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemImage: null == catalogItemImage
          ? _value.catalogItemImage
          : catalogItemImage // ignore: cast_nullable_to_non_nullable
              as String,
      numberAvailable: null == numberAvailable
          ? _value.numberAvailable
          : numberAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      saleInfo: null == saleInfo
          ? _value.saleInfo
          : saleInfo // ignore: cast_nullable_to_non_nullable
              as DetailSaleInfoModel,
      forSale: null == forSale
          ? _value.forSale
          : forSale // ignore: cast_nullable_to_non_nullable
              as bool,
      inFavorites: null == inFavorites
          ? _value.inFavorites
          : inFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      inCollection: null == inCollection
          ? _value.inCollection
          : inCollection // ignore: cast_nullable_to_non_nullable
              as bool,
      profileFavoriteItemId: freezed == profileFavoriteItemId
          ? _value.profileFavoriteItemId
          : profileFavoriteItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionItems: freezed == collectionItems
          ? _value.collectionItems
          : collectionItems // ignore: cast_nullable_to_non_nullable
              as List<DetailCollectionModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailSaleInfoModelCopyWith<$Res> get saleInfo {
    return $DetailSaleInfoModelCopyWith<$Res>(_value.saleInfo, (value) {
      return _then(_value.copyWith(saleInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CatalogItemModelCopyWith<$Res>
    implements $CatalogItemModelCopyWith<$Res> {
  factory _$$_CatalogItemModelCopyWith(
          _$_CatalogItemModel value, $Res Function(_$_CatalogItemModel) then) =
      __$$_CatalogItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String catalogItemId,
      String catalogItemName,
      String catalogItemImage,
      int numberAvailable,
      DetailSaleInfoModel saleInfo,
      bool forSale,
      bool inFavorites,
      bool inCollection,
      String? profileFavoriteItemId,
      List<DetailCollectionModel>? collectionItems});

  @override
  $DetailSaleInfoModelCopyWith<$Res> get saleInfo;
}

/// @nodoc
class __$$_CatalogItemModelCopyWithImpl<$Res>
    extends _$CatalogItemModelCopyWithImpl<$Res, _$_CatalogItemModel>
    implements _$$_CatalogItemModelCopyWith<$Res> {
  __$$_CatalogItemModelCopyWithImpl(
      _$_CatalogItemModel _value, $Res Function(_$_CatalogItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogItemId = null,
    Object? catalogItemName = null,
    Object? catalogItemImage = null,
    Object? numberAvailable = null,
    Object? saleInfo = null,
    Object? forSale = null,
    Object? inFavorites = null,
    Object? inCollection = null,
    Object? profileFavoriteItemId = freezed,
    Object? collectionItems = freezed,
  }) {
    return _then(_$_CatalogItemModel(
      catalogItemId: null == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemName: null == catalogItemName
          ? _value.catalogItemName
          : catalogItemName // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemImage: null == catalogItemImage
          ? _value.catalogItemImage
          : catalogItemImage // ignore: cast_nullable_to_non_nullable
              as String,
      numberAvailable: null == numberAvailable
          ? _value.numberAvailable
          : numberAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      saleInfo: null == saleInfo
          ? _value.saleInfo
          : saleInfo // ignore: cast_nullable_to_non_nullable
              as DetailSaleInfoModel,
      forSale: null == forSale
          ? _value.forSale
          : forSale // ignore: cast_nullable_to_non_nullable
              as bool,
      inFavorites: null == inFavorites
          ? _value.inFavorites
          : inFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      inCollection: null == inCollection
          ? _value.inCollection
          : inCollection // ignore: cast_nullable_to_non_nullable
              as bool,
      profileFavoriteItemId: freezed == profileFavoriteItemId
          ? _value.profileFavoriteItemId
          : profileFavoriteItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionItems: freezed == collectionItems
          ? _value._collectionItems
          : collectionItems // ignore: cast_nullable_to_non_nullable
              as List<DetailCollectionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogItemModel implements _CatalogItemModel {
  const _$_CatalogItemModel(
      {required this.catalogItemId,
      required this.catalogItemName,
      required this.catalogItemImage,
      required this.numberAvailable,
      required this.saleInfo,
      required this.forSale,
      required this.inFavorites,
      required this.inCollection,
      this.profileFavoriteItemId,
      final List<DetailCollectionModel>? collectionItems})
      : _collectionItems = collectionItems;

  factory _$_CatalogItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogItemModelFromJson(json);

  @override
  final String catalogItemId;
  @override
  final String catalogItemName;
  @override
  final String catalogItemImage;
  @override
  final int numberAvailable;
  @override
  final DetailSaleInfoModel saleInfo;
  @override
  final bool forSale;
  @override
  final bool inFavorites;
  @override
  final bool inCollection;
  @override
  final String? profileFavoriteItemId;
  final List<DetailCollectionModel>? _collectionItems;
  @override
  List<DetailCollectionModel>? get collectionItems {
    final value = _collectionItems;
    if (value == null) return null;
    if (_collectionItems is EqualUnmodifiableListView) return _collectionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CatalogItemModel(catalogItemId: $catalogItemId, catalogItemName: $catalogItemName, catalogItemImage: $catalogItemImage, numberAvailable: $numberAvailable, saleInfo: $saleInfo, forSale: $forSale, inFavorites: $inFavorites, inCollection: $inCollection, profileFavoriteItemId: $profileFavoriteItemId, collectionItems: $collectionItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogItemModel &&
            (identical(other.catalogItemId, catalogItemId) ||
                other.catalogItemId == catalogItemId) &&
            (identical(other.catalogItemName, catalogItemName) ||
                other.catalogItemName == catalogItemName) &&
            (identical(other.catalogItemImage, catalogItemImage) ||
                other.catalogItemImage == catalogItemImage) &&
            (identical(other.numberAvailable, numberAvailable) ||
                other.numberAvailable == numberAvailable) &&
            (identical(other.saleInfo, saleInfo) ||
                other.saleInfo == saleInfo) &&
            (identical(other.forSale, forSale) || other.forSale == forSale) &&
            (identical(other.inFavorites, inFavorites) ||
                other.inFavorites == inFavorites) &&
            (identical(other.inCollection, inCollection) ||
                other.inCollection == inCollection) &&
            (identical(other.profileFavoriteItemId, profileFavoriteItemId) ||
                other.profileFavoriteItemId == profileFavoriteItemId) &&
            const DeepCollectionEquality()
                .equals(other._collectionItems, _collectionItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      catalogItemId,
      catalogItemName,
      catalogItemImage,
      numberAvailable,
      saleInfo,
      forSale,
      inFavorites,
      inCollection,
      profileFavoriteItemId,
      const DeepCollectionEquality().hash(_collectionItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogItemModelCopyWith<_$_CatalogItemModel> get copyWith =>
      __$$_CatalogItemModelCopyWithImpl<_$_CatalogItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogItemModelToJson(
      this,
    );
  }
}

abstract class _CatalogItemModel implements CatalogItemModel {
  const factory _CatalogItemModel(
          {required final String catalogItemId,
          required final String catalogItemName,
          required final String catalogItemImage,
          required final int numberAvailable,
          required final DetailSaleInfoModel saleInfo,
          required final bool forSale,
          required final bool inFavorites,
          required final bool inCollection,
          final String? profileFavoriteItemId,
          final List<DetailCollectionModel>? collectionItems}) =
      _$_CatalogItemModel;

  factory _CatalogItemModel.fromJson(Map<String, dynamic> json) =
      _$_CatalogItemModel.fromJson;

  @override
  String get catalogItemId;
  @override
  String get catalogItemName;
  @override
  String get catalogItemImage;
  @override
  int get numberAvailable;
  @override
  DetailSaleInfoModel get saleInfo;
  @override
  bool get forSale;
  @override
  bool get inFavorites;
  @override
  bool get inCollection;
  @override
  String? get profileFavoriteItemId;
  @override
  List<DetailCollectionModel>? get collectionItems;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogItemModelCopyWith<_$_CatalogItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
