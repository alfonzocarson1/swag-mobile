// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_history_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseHistoryDetailModel _$PurchaseHistoryDetailModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseHistoryDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseHistoryDetailModel {
  String? get purchaseHistoryId => throw _privateConstructorUsedError;
  String? get purchasePaymentMethod => throw _privateConstructorUsedError;
  List<PurchaseItemModel> get purchaseItems =>
      throw _privateConstructorUsedError;
  double get purchaseTotal => throw _privateConstructorUsedError;
  PurchaseHistoryDetailShippingModel get purchaseShippingInfo =>
      throw _privateConstructorUsedError;
  String? get sourcePurchase => throw _privateConstructorUsedError;
  String? get purchaseDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseHistoryDetailModelCopyWith<PurchaseHistoryDetailModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseHistoryDetailModelCopyWith<$Res> {
  factory $PurchaseHistoryDetailModelCopyWith(PurchaseHistoryDetailModel value,
          $Res Function(PurchaseHistoryDetailModel) then) =
      _$PurchaseHistoryDetailModelCopyWithImpl<$Res,
          PurchaseHistoryDetailModel>;
  @useResult
  $Res call(
      {String? purchaseHistoryId,
      String? purchasePaymentMethod,
      List<PurchaseItemModel> purchaseItems,
      double purchaseTotal,
      PurchaseHistoryDetailShippingModel purchaseShippingInfo,
      String? sourcePurchase,
      String? purchaseDate});

  $PurchaseHistoryDetailShippingModelCopyWith<$Res> get purchaseShippingInfo;
}

