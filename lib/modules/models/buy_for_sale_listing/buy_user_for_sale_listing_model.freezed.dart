// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_user_for_sale_listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuyUserForSaleListingModel _$BuyUserForSaleListingModelFromJson(
    Map<String, dynamic> json) {
  return _BuyUserForSaleListingModel.fromJson(json);
}

/// @nodoc
mixin _$BuyUserForSaleListingModel {
  String? get userNameBuyer => throw _privateConstructorUsedError;
  String? get avatarBuyer => throw _privateConstructorUsedError;
  String? get avatarBuyerUrl => throw _privateConstructorUsedError;
  int? get purchaseOrder => throw _privateConstructorUsedError;
  AddressesPayloadModel? get address => throw _privateConstructorUsedError;
  PeerToPeerPaymentsModel? get profilePeerToPeerPayment =>
      throw _privateConstructorUsedError;
  String? get purchaseHistoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyUserForSaleListingModelCopyWith<BuyUserForSaleListingModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyUserForSaleListingModelCopyWith<$Res> {
  factory $BuyUserForSaleListingModelCopyWith(BuyUserForSaleListingModel value,
          $Res Function(BuyUserForSaleListingModel) then) =
      _$BuyUserForSaleListingModelCopyWithImpl<$Res,
          BuyUserForSaleListingModel>;
  @useResult
  $Res call(
      {String? userNameBuyer,
      String? avatarBuyer,
      String? avatarBuyerUrl,
      int? purchaseOrder,
      AddressesPayloadModel? address,
      PeerToPeerPaymentsModel? profilePeerToPeerPayment,
      String? purchaseHistoryId});

  $AddressesPayloadModelCopyWith<$Res>? get address;
  $PeerToPeerPaymentsModelCopyWith<$Res>? get profilePeerToPeerPayment;
}

/// @nodoc
class _$BuyUserForSaleListingModelCopyWithImpl<$Res,
        $Val extends BuyUserForSaleListingModel>
    implements $BuyUserForSaleListingModelCopyWith<$Res> {
  _$BuyUserForSaleListingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameBuyer = freezed,
    Object? avatarBuyer = freezed,
    Object? avatarBuyerUrl = freezed,
    Object? purchaseOrder = freezed,
    Object? address = freezed,
    Object? profilePeerToPeerPayment = freezed,
    Object? purchaseHistoryId = freezed,
  }) {
    return _then(_value.copyWith(
      userNameBuyer: freezed == userNameBuyer
          ? _value.userNameBuyer
          : userNameBuyer // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarBuyer: freezed == avatarBuyer
          ? _value.avatarBuyer
          : avatarBuyer // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarBuyerUrl: freezed == avatarBuyerUrl
          ? _value.avatarBuyerUrl
          : avatarBuyerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseOrder: freezed == purchaseOrder
          ? _value.purchaseOrder
          : purchaseOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressesPayloadModel?,
      profilePeerToPeerPayment: freezed == profilePeerToPeerPayment
          ? _value.profilePeerToPeerPayment
          : profilePeerToPeerPayment // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
      purchaseHistoryId: freezed == purchaseHistoryId
          ? _value.purchaseHistoryId
          : purchaseHistoryId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_BuyUserForSaleListingModelCopyWith<$Res>
    implements $BuyUserForSaleListingModelCopyWith<$Res> {
  factory _$$_BuyUserForSaleListingModelCopyWith(
          _$_BuyUserForSaleListingModel value,
          $Res Function(_$_BuyUserForSaleListingModel) then) =
      __$$_BuyUserForSaleListingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userNameBuyer,
      String? avatarBuyer,
      String? avatarBuyerUrl,
      int? purchaseOrder,
      AddressesPayloadModel? address,
      PeerToPeerPaymentsModel? profilePeerToPeerPayment,
      String? purchaseHistoryId});

  @override
  $AddressesPayloadModelCopyWith<$Res>? get address;
  @override
  $PeerToPeerPaymentsModelCopyWith<$Res>? get profilePeerToPeerPayment;
}

/// @nodoc
class __$$_BuyUserForSaleListingModelCopyWithImpl<$Res>
    extends _$BuyUserForSaleListingModelCopyWithImpl<$Res,
        _$_BuyUserForSaleListingModel>
    implements _$$_BuyUserForSaleListingModelCopyWith<$Res> {
  __$$_BuyUserForSaleListingModelCopyWithImpl(
      _$_BuyUserForSaleListingModel _value,
      $Res Function(_$_BuyUserForSaleListingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameBuyer = freezed,
    Object? avatarBuyer = freezed,
    Object? avatarBuyerUrl = freezed,
    Object? purchaseOrder = freezed,
    Object? address = freezed,
    Object? profilePeerToPeerPayment = freezed,
    Object? purchaseHistoryId = freezed,
  }) {
    return _then(_$_BuyUserForSaleListingModel(
      userNameBuyer: freezed == userNameBuyer
          ? _value.userNameBuyer
          : userNameBuyer // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarBuyer: freezed == avatarBuyer
          ? _value.avatarBuyer
          : avatarBuyer // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarBuyerUrl: freezed == avatarBuyerUrl
          ? _value.avatarBuyerUrl
          : avatarBuyerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseOrder: freezed == purchaseOrder
          ? _value.purchaseOrder
          : purchaseOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressesPayloadModel?,
      profilePeerToPeerPayment: freezed == profilePeerToPeerPayment
          ? _value.profilePeerToPeerPayment
          : profilePeerToPeerPayment // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
      purchaseHistoryId: freezed == purchaseHistoryId
          ? _value.purchaseHistoryId
          : purchaseHistoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_BuyUserForSaleListingModel implements _BuyUserForSaleListingModel {
  const _$_BuyUserForSaleListingModel(
      {this.userNameBuyer,
      this.avatarBuyer,
      this.avatarBuyerUrl,
      this.purchaseOrder,
      this.address,
      this.profilePeerToPeerPayment,
      this.purchaseHistoryId});

  factory _$_BuyUserForSaleListingModel.fromJson(Map<String, dynamic> json) =>
      _$$_BuyUserForSaleListingModelFromJson(json);

  @override
  final String? userNameBuyer;
  @override
  final String? avatarBuyer;
  @override
  final String? avatarBuyerUrl;
  @override
  final int? purchaseOrder;
  @override
  final AddressesPayloadModel? address;
  @override
  final PeerToPeerPaymentsModel? profilePeerToPeerPayment;
  @override
  final String? purchaseHistoryId;

  @override
  String toString() {
    return 'BuyUserForSaleListingModel(userNameBuyer: $userNameBuyer, avatarBuyer: $avatarBuyer, avatarBuyerUrl: $avatarBuyerUrl, purchaseOrder: $purchaseOrder, address: $address, profilePeerToPeerPayment: $profilePeerToPeerPayment, purchaseHistoryId: $purchaseHistoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyUserForSaleListingModel &&
            (identical(other.userNameBuyer, userNameBuyer) ||
                other.userNameBuyer == userNameBuyer) &&
            (identical(other.avatarBuyer, avatarBuyer) ||
                other.avatarBuyer == avatarBuyer) &&
            (identical(other.avatarBuyerUrl, avatarBuyerUrl) ||
                other.avatarBuyerUrl == avatarBuyerUrl) &&
            (identical(other.purchaseOrder, purchaseOrder) ||
                other.purchaseOrder == purchaseOrder) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(
                    other.profilePeerToPeerPayment, profilePeerToPeerPayment) ||
                other.profilePeerToPeerPayment == profilePeerToPeerPayment) &&
            (identical(other.purchaseHistoryId, purchaseHistoryId) ||
                other.purchaseHistoryId == purchaseHistoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userNameBuyer,
      avatarBuyer,
      avatarBuyerUrl,
      purchaseOrder,
      address,
      profilePeerToPeerPayment,
      purchaseHistoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyUserForSaleListingModelCopyWith<_$_BuyUserForSaleListingModel>
      get copyWith => __$$_BuyUserForSaleListingModelCopyWithImpl<
          _$_BuyUserForSaleListingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyUserForSaleListingModelToJson(
      this,
    );
  }
}

abstract class _BuyUserForSaleListingModel
    implements BuyUserForSaleListingModel {
  const factory _BuyUserForSaleListingModel(
      {final String? userNameBuyer,
      final String? avatarBuyer,
      final String? avatarBuyerUrl,
      final int? purchaseOrder,
      final AddressesPayloadModel? address,
      final PeerToPeerPaymentsModel? profilePeerToPeerPayment,
      final String? purchaseHistoryId}) = _$_BuyUserForSaleListingModel;

  factory _BuyUserForSaleListingModel.fromJson(Map<String, dynamic> json) =
      _$_BuyUserForSaleListingModel.fromJson;

  @override
  String? get userNameBuyer;
  @override
  String? get avatarBuyer;
  @override
  String? get avatarBuyerUrl;
  @override
  int? get purchaseOrder;
  @override
  AddressesPayloadModel? get address;
  @override
  PeerToPeerPaymentsModel? get profilePeerToPeerPayment;
  @override
  String? get purchaseHistoryId;
  @override
  @JsonKey(ignore: true)
  _$$_BuyUserForSaleListingModelCopyWith<_$_BuyUserForSaleListingModel>
      get copyWith => throw _privateConstructorUsedError;
}
