// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_for_sale_listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuyForSaleListingModel _$BuyForSaleListingModelFromJson(
    Map<String, dynamic> json) {
  return _BuyForSaleListingModel.fromJson(json);
}

/// @nodoc
mixin _$BuyForSaleListingModel {
  String? get productItemId => throw _privateConstructorUsedError;
  String? get productItemName => throw _privateConstructorUsedError;
  double? get productItemPrice => throw _privateConstructorUsedError;
  List<dynamic> get productItemImageUrls => throw _privateConstructorUsedError;
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
  PeerToPeerPaymentsModel? get peerToPeerPaymentOptions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyForSaleListingModelCopyWith<BuyForSaleListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyForSaleListingModelCopyWith<$Res> {
  factory $BuyForSaleListingModelCopyWith(BuyForSaleListingModel value,
          $Res Function(BuyForSaleListingModel) then) =
      _$BuyForSaleListingModelCopyWithImpl<$Res, BuyForSaleListingModel>;
  @useResult
  $Res call(
      {String? productItemId,
      String? productItemName,
      double? productItemPrice,
      List<dynamic> productItemImageUrls,
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
      PeerToPeerPaymentsModel? peerToPeerPaymentOptions});

  $PeerToPeerPaymentsModelCopyWith<$Res>? get peerToPeerPaymentOptions;
}

/// @nodoc
class _$BuyForSaleListingModelCopyWithImpl<$Res,
        $Val extends BuyForSaleListingModel>
    implements $BuyForSaleListingModelCopyWith<$Res> {
  _$BuyForSaleListingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemId = freezed,
    Object? productItemName = freezed,
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
    Object? peerToPeerPaymentOptions = freezed,
  }) {
    return _then(_value.copyWith(
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      productItemName: freezed == productItemName
          ? _value.productItemName
          : productItemName // ignore: cast_nullable_to_non_nullable
              as String?,
      productItemPrice: freezed == productItemPrice
          ? _value.productItemPrice
          : productItemPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productItemImageUrls: null == productItemImageUrls
          ? _value.productItemImageUrls
          : productItemImageUrls // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      peerToPeerPaymentOptions: freezed == peerToPeerPaymentOptions
          ? _value.peerToPeerPaymentOptions
          : peerToPeerPaymentOptions // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
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
}

/// @nodoc
abstract class _$$_BuyForSaleListingModelCopyWith<$Res>
    implements $BuyForSaleListingModelCopyWith<$Res> {
  factory _$$_BuyForSaleListingModelCopyWith(_$_BuyForSaleListingModel value,
          $Res Function(_$_BuyForSaleListingModel) then) =
      __$$_BuyForSaleListingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productItemId,
      String? productItemName,
      double? productItemPrice,
      List<dynamic> productItemImageUrls,
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
      PeerToPeerPaymentsModel? peerToPeerPaymentOptions});

  @override
  $PeerToPeerPaymentsModelCopyWith<$Res>? get peerToPeerPaymentOptions;
}

/// @nodoc
class __$$_BuyForSaleListingModelCopyWithImpl<$Res>
    extends _$BuyForSaleListingModelCopyWithImpl<$Res,
        _$_BuyForSaleListingModel>
    implements _$$_BuyForSaleListingModelCopyWith<$Res> {
  __$$_BuyForSaleListingModelCopyWithImpl(_$_BuyForSaleListingModel _value,
      $Res Function(_$_BuyForSaleListingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemId = freezed,
    Object? productItemName = freezed,
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
    Object? peerToPeerPaymentOptions = freezed,
  }) {
    return _then(_$_BuyForSaleListingModel(
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      productItemName: freezed == productItemName
          ? _value.productItemName
          : productItemName // ignore: cast_nullable_to_non_nullable
              as String?,
      productItemPrice: freezed == productItemPrice
          ? _value.productItemPrice
          : productItemPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productItemImageUrls: null == productItemImageUrls
          ? _value._productItemImageUrls
          : productItemImageUrls // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      peerToPeerPaymentOptions: freezed == peerToPeerPaymentOptions
          ? _value.peerToPeerPaymentOptions
          : peerToPeerPaymentOptions // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuyForSaleListingModel implements _BuyForSaleListingModel {
  const _$_BuyForSaleListingModel(
      {this.productItemId,
      this.productItemName,
      this.productItemPrice,
      required final List<dynamic> productItemImageUrls,
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
      this.peerToPeerPaymentOptions})
      : _productItemImageUrls = productItemImageUrls;

  factory _$_BuyForSaleListingModel.fromJson(Map<String, dynamic> json) =>
      _$$_BuyForSaleListingModelFromJson(json);

  @override
  final String? productItemId;
  @override
  final String? productItemName;
  @override
  final double? productItemPrice;
  final List<dynamic> _productItemImageUrls;
  @override
  List<dynamic> get productItemImageUrls {
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
  final PeerToPeerPaymentsModel? peerToPeerPaymentOptions;

  @override
  String toString() {
    return 'BuyForSaleListingModel(productItemId: $productItemId, productItemName: $productItemName, productItemPrice: $productItemPrice, productItemImageUrls: $productItemImageUrls, productItemDescription: $productItemDescription, condition: $condition, profileId: $profileId, catalogItemId: $catalogItemId, profileCollectionItemId: $profileCollectionItemId, lastSale: $lastSale, forSale: $forSale, sold: $sold, isDeleted: $isDeleted, status: $status, peerToPeerPaymentOptions: $peerToPeerPaymentOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyForSaleListingModel &&
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
            (identical(
                    other.peerToPeerPaymentOptions, peerToPeerPaymentOptions) ||
                other.peerToPeerPaymentOptions == peerToPeerPaymentOptions));
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
      peerToPeerPaymentOptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyForSaleListingModelCopyWith<_$_BuyForSaleListingModel> get copyWith =>
      __$$_BuyForSaleListingModelCopyWithImpl<_$_BuyForSaleListingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyForSaleListingModelToJson(
      this,
    );
  }
}

abstract class _BuyForSaleListingModel implements BuyForSaleListingModel {
  const factory _BuyForSaleListingModel(
          {final String? productItemId,
          final String? productItemName,
          final double? productItemPrice,
          required final List<dynamic> productItemImageUrls,
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
          final PeerToPeerPaymentsModel? peerToPeerPaymentOptions}) =
      _$_BuyForSaleListingModel;

  factory _BuyForSaleListingModel.fromJson(Map<String, dynamic> json) =
      _$_BuyForSaleListingModel.fromJson;

  @override
  String? get productItemId;
  @override
  String? get productItemName;
  @override
  double? get productItemPrice;
  @override
  List<dynamic> get productItemImageUrls;
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
  PeerToPeerPaymentsModel? get peerToPeerPaymentOptions;
  @override
  @JsonKey(ignore: true)
  _$$_BuyForSaleListingModelCopyWith<_$_BuyForSaleListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
