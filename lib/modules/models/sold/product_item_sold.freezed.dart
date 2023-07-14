// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_item_sold.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductItemSold _$ProductItemSoldFromJson(Map<String, dynamic> json) {
  return _ProductItemSold.fromJson(json);
}

/// @nodoc
mixin _$ProductItemSold {
  String get productItemId => throw _privateConstructorUsedError;
  String get productItemName => throw _privateConstructorUsedError;
  double? get productItemPrice => throw _privateConstructorUsedError;
  List<String> get productItemImageUrls => throw _privateConstructorUsedError;
  String? get productItemDescription => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get profileId => throw _privateConstructorUsedError;
  String? get catalogItemId => throw _privateConstructorUsedError;
  String? get profileCollectionItemId => throw _privateConstructorUsedError;
  double? get lastSale => throw _privateConstructorUsedError;
  bool? get forSale => throw _privateConstructorUsedError;
  bool? get sold => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get soldTo => throw _privateConstructorUsedError;
  String? get soldDate => throw _privateConstructorUsedError;
  PeerToPeerPaymentsModel? get peerToPeerPaymentOptions =>
      throw _privateConstructorUsedError;
  SubmitPurchaseInfo? get submitPurchaseInfo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemSoldCopyWith<ProductItemSold> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemSoldCopyWith<$Res> {
  factory $ProductItemSoldCopyWith(
          ProductItemSold value, $Res Function(ProductItemSold) then) =
      _$ProductItemSoldCopyWithImpl<$Res, ProductItemSold>;
  @useResult
  $Res call(
      {String productItemId,
      String productItemName,
      double? productItemPrice,
      List<String> productItemImageUrls,
      String? productItemDescription,
      String? condition,
      String? profileId,
      String? catalogItemId,
      String? profileCollectionItemId,
      double? lastSale,
      bool? forSale,
      bool? sold,
      bool? isDeleted,
      String? status,
      String? soldTo,
      String? soldDate,
      PeerToPeerPaymentsModel? peerToPeerPaymentOptions,
      SubmitPurchaseInfo? submitPurchaseInfo});

  $PeerToPeerPaymentsModelCopyWith<$Res>? get peerToPeerPaymentOptions;
  $SubmitPurchaseInfoCopyWith<$Res>? get submitPurchaseInfo;
}

/// @nodoc
class _$ProductItemSoldCopyWithImpl<$Res, $Val extends ProductItemSold>
    implements $ProductItemSoldCopyWith<$Res> {
  _$ProductItemSoldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemId = null,
    Object? productItemName = null,
    Object? productItemPrice = freezed,
    Object? productItemImageUrls = null,
    Object? productItemDescription = freezed,
    Object? condition = freezed,
    Object? profileId = freezed,
    Object? catalogItemId = freezed,
    Object? profileCollectionItemId = freezed,
    Object? lastSale = freezed,
    Object? forSale = freezed,
    Object? sold = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
    Object? soldTo = freezed,
    Object? soldDate = freezed,
    Object? peerToPeerPaymentOptions = freezed,
    Object? submitPurchaseInfo = freezed,
  }) {
    return _then(_value.copyWith(
      productItemId: null == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String,
      productItemName: null == productItemName
          ? _value.productItemName
          : productItemName // ignore: cast_nullable_to_non_nullable
              as String,
      productItemPrice: freezed == productItemPrice
          ? _value.productItemPrice
          : productItemPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productItemImageUrls: null == productItemImageUrls
          ? _value.productItemImageUrls
          : productItemImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productItemDescription: freezed == productItemDescription
          ? _value.productItemDescription
          : productItemDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogItemId: freezed == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileCollectionItemId: freezed == profileCollectionItemId
          ? _value.profileCollectionItemId
          : profileCollectionItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSale: freezed == lastSale
          ? _value.lastSale
          : lastSale // ignore: cast_nullable_to_non_nullable
              as double?,
      forSale: freezed == forSale
          ? _value.forSale
          : forSale // ignore: cast_nullable_to_non_nullable
              as bool?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      soldTo: freezed == soldTo
          ? _value.soldTo
          : soldTo // ignore: cast_nullable_to_non_nullable
              as String?,
      soldDate: freezed == soldDate
          ? _value.soldDate
          : soldDate // ignore: cast_nullable_to_non_nullable
              as String?,
      peerToPeerPaymentOptions: freezed == peerToPeerPaymentOptions
          ? _value.peerToPeerPaymentOptions
          : peerToPeerPaymentOptions // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
      submitPurchaseInfo: freezed == submitPurchaseInfo
          ? _value.submitPurchaseInfo
          : submitPurchaseInfo // ignore: cast_nullable_to_non_nullable
              as SubmitPurchaseInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeerToPeerPaymentsModelCopyWith<$Res>? get peerToPeerPaymentOptions {
    if (_value.peerToPeerPaymentOptions == null) {
      return null;
    }

    return $PeerToPeerPaymentsModelCopyWith<$Res>(
        _value.peerToPeerPaymentOptions!, (value) {
      return _then(_value.copyWith(peerToPeerPaymentOptions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubmitPurchaseInfoCopyWith<$Res>? get submitPurchaseInfo {
    if (_value.submitPurchaseInfo == null) {
      return null;
    }

    return $SubmitPurchaseInfoCopyWith<$Res>(_value.submitPurchaseInfo!,
        (value) {
      return _then(_value.copyWith(submitPurchaseInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductItemSoldCopyWith<$Res>
    implements $ProductItemSoldCopyWith<$Res> {
  factory _$$_ProductItemSoldCopyWith(
          _$_ProductItemSold value, $Res Function(_$_ProductItemSold) then) =
      __$$_ProductItemSoldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productItemId,
      String productItemName,
      double? productItemPrice,
      List<String> productItemImageUrls,
      String? productItemDescription,
      String? condition,
      String? profileId,
      String? catalogItemId,
      String? profileCollectionItemId,
      double? lastSale,
      bool? forSale,
      bool? sold,
      bool? isDeleted,
      String? status,
      String? soldTo,
      String? soldDate,
      PeerToPeerPaymentsModel? peerToPeerPaymentOptions,
      SubmitPurchaseInfo? submitPurchaseInfo});

  @override
  $PeerToPeerPaymentsModelCopyWith<$Res>? get peerToPeerPaymentOptions;
  @override
  $SubmitPurchaseInfoCopyWith<$Res>? get submitPurchaseInfo;
}

/// @nodoc
class __$$_ProductItemSoldCopyWithImpl<$Res>
    extends _$ProductItemSoldCopyWithImpl<$Res, _$_ProductItemSold>
    implements _$$_ProductItemSoldCopyWith<$Res> {
  __$$_ProductItemSoldCopyWithImpl(
      _$_ProductItemSold _value, $Res Function(_$_ProductItemSold) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemId = null,
    Object? productItemName = null,
    Object? productItemPrice = freezed,
    Object? productItemImageUrls = null,
    Object? productItemDescription = freezed,
    Object? condition = freezed,
    Object? profileId = freezed,
    Object? catalogItemId = freezed,
    Object? profileCollectionItemId = freezed,
    Object? lastSale = freezed,
    Object? forSale = freezed,
    Object? sold = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
    Object? soldTo = freezed,
    Object? soldDate = freezed,
    Object? peerToPeerPaymentOptions = freezed,
    Object? submitPurchaseInfo = freezed,
  }) {
    return _then(_$_ProductItemSold(
      productItemId: null == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String,
      productItemName: null == productItemName
          ? _value.productItemName
          : productItemName // ignore: cast_nullable_to_non_nullable
              as String,
      productItemPrice: freezed == productItemPrice
          ? _value.productItemPrice
          : productItemPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productItemImageUrls: null == productItemImageUrls
          ? _value._productItemImageUrls
          : productItemImageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productItemDescription: freezed == productItemDescription
          ? _value.productItemDescription
          : productItemDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      profileId: freezed == profileId
          ? _value.profileId
          : profileId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogItemId: freezed == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileCollectionItemId: freezed == profileCollectionItemId
          ? _value.profileCollectionItemId
          : profileCollectionItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSale: freezed == lastSale
          ? _value.lastSale
          : lastSale // ignore: cast_nullable_to_non_nullable
              as double?,
      forSale: freezed == forSale
          ? _value.forSale
          : forSale // ignore: cast_nullable_to_non_nullable
              as bool?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      soldTo: freezed == soldTo
          ? _value.soldTo
          : soldTo // ignore: cast_nullable_to_non_nullable
              as String?,
      soldDate: freezed == soldDate
          ? _value.soldDate
          : soldDate // ignore: cast_nullable_to_non_nullable
              as String?,
      peerToPeerPaymentOptions: freezed == peerToPeerPaymentOptions
          ? _value.peerToPeerPaymentOptions
          : peerToPeerPaymentOptions // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
      submitPurchaseInfo: freezed == submitPurchaseInfo
          ? _value.submitPurchaseInfo
          : submitPurchaseInfo // ignore: cast_nullable_to_non_nullable
              as SubmitPurchaseInfo?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ProductItemSold implements _ProductItemSold {
  const _$_ProductItemSold(
      {required this.productItemId,
      required this.productItemName,
      this.productItemPrice,
      required final List<String> productItemImageUrls,
      this.productItemDescription,
      this.condition,
      this.profileId,
      this.catalogItemId,
      this.profileCollectionItemId,
      this.lastSale,
      this.forSale,
      this.sold,
      this.isDeleted,
      this.status,
      this.soldTo,
      this.soldDate,
      this.peerToPeerPaymentOptions,
      this.submitPurchaseInfo})
      : _productItemImageUrls = productItemImageUrls;

  factory _$_ProductItemSold.fromJson(Map<String, dynamic> json) =>
      _$$_ProductItemSoldFromJson(json);

  @override
  final String productItemId;
  @override
  final String productItemName;
  @override
  final double? productItemPrice;
  final List<String> _productItemImageUrls;
  @override
  List<String> get productItemImageUrls {
    if (_productItemImageUrls is EqualUnmodifiableListView)
      return _productItemImageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productItemImageUrls);
  }

  @override
  final String? productItemDescription;
  @override
  final String? condition;
  @override
  final String? profileId;
  @override
  final String? catalogItemId;
  @override
  final String? profileCollectionItemId;
  @override
  final double? lastSale;
  @override
  final bool? forSale;
  @override
  final bool? sold;
  @override
  final bool? isDeleted;
  @override
  final String? status;
  @override
  final String? soldTo;
  @override
  final String? soldDate;
  @override
  final PeerToPeerPaymentsModel? peerToPeerPaymentOptions;
  @override
  final SubmitPurchaseInfo? submitPurchaseInfo;

  @override
  String toString() {
    return 'ProductItemSold(productItemId: $productItemId, productItemName: $productItemName, productItemPrice: $productItemPrice, productItemImageUrls: $productItemImageUrls, productItemDescription: $productItemDescription, condition: $condition, profileId: $profileId, catalogItemId: $catalogItemId, profileCollectionItemId: $profileCollectionItemId, lastSale: $lastSale, forSale: $forSale, sold: $sold, isDeleted: $isDeleted, status: $status, soldTo: $soldTo, soldDate: $soldDate, peerToPeerPaymentOptions: $peerToPeerPaymentOptions, submitPurchaseInfo: $submitPurchaseInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductItemSold &&
            (identical(other.productItemId, productItemId) ||
                other.productItemId == productItemId) &&
            (identical(other.productItemName, productItemName) ||
                other.productItemName == productItemName) &&
            (identical(other.productItemPrice, productItemPrice) ||
                other.productItemPrice == productItemPrice) &&
            const DeepCollectionEquality()
                .equals(other._productItemImageUrls, _productItemImageUrls) &&
            (identical(other.productItemDescription, productItemDescription) ||
                other.productItemDescription == productItemDescription) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.profileId, profileId) ||
                other.profileId == profileId) &&
            (identical(other.catalogItemId, catalogItemId) ||
                other.catalogItemId == catalogItemId) &&
            (identical(
                    other.profileCollectionItemId, profileCollectionItemId) ||
                other.profileCollectionItemId == profileCollectionItemId) &&
            (identical(other.lastSale, lastSale) ||
                other.lastSale == lastSale) &&
            (identical(other.forSale, forSale) || other.forSale == forSale) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.soldTo, soldTo) || other.soldTo == soldTo) &&
            (identical(other.soldDate, soldDate) ||
                other.soldDate == soldDate) &&
            (identical(
                    other.peerToPeerPaymentOptions, peerToPeerPaymentOptions) ||
                other.peerToPeerPaymentOptions == peerToPeerPaymentOptions) &&
            (identical(other.submitPurchaseInfo, submitPurchaseInfo) ||
                other.submitPurchaseInfo == submitPurchaseInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productItemId,
      productItemName,
      productItemPrice,
      const DeepCollectionEquality().hash(_productItemImageUrls),
      productItemDescription,
      condition,
      profileId,
      catalogItemId,
      profileCollectionItemId,
      lastSale,
      forSale,
      sold,
      isDeleted,
      status,
      soldTo,
      soldDate,
      peerToPeerPaymentOptions,
      submitPurchaseInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductItemSoldCopyWith<_$_ProductItemSold> get copyWith =>
      __$$_ProductItemSoldCopyWithImpl<_$_ProductItemSold>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductItemSoldToJson(
      this,
    );
  }
}

abstract class _ProductItemSold implements ProductItemSold {
  const factory _ProductItemSold(
      {required final String productItemId,
      required final String productItemName,
      final double? productItemPrice,
      required final List<String> productItemImageUrls,
      final String? productItemDescription,
      final String? condition,
      final String? profileId,
      final String? catalogItemId,
      final String? profileCollectionItemId,
      final double? lastSale,
      final bool? forSale,
      final bool? sold,
      final bool? isDeleted,
      final String? status,
      final String? soldTo,
      final String? soldDate,
      final PeerToPeerPaymentsModel? peerToPeerPaymentOptions,
      final SubmitPurchaseInfo? submitPurchaseInfo}) = _$_ProductItemSold;

  factory _ProductItemSold.fromJson(Map<String, dynamic> json) =
      _$_ProductItemSold.fromJson;

  @override
  String get productItemId;
  @override
  String get productItemName;
  @override
  double? get productItemPrice;
  @override
  List<String> get productItemImageUrls;
  @override
  String? get productItemDescription;
  @override
  String? get condition;
  @override
  String? get profileId;
  @override
  String? get catalogItemId;
  @override
  String? get profileCollectionItemId;
  @override
  double? get lastSale;
  @override
  bool? get forSale;
  @override
  bool? get sold;
  @override
  bool? get isDeleted;
  @override
  String? get status;
  @override
  String? get soldTo;
  @override
  String? get soldDate;
  @override
  PeerToPeerPaymentsModel? get peerToPeerPaymentOptions;
  @override
  SubmitPurchaseInfo? get submitPurchaseInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ProductItemSoldCopyWith<_$_ProductItemSold> get copyWith =>
      throw _privateConstructorUsedError;
}
