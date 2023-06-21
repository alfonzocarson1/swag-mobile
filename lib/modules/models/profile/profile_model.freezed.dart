// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String get accountId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get useAvatar => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  double get listingsRating => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<AddressesPayloadModel>? get addresses =>
      throw _privateConstructorUsedError;
  double get collectionValue => throw _privateConstructorUsedError;
  bool get accountVerified => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  bool? get hasActiveSubscription => throw _privateConstructorUsedError;
  bool? get hasUsedFreeTrial => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {String accountId,
      String username,
      String useAvatar,
      String? avatarUrl,
      double listingsRating,
      String phoneNumber,
      String email,
      List<AddressesPayloadModel>? addresses,
      double collectionValue,
      bool accountVerified,
      bool emailVerified,
      bool? hasActiveSubscription,
      bool? hasUsedFreeTrial});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? username = null,
    Object? useAvatar = null,
    Object? avatarUrl = freezed,
    Object? listingsRating = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? addresses = freezed,
    Object? collectionValue = null,
    Object? accountVerified = null,
    Object? emailVerified = null,
    Object? hasActiveSubscription = freezed,
    Object? hasUsedFreeTrial = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      useAvatar: null == useAvatar
          ? _value.useAvatar
          : useAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      listingsRating: null == listingsRating
          ? _value.listingsRating
          : listingsRating // ignore: cast_nullable_to_non_nullable
              as double,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressesPayloadModel>?,
      collectionValue: null == collectionValue
          ? _value.collectionValue
          : collectionValue // ignore: cast_nullable_to_non_nullable
              as double,
      accountVerified: null == accountVerified
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      hasActiveSubscription: freezed == hasActiveSubscription
          ? _value.hasActiveSubscription
          : hasActiveSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasUsedFreeTrial: freezed == hasUsedFreeTrial
          ? _value.hasUsedFreeTrial
          : hasUsedFreeTrial // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$_ProfileModelCopyWith(
          _$_ProfileModel value, $Res Function(_$_ProfileModel) then) =
      __$$_ProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountId,
      String username,
      String useAvatar,
      String? avatarUrl,
      double listingsRating,
      String phoneNumber,
      String email,
      List<AddressesPayloadModel>? addresses,
      double collectionValue,
      bool accountVerified,
      bool emailVerified,
      bool? hasActiveSubscription,
      bool? hasUsedFreeTrial});
}

/// @nodoc
class __$$_ProfileModelCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$_ProfileModel>
    implements _$$_ProfileModelCopyWith<$Res> {
  __$$_ProfileModelCopyWithImpl(
      _$_ProfileModel _value, $Res Function(_$_ProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? username = null,
    Object? useAvatar = null,
    Object? avatarUrl = freezed,
    Object? listingsRating = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? addresses = freezed,
    Object? collectionValue = null,
    Object? accountVerified = null,
    Object? emailVerified = null,
    Object? hasActiveSubscription = freezed,
    Object? hasUsedFreeTrial = freezed,
  }) {
    return _then(_$_ProfileModel(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      useAvatar: null == useAvatar
          ? _value.useAvatar
          : useAvatar // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      listingsRating: null == listingsRating
          ? _value.listingsRating
          : listingsRating // ignore: cast_nullable_to_non_nullable
              as double,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressesPayloadModel>?,
      collectionValue: null == collectionValue
          ? _value.collectionValue
          : collectionValue // ignore: cast_nullable_to_non_nullable
              as double,
      accountVerified: null == accountVerified
          ? _value.accountVerified
          : accountVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      hasActiveSubscription: freezed == hasActiveSubscription
          ? _value.hasActiveSubscription
          : hasActiveSubscription // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasUsedFreeTrial: freezed == hasUsedFreeTrial
          ? _value.hasUsedFreeTrial
          : hasUsedFreeTrial // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ProfileModel implements _ProfileModel {
  const _$_ProfileModel(
      {required this.accountId,
      required this.username,
      required this.useAvatar,
      this.avatarUrl,
      required this.listingsRating,
      required this.phoneNumber,
      required this.email,
      final List<AddressesPayloadModel>? addresses,
      required this.collectionValue,
      required this.accountVerified,
      required this.emailVerified,
      this.hasActiveSubscription,
      this.hasUsedFreeTrial})
      : _addresses = addresses;

  factory _$_ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileModelFromJson(json);

  @override
  final String accountId;
  @override
  final String username;
  @override
  final String useAvatar;
  @override
  final String? avatarUrl;
  @override
  final double listingsRating;
  @override
  final String phoneNumber;
  @override
  final String email;
  final List<AddressesPayloadModel>? _addresses;
  @override
  List<AddressesPayloadModel>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double collectionValue;
  @override
  final bool accountVerified;
  @override
  final bool emailVerified;
  @override
  final bool? hasActiveSubscription;
  @override
  final bool? hasUsedFreeTrial;

  @override
  String toString() {
    return 'ProfileModel(accountId: $accountId, username: $username, useAvatar: $useAvatar, avatarUrl: $avatarUrl, listingsRating: $listingsRating, phoneNumber: $phoneNumber, email: $email, addresses: $addresses, collectionValue: $collectionValue, accountVerified: $accountVerified, emailVerified: $emailVerified, hasActiveSubscription: $hasActiveSubscription, hasUsedFreeTrial: $hasUsedFreeTrial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileModel &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.useAvatar, useAvatar) ||
                other.useAvatar == useAvatar) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.listingsRating, listingsRating) ||
                other.listingsRating == listingsRating) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            (identical(other.collectionValue, collectionValue) ||
                other.collectionValue == collectionValue) &&
            (identical(other.accountVerified, accountVerified) ||
                other.accountVerified == accountVerified) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.hasActiveSubscription, hasActiveSubscription) ||
                other.hasActiveSubscription == hasActiveSubscription) &&
            (identical(other.hasUsedFreeTrial, hasUsedFreeTrial) ||
                other.hasUsedFreeTrial == hasUsedFreeTrial));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountId,
      username,
      useAvatar,
      avatarUrl,
      listingsRating,
      phoneNumber,
      email,
      const DeepCollectionEquality().hash(_addresses),
      collectionValue,
      accountVerified,
      emailVerified,
      hasActiveSubscription,
      hasUsedFreeTrial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      __$$_ProfileModelCopyWithImpl<_$_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileModelToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required final String accountId,
      required final String username,
      required final String useAvatar,
      final String? avatarUrl,
      required final double listingsRating,
      required final String phoneNumber,
      required final String email,
      final List<AddressesPayloadModel>? addresses,
      required final double collectionValue,
      required final bool accountVerified,
      required final bool emailVerified,
      final bool? hasActiveSubscription,
      final bool? hasUsedFreeTrial}) = _$_ProfileModel;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileModel.fromJson;

  @override
  String get accountId;
  @override
  String get username;
  @override
  String get useAvatar;
  @override
  String? get avatarUrl;
  @override
  double get listingsRating;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  List<AddressesPayloadModel>? get addresses;
  @override
  double get collectionValue;
  @override
  bool get accountVerified;
  @override
  bool get emailVerified;
  @override
  bool? get hasActiveSubscription;
  @override
  bool? get hasUsedFreeTrial;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileModelCopyWith<_$_ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