/// @nodoc
class _$PurchaseHistoryDetailModelCopyWithImpl<$Res,
        $Val extends PurchaseHistoryDetailModel>
    implements $PurchaseHistoryDetailModelCopyWith<$Res> {
  _$PurchaseHistoryDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseHistoryId = freezed,
    Object? purchasePaymentMethod = freezed,
    Object? purchaseItems = null,
    Object? purchaseTotal = null,
    Object? purchaseShippingInfo = null,
    Object? sourcePurchase = freezed,
    Object? purchaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      purchaseHistoryId: freezed == purchaseHistoryId
          ? _value.purchaseHistoryId
          : purchaseHistoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePaymentMethod: freezed == purchasePaymentMethod
          ? _value.purchasePaymentMethod
          : purchasePaymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseItems: null == purchaseItems
          ? _value.purchaseItems
          : purchaseItems // ignore: cast_nullable_to_non_nullable
              as List<PurchaseItemModel>,
      purchaseTotal: null == purchaseTotal
          ? _value.purchaseTotal
          : purchaseTotal // ignore: cast_nullable_to_non_nullable
              as double,
      purchaseShippingInfo: null == purchaseShippingInfo
          ? _value.purchaseShippingInfo
          : purchaseShippingInfo // ignore: cast_nullable_to_non_nullable
              as PurchaseHistoryDetailShippingModel,
      sourcePurchase: freezed == sourcePurchase
          ? _value.sourcePurchase
          : sourcePurchase // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PurchaseHistoryDetailShippingModelCopyWith<$Res> get purchaseShippingInfo {
    return $PurchaseHistoryDetailShippingModelCopyWith<$Res>(
        _value.purchaseShippingInfo, (value) {
      return _then(_value.copyWith(purchaseShippingInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchaseHistoryDetailModelCopyWith<$Res>
    implements $PurchaseHistoryDetailModelCopyWith<$Res> {
  factory _$$_PurchaseHistoryDetailModelCopyWith(
          _$_PurchaseHistoryDetailModel value,
          $Res Function(_$_PurchaseHistoryDetailModel) then) =
      __$$_PurchaseHistoryDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? purchaseHistoryId,
      String? purchasePaymentMethod,
      List<PurchaseItemModel> purchaseItems,
      double purchaseTotal,
      PurchaseHistoryDetailShippingModel purchaseShippingInfo,
      String? sourcePurchase,
      String? purchaseDate});

  @override
  $PurchaseHistoryDetailShippingModelCopyWith<$Res> get purchaseShippingInfo;
}

/// @nodoc
class __$$_PurchaseHistoryDetailModelCopyWithImpl<$Res>
    extends _$PurchaseHistoryDetailModelCopyWithImpl<$Res,
        _$_PurchaseHistoryDetailModel>
    implements _$$_PurchaseHistoryDetailModelCopyWith<$Res> {
  __$$_PurchaseHistoryDetailModelCopyWithImpl(
      _$_PurchaseHistoryDetailModel _value,
      $Res Function(_$_PurchaseHistoryDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseHistoryId = freezed,
    Object? purchasePaymentMethod = freezed,
    Object? purchaseItems = null,
    Object? purchaseTotal = null,
    Object? purchaseShippingInfo = null,
    Object? sourcePurchase = freezed,
    Object? purchaseDate = freezed,
  }) {
    return _then(_$_PurchaseHistoryDetailModel(
      purchaseHistoryId: freezed == purchaseHistoryId
          ? _value.purchaseHistoryId
          : purchaseHistoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePaymentMethod: freezed == purchasePaymentMethod
          ? _value.purchasePaymentMethod
          : purchasePaymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseItems: null == purchaseItems
          ? _value._purchaseItems
          : purchaseItems // ignore: cast_nullable_to_non_nullable
              as List<PurchaseItemModel>,
      purchaseTotal: null == purchaseTotal
          ? _value.purchaseTotal
          : purchaseTotal // ignore: cast_nullable_to_non_nullable
              as double,
      purchaseShippingInfo: null == purchaseShippingInfo
          ? _value.purchaseShippingInfo
          : purchaseShippingInfo // ignore: cast_nullable_to_non_nullable
              as PurchaseHistoryDetailShippingModel,
      sourcePurchase: freezed == sourcePurchase
          ? _value.sourcePurchase
          : sourcePurchase // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PurchaseHistoryDetailModel implements _PurchaseHistoryDetailModel {
  const _$_PurchaseHistoryDetailModel(
      {this.purchaseHistoryId,
      this.purchasePaymentMethod,
      required final List<PurchaseItemModel> purchaseItems,
      this.purchaseTotal = 0.0,
      required this.purchaseShippingInfo,
      this.sourcePurchase,
      this.purchaseDate})
      : _purchaseItems = purchaseItems;

  factory _$_PurchaseHistoryDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseHistoryDetailModelFromJson(json);

  @override
  final String? purchaseHistoryId;
  @override
  final String? purchasePaymentMethod;
  final List<PurchaseItemModel> _purchaseItems;
  @override
  List<PurchaseItemModel> get purchaseItems {
    if (_purchaseItems is EqualUnmodifiableListView) return _purchaseItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchaseItems);
  }

  @override
  @JsonKey()
  final double purchaseTotal;
  @override
  final PurchaseHistoryDetailShippingModel purchaseShippingInfo;
  @override
  final String? sourcePurchase;
  @override
  final String? purchaseDate;

  @override
  String toString() {
    return 'PurchaseHistoryDetailModel(purchaseHistoryId: $purchaseHistoryId, purchasePaymentMethod: $purchasePaymentMethod, purchaseItems: $purchaseItems, purchaseTotal: $purchaseTotal, purchaseShippingInfo: $purchaseShippingInfo, sourcePurchase: $sourcePurchase, purchaseDate: $purchaseDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseHistoryDetailModel &&
            (identical(other.purchaseHistoryId, purchaseHistoryId) ||
                other.purchaseHistoryId == purchaseHistoryId) &&
            (identical(other.purchasePaymentMethod, purchasePaymentMethod) ||
                other.purchasePaymentMethod == purchasePaymentMethod) &&
            const DeepCollectionEquality()
                .equals(other._purchaseItems, _purchaseItems) &&
            (identical(other.purchaseTotal, purchaseTotal) ||
                other.purchaseTotal == purchaseTotal) &&
            (identical(other.purchaseShippingInfo, purchaseShippingInfo) ||
                other.purchaseShippingInfo == purchaseShippingInfo) &&
            (identical(other.sourcePurchase, sourcePurchase) ||
                other.sourcePurchase == sourcePurchase) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      purchaseHistoryId,
      purchasePaymentMethod,
      const DeepCollectionEquality().hash(_purchaseItems),
      purchaseTotal,
      purchaseShippingInfo,
      sourcePurchase,
      purchaseDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseHistoryDetailModelCopyWith<_$_PurchaseHistoryDetailModel>
      get copyWith => __$$_PurchaseHistoryDetailModelCopyWithImpl<
          _$_PurchaseHistoryDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseHistoryDetailModelToJson(
      this,
    );
  }
}

abstract class _PurchaseHistoryDetailModel
    implements PurchaseHistoryDetailModel {
  const factory _PurchaseHistoryDetailModel(
      {final String? purchaseHistoryId,
      final String? purchasePaymentMethod,
      required final List<PurchaseItemModel> purchaseItems,
      final double purchaseTotal,
      required final PurchaseHistoryDetailShippingModel purchaseShippingInfo,
      final String? sourcePurchase,
      final String? purchaseDate}) = _$_PurchaseHistoryDetailModel;

  factory _PurchaseHistoryDetailModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseHistoryDetailModel.fromJson;

  @override
  String? get purchaseHistoryId;
  @override
  String? get purchasePaymentMethod;
  @override
  List<PurchaseItemModel> get purchaseItems;
  @override
  double get purchaseTotal;
  @override
  PurchaseHistoryDetailShippingModel get purchaseShippingInfo;
  @override
  String? get sourcePurchase;
  @override
  String? get purchaseDate;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseHistoryDetailModelCopyWith<_$_PurchaseHistoryDetailModel>
      get copyWith => throw _privateConstructorUsedError;
}

PurchaseHistoryDetailShippingModel _$PurchaseHistoryDetailShippingModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseHistoryDetailShippingModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseHistoryDetailShippingModel {
  PurchaseHistoryDetailAddressModel get address =>
      throw _privateConstructorUsedError;
  String? get statusShipping => throw _privateConstructorUsedError;
  String? get trackingNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseHistoryDetailShippingModelCopyWith<
          PurchaseHistoryDetailShippingModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseHistoryDetailShippingModelCopyWith<$Res> {
  factory $PurchaseHistoryDetailShippingModelCopyWith(
          PurchaseHistoryDetailShippingModel value,
          $Res Function(PurchaseHistoryDetailShippingModel) then) =
      _$PurchaseHistoryDetailShippingModelCopyWithImpl<$Res,
          PurchaseHistoryDetailShippingModel>;
  @useResult
  $Res call(
      {PurchaseHistoryDetailAddressModel address,
      String? statusShipping,
      String? trackingNumber});

  $PurchaseHistoryDetailAddressModelCopyWith<$Res> get address;
}

/// @nodoc
class _$PurchaseHistoryDetailShippingModelCopyWithImpl<$Res,
        $Val extends PurchaseHistoryDetailShippingModel>
    implements $PurchaseHistoryDetailShippingModelCopyWith<$Res> {
  _$PurchaseHistoryDetailShippingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? statusShipping = freezed,
    Object? trackingNumber = freezed,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as PurchaseHistoryDetailAddressModel,
      statusShipping: freezed == statusShipping
          ? _value.statusShipping
          : statusShipping // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PurchaseHistoryDetailAddressModelCopyWith<$Res> get address {
    return $PurchaseHistoryDetailAddressModelCopyWith<$Res>(_value.address,
        (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchaseHistoryDetailShippingModelCopyWith<$Res>
    implements $PurchaseHistoryDetailShippingModelCopyWith<$Res> {
  factory _$$_PurchaseHistoryDetailShippingModelCopyWith(
          _$_PurchaseHistoryDetailShippingModel value,
          $Res Function(_$_PurchaseHistoryDetailShippingModel) then) =
      __$$_PurchaseHistoryDetailShippingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PurchaseHistoryDetailAddressModel address,
      String? statusShipping,
      String? trackingNumber});

  @override
  $PurchaseHistoryDetailAddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$_PurchaseHistoryDetailShippingModelCopyWithImpl<$Res>
    extends _$PurchaseHistoryDetailShippingModelCopyWithImpl<$Res,
        _$_PurchaseHistoryDetailShippingModel>
    implements _$$_PurchaseHistoryDetailShippingModelCopyWith<$Res> {
  __$$_PurchaseHistoryDetailShippingModelCopyWithImpl(
      _$_PurchaseHistoryDetailShippingModel _value,
      $Res Function(_$_PurchaseHistoryDetailShippingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? statusShipping = freezed,
    Object? trackingNumber = freezed,
  }) {
    return _then(_$_PurchaseHistoryDetailShippingModel(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as PurchaseHistoryDetailAddressModel,
      statusShipping: freezed == statusShipping
          ? _value.statusShipping
          : statusShipping // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingNumber: freezed == trackingNumber
          ? _value.trackingNumber
          : trackingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PurchaseHistoryDetailShippingModel
    implements _PurchaseHistoryDetailShippingModel {
  const _$_PurchaseHistoryDetailShippingModel(
      {required this.address, this.statusShipping, this.trackingNumber});

  factory _$_PurchaseHistoryDetailShippingModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PurchaseHistoryDetailShippingModelFromJson(json);

  @override
  final PurchaseHistoryDetailAddressModel address;
  @override
  final String? statusShipping;
  @override
  final String? trackingNumber;

  @override
  String toString() {
    return 'PurchaseHistoryDetailShippingModel(address: $address, statusShipping: $statusShipping, trackingNumber: $trackingNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseHistoryDetailShippingModel &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.statusShipping, statusShipping) ||
                other.statusShipping == statusShipping) &&
            (identical(other.trackingNumber, trackingNumber) ||
                other.trackingNumber == trackingNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, statusShipping, trackingNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseHistoryDetailShippingModelCopyWith<
          _$_PurchaseHistoryDetailShippingModel>
      get copyWith => __$$_PurchaseHistoryDetailShippingModelCopyWithImpl<
          _$_PurchaseHistoryDetailShippingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseHistoryDetailShippingModelToJson(
      this,
    );
  }
}

abstract class _PurchaseHistoryDetailShippingModel
    implements PurchaseHistoryDetailShippingModel {
  const factory _PurchaseHistoryDetailShippingModel(
      {required final PurchaseHistoryDetailAddressModel address,
      final String? statusShipping,
      final String? trackingNumber}) = _$_PurchaseHistoryDetailShippingModel;

  factory _PurchaseHistoryDetailShippingModel.fromJson(
          Map<String, dynamic> json) =
      _$_PurchaseHistoryDetailShippingModel.fromJson;

  @override
  PurchaseHistoryDetailAddressModel get address;
  @override
  String? get statusShipping;
  @override
  String? get trackingNumber;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseHistoryDetailShippingModelCopyWith<
          _$_PurchaseHistoryDetailShippingModel>
      get copyWith => throw _privateConstructorUsedError;
}

PurchaseHistoryDetailAddressModel _$PurchaseHistoryDetailAddressModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseHistoryDetailAddressModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseHistoryDetailAddressModel {
  String? get addressType => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseHistoryDetailAddressModelCopyWith<PurchaseHistoryDetailAddressModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseHistoryDetailAddressModelCopyWith<$Res> {
  factory $PurchaseHistoryDetailAddressModelCopyWith(
          PurchaseHistoryDetailAddressModel value,
          $Res Function(PurchaseHistoryDetailAddressModel) then) =
      _$PurchaseHistoryDetailAddressModelCopyWithImpl<$Res,
          PurchaseHistoryDetailAddressModel>;
  @useResult
  $Res call(
      {String? addressType,
      String? firstName,
      String? lastName,
      String? country,
      String? address1,
      String? address2,
      String? city,
      String? state,
      String? postalCode});
}

/// @nodoc
class _$PurchaseHistoryDetailAddressModelCopyWithImpl<$Res,
        $Val extends PurchaseHistoryDetailAddressModel>
    implements $PurchaseHistoryDetailAddressModelCopyWith<$Res> {
  _$PurchaseHistoryDetailAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? country = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_value.copyWith(
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseHistoryDetailAddressModelCopyWith<$Res>
    implements $PurchaseHistoryDetailAddressModelCopyWith<$Res> {
  factory _$$_PurchaseHistoryDetailAddressModelCopyWith(
          _$_PurchaseHistoryDetailAddressModel value,
          $Res Function(_$_PurchaseHistoryDetailAddressModel) then) =
      __$$_PurchaseHistoryDetailAddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? addressType,
      String? firstName,
      String? lastName,
      String? country,
      String? address1,
      String? address2,
      String? city,
      String? state,
      String? postalCode});
}

/// @nodoc
class __$$_PurchaseHistoryDetailAddressModelCopyWithImpl<$Res>
    extends _$PurchaseHistoryDetailAddressModelCopyWithImpl<$Res,
        _$_PurchaseHistoryDetailAddressModel>
    implements _$$_PurchaseHistoryDetailAddressModelCopyWith<$Res> {
  __$$_PurchaseHistoryDetailAddressModelCopyWithImpl(
      _$_PurchaseHistoryDetailAddressModel _value,
      $Res Function(_$_PurchaseHistoryDetailAddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? country = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(_$_PurchaseHistoryDetailAddressModel(
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PurchaseHistoryDetailAddressModel
    implements _PurchaseHistoryDetailAddressModel {
  const _$_PurchaseHistoryDetailAddressModel(
      {this.addressType,
      this.firstName,
      this.lastName,
      this.country,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postalCode});

  factory _$_PurchaseHistoryDetailAddressModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PurchaseHistoryDetailAddressModelFromJson(json);

  @override
  final String? addressType;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? country;
  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postalCode;

  @override
  String toString() {
    return 'PurchaseHistoryDetailAddressModel(addressType: $addressType, firstName: $firstName, lastName: $lastName, country: $country, address1: $address1, address2: $address2, city: $city, state: $state, postalCode: $postalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseHistoryDetailAddressModel &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addressType, firstName, lastName,
      country, address1, address2, city, state, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseHistoryDetailAddressModelCopyWith<
          _$_PurchaseHistoryDetailAddressModel>
      get copyWith => __$$_PurchaseHistoryDetailAddressModelCopyWithImpl<
          _$_PurchaseHistoryDetailAddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseHistoryDetailAddressModelToJson(
      this,
    );
  }
}

abstract class _PurchaseHistoryDetailAddressModel
    implements PurchaseHistoryDetailAddressModel {
  const factory _PurchaseHistoryDetailAddressModel(
      {final String? addressType,
      final String? firstName,
      final String? lastName,
      final String? country,
      final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final String? postalCode}) = _$_PurchaseHistoryDetailAddressModel;

  factory _PurchaseHistoryDetailAddressModel.fromJson(
          Map<String, dynamic> json) =
      _$_PurchaseHistoryDetailAddressModel.fromJson;

  @override
  String? get addressType;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get country;
  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseHistoryDetailAddressModelCopyWith<
          _$_PurchaseHistoryDetailAddressModel>
      get copyWith => throw _privateConstructorUsedError;
}
