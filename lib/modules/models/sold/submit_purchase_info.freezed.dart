// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_purchase_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubmitPurchaseInfo _$SubmitPurchaseInfoFromJson(Map<String, dynamic> json) {
  return _SubmitPurchaseInfo.fromJson(json);
}

/// @nodoc
mixin _$SubmitPurchaseInfo {
  String? get buyerAccountId => throw _privateConstructorUsedError;
  String? get userNameBuyer => throw _privateConstructorUsedError;
  String? get avatarBuyer => throw _privateConstructorUsedError;
  String? get avatarBuyerUrl => throw _privateConstructorUsedError;
  AddressesPayloadModel? get address => throw _privateConstructorUsedError;
  PeerToPeerPaymentsModel? get profilePeerToPeerPayment =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmitPurchaseInfoCopyWith<SubmitPurchaseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitPurchaseInfoCopyWith<$Res> {
  factory $SubmitPurchaseInfoCopyWith(
          SubmitPurchaseInfo value, $Res Function(SubmitPurchaseInfo) then) =
      _$SubmitPurchaseInfoCopyWithImpl<$Res, SubmitPurchaseInfo>;
  @useResult
  $Res call(
      {String? buyerAccountId,
      String? userNameBuyer,
      String? avatarBuyer,
      String? avatarBuyerUrl,
      AddressesPayloadModel? address,
      PeerToPeerPaymentsModel? profilePeerToPeerPayment});

  $AddressesPayloadModelCopyWith<$Res>? get address;
  $PeerToPeerPaymentsModelCopyWith<$Res>? get profilePeerToPeerPayment;
}

/// @nodoc
class _$SubmitPurchaseInfoCopyWithImpl<$Res, $Val extends SubmitPurchaseInfo>
    implements $SubmitPurchaseInfoCopyWith<$Res> {
  _$SubmitPurchaseInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyerAccountId = freezed,
    Object? userNameBuyer = freezed,
    Object? avatarBuyer = freezed,
    Object? avatarBuyerUrl = freezed,
    Object? address = freezed,
    Object? profilePeerToPeerPayment = freezed,
  }) {
    return _then(_value.copyWith(
      buyerAccountId: freezed == buyerAccountId
          ? _value.buyerAccountId
          : buyerAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressesPayloadModel?,
      profilePeerToPeerPayment: freezed == profilePeerToPeerPayment
          ? _value.profilePeerToPeerPayment
          : profilePeerToPeerPayment // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
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
abstract class _$$_SubmitPurchaseInfoCopyWith<$Res>
    implements $SubmitPurchaseInfoCopyWith<$Res> {
  factory _$$_SubmitPurchaseInfoCopyWith(_$_SubmitPurchaseInfo value,
          $Res Function(_$_SubmitPurchaseInfo) then) =
      __$$_SubmitPurchaseInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? buyerAccountId,
      String? userNameBuyer,
      String? avatarBuyer,
      String? avatarBuyerUrl,
      AddressesPayloadModel? address,
      PeerToPeerPaymentsModel? profilePeerToPeerPayment});

  @override
  $AddressesPayloadModelCopyWith<$Res>? get address;
  @override
  $PeerToPeerPaymentsModelCopyWith<$Res>? get profilePeerToPeerPayment;
}

/// @nodoc
class __$$_SubmitPurchaseInfoCopyWithImpl<$Res>
    extends _$SubmitPurchaseInfoCopyWithImpl<$Res, _$_SubmitPurchaseInfo>
    implements _$$_SubmitPurchaseInfoCopyWith<$Res> {
  __$$_SubmitPurchaseInfoCopyWithImpl(
      _$_SubmitPurchaseInfo _value, $Res Function(_$_SubmitPurchaseInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyerAccountId = freezed,
    Object? userNameBuyer = freezed,
    Object? avatarBuyer = freezed,
    Object? avatarBuyerUrl = freezed,
    Object? address = freezed,
    Object? profilePeerToPeerPayment = freezed,
  }) {
    return _then(_$_SubmitPurchaseInfo(
      buyerAccountId: freezed == buyerAccountId
          ? _value.buyerAccountId
          : buyerAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressesPayloadModel?,
      profilePeerToPeerPayment: freezed == profilePeerToPeerPayment
          ? _value.profilePeerToPeerPayment
          : profilePeerToPeerPayment // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubmitPurchaseInfo implements _SubmitPurchaseInfo {
  const _$_SubmitPurchaseInfo(
      {this.buyerAccountId,
      this.userNameBuyer,
      this.avatarBuyer,
      this.avatarBuyerUrl,
      this.address,
      this.profilePeerToPeerPayment});

  factory _$_SubmitPurchaseInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SubmitPurchaseInfoFromJson(json);

  @override
  final String? buyerAccountId;
  @override
  final String? userNameBuyer;
  @override
  final String? avatarBuyer;
  @override
  final String? avatarBuyerUrl;
  @override
  final AddressesPayloadModel? address;
  @override
  final PeerToPeerPaymentsModel? profilePeerToPeerPayment;

  @override
  String toString() {
    return 'SubmitPurchaseInfo(buyerAccountId: $buyerAccountId, userNameBuyer: $userNameBuyer, avatarBuyer: $avatarBuyer, avatarBuyerUrl: $avatarBuyerUrl, address: $address, profilePeerToPeerPayment: $profilePeerToPeerPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitPurchaseInfo &&
            (identical(other.buyerAccountId, buyerAccountId) ||
                other.buyerAccountId == buyerAccountId) &&
            (identical(other.userNameBuyer, userNameBuyer) ||
                other.userNameBuyer == userNameBuyer) &&
            (identical(other.avatarBuyer, avatarBuyer) ||
                other.avatarBuyer == avatarBuyer) &&
            (identical(other.avatarBuyerUrl, avatarBuyerUrl) ||
                other.avatarBuyerUrl == avatarBuyerUrl) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(
                    other.profilePeerToPeerPayment, profilePeerToPeerPayment) ||
                other.profilePeerToPeerPayment == profilePeerToPeerPayment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, buyerAccountId, userNameBuyer,
      avatarBuyer, avatarBuyerUrl, address, profilePeerToPeerPayment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitPurchaseInfoCopyWith<_$_SubmitPurchaseInfo> get copyWith =>
      __$$_SubmitPurchaseInfoCopyWithImpl<_$_SubmitPurchaseInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubmitPurchaseInfoToJson(
      this,
    );
  }
}

abstract class _SubmitPurchaseInfo implements SubmitPurchaseInfo {
  const factory _SubmitPurchaseInfo(
          {final String? buyerAccountId,
          final String? userNameBuyer,
          final String? avatarBuyer,
          final String? avatarBuyerUrl,
          final AddressesPayloadModel? address,
          final PeerToPeerPaymentsModel? profilePeerToPeerPayment}) =
      _$_SubmitPurchaseInfo;

  factory _SubmitPurchaseInfo.fromJson(Map<String, dynamic> json) =
      _$_SubmitPurchaseInfo.fromJson;

  @override
  String? get buyerAccountId;
  @override
  String? get userNameBuyer;
  @override
  String? get avatarBuyer;
  @override
  String? get avatarBuyerUrl;
  @override
  AddressesPayloadModel? get address;
  @override
  PeerToPeerPaymentsModel? get profilePeerToPeerPayment;
  @override
  @JsonKey(ignore: true)
  _$$_SubmitPurchaseInfoCopyWith<_$_SubmitPurchaseInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
