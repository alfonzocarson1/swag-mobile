// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_a_listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuyASaleListingModel _$BuyASaleListingModelFromJson(Map<String, dynamic> json) {
  return _BuyASaleListingModel.fromJson(json);
}

/// @nodoc
mixin _$BuyASaleListingModel {
  bool? get saveAddress => throw _privateConstructorUsedError;
  String? get productItemId => throw _privateConstructorUsedError;
  String? get userNameBuyer => throw _privateConstructorUsedError;
  AddressesPayloadModel? get address => throw _privateConstructorUsedError;
  PeerToPeerPaymentsModel? get profilePeerToPeerPayment =>
      throw _privateConstructorUsedError;
  String? get purchaseOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyASaleListingModelCopyWith<BuyASaleListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyASaleListingModelCopyWith<$Res> {
  factory $BuyASaleListingModelCopyWith(BuyASaleListingModel value,
          $Res Function(BuyASaleListingModel) then) =
      _$BuyASaleListingModelCopyWithImpl<$Res, BuyASaleListingModel>;
  @useResult
  $Res call(
      {bool? saveAddress,
      String? productItemId,
      String? userNameBuyer,
      AddressesPayloadModel? address,
      PeerToPeerPaymentsModel? profilePeerToPeerPayment,
      String? purchaseOrder});

  $AddressesPayloadModelCopyWith<$Res>? get address;
  $PeerToPeerPaymentsModelCopyWith<$Res>? get profilePeerToPeerPayment;
}

/// @nodoc
class _$BuyASaleListingModelCopyWithImpl<$Res,
        $Val extends BuyASaleListingModel>
    implements $BuyASaleListingModelCopyWith<$Res> {
  _$BuyASaleListingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saveAddress = freezed,
    Object? productItemId = freezed,
    Object? userNameBuyer = freezed,
    Object? address = freezed,
    Object? profilePeerToPeerPayment = freezed,
    Object? purchaseOrder = freezed,
  }) {
    return _then(_value.copyWith(
      saveAddress: freezed == saveAddress
          ? _value.saveAddress
          : saveAddress // ignore: cast_nullable_to_non_nullable
              as bool?,
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      userNameBuyer: freezed == userNameBuyer
          ? _value.userNameBuyer
          : userNameBuyer // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressesPayloadModel?,
      profilePeerToPeerPayment: freezed == profilePeerToPeerPayment
          ? _value.profilePeerToPeerPayment
          : profilePeerToPeerPayment // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
      purchaseOrder: freezed == purchaseOrder
          ? _value.purchaseOrder
          : purchaseOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressesPayloadModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressesPayloadModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeerToPeerPaymentsModelCopyWith<$Res>? get profilePeerToPeerPayment {
    if (_value.profilePeerToPeerPayment == null) {
      return null;
    }

    return $PeerToPeerPaymentsModelCopyWith<$Res>(
        _value.profilePeerToPeerPayment!, (value) {
      return _then(_value.copyWith(profilePeerToPeerPayment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BuyASaleListingModelCopyWith<$Res>
    implements $BuyASaleListingModelCopyWith<$Res> {
  factory _$$_BuyASaleListingModelCopyWith(_$_BuyASaleListingModel value,
          $Res Function(_$_BuyASaleListingModel) then) =
      __$$_BuyASaleListingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? saveAddress,
      String? productItemId,
      String? userNameBuyer,
      AddressesPayloadModel? address,
      PeerToPeerPaymentsModel? profilePeerToPeerPayment,
      String? purchaseOrder});

  @override
  $AddressesPayloadModelCopyWith<$Res>? get address;
  @override
  $PeerToPeerPaymentsModelCopyWith<$Res>? get profilePeerToPeerPayment;
}

/// @nodoc
class __$$_BuyASaleListingModelCopyWithImpl<$Res>
    extends _$BuyASaleListingModelCopyWithImpl<$Res, _$_BuyASaleListingModel>
    implements _$$_BuyASaleListingModelCopyWith<$Res> {
  __$$_BuyASaleListingModelCopyWithImpl(_$_BuyASaleListingModel _value,
      $Res Function(_$_BuyASaleListingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saveAddress = freezed,
    Object? productItemId = freezed,
    Object? userNameBuyer = freezed,
    Object? address = freezed,
    Object? profilePeerToPeerPayment = freezed,
    Object? purchaseOrder = freezed,
  }) {
    return _then(_$_BuyASaleListingModel(
      saveAddress: freezed == saveAddress
          ? _value.saveAddress
          : saveAddress // ignore: cast_nullable_to_non_nullable
              as bool?,
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      userNameBuyer: freezed == userNameBuyer
          ? _value.userNameBuyer
          : userNameBuyer // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressesPayloadModel?,
      profilePeerToPeerPayment: freezed == profilePeerToPeerPayment
          ? _value.profilePeerToPeerPayment
          : profilePeerToPeerPayment // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
      purchaseOrder: freezed == purchaseOrder
          ? _value.purchaseOrder
          : purchaseOrder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_BuyASaleListingModel implements _BuyASaleListingModel {
  const _$_BuyASaleListingModel(
      {this.saveAddress,
      this.productItemId,
      this.userNameBuyer,
      this.address,
      this.profilePeerToPeerPayment,
      this.purchaseOrder});

  factory _$_BuyASaleListingModel.fromJson(Map<String, dynamic> json) =>
      _$$_BuyASaleListingModelFromJson(json);

  @override
  final bool? saveAddress;
  @override
  final String? productItemId;
  @override
  final String? userNameBuyer;
  @override
  final AddressesPayloadModel? address;
  @override
  final PeerToPeerPaymentsModel? profilePeerToPeerPayment;
  @override
  final String? purchaseOrder;

  @override
  String toString() {
    return 'BuyASaleListingModel(saveAddress: $saveAddress, productItemId: $productItemId, userNameBuyer: $userNameBuyer, address: $address, profilePeerToPeerPayment: $profilePeerToPeerPayment, purchaseOrder: $purchaseOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyASaleListingModel &&
            (identical(other.saveAddress, saveAddress) ||
                other.saveAddress == saveAddress) &&
            (identical(other.productItemId, productItemId) ||
                other.productItemId == productItemId) &&
            (identical(other.userNameBuyer, userNameBuyer) ||
                other.userNameBuyer == userNameBuyer) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(
                    other.profilePeerToPeerPayment, profilePeerToPeerPayment) ||
                other.profilePeerToPeerPayment == profilePeerToPeerPayment) &&
            (identical(other.purchaseOrder, purchaseOrder) ||
                other.purchaseOrder == purchaseOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, saveAddress, productItemId,
      userNameBuyer, address, profilePeerToPeerPayment, purchaseOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyASaleListingModelCopyWith<_$_BuyASaleListingModel> get copyWith =>
      __$$_BuyASaleListingModelCopyWithImpl<_$_BuyASaleListingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyASaleListingModelToJson(
      this,
    );
  }
}

abstract class _BuyASaleListingModel implements BuyASaleListingModel {
  const factory _BuyASaleListingModel(
      {final bool? saveAddress,
      final String? productItemId,
      final String? userNameBuyer,
      final AddressesPayloadModel? address,
      final PeerToPeerPaymentsModel? profilePeerToPeerPayment,
      final String? purchaseOrder}) = _$_BuyASaleListingModel;

  factory _BuyASaleListingModel.fromJson(Map<String, dynamic> json) =
      _$_BuyASaleListingModel.fromJson;

  @override
  bool? get saveAddress;
  @override
  String? get productItemId;
  @override
  String? get userNameBuyer;
  @override
  AddressesPayloadModel? get address;
  @override
  PeerToPeerPaymentsModel? get profilePeerToPeerPayment;
  @override
  String? get purchaseOrder;
  @override
  @JsonKey(ignore: true)
  _$$_BuyASaleListingModelCopyWith<_$_BuyASaleListingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
