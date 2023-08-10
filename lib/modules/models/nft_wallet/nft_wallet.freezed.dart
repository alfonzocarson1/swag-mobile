// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NftWalletModel _$NftWalletModelFromJson(Map<String, dynamic> json) {
  return _NftWalletModel.fromJson(json);
}

/// @nodoc
mixin _$NftWalletModel {
  String get walletAddress => throw _privateConstructorUsedError;
  bool? get confirmed => throw _privateConstructorUsedError;
  String? get verificationCode => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NftWalletModelCopyWith<NftWalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftWalletModelCopyWith<$Res> {
  factory $NftWalletModelCopyWith(
          NftWalletModel value, $Res Function(NftWalletModel) then) =
      _$NftWalletModelCopyWithImpl<$Res, NftWalletModel>;
  @useResult
  $Res call(
      {String walletAddress,
      bool? confirmed,
      String? verificationCode,
      String accountId});
}

/// @nodoc
class _$NftWalletModelCopyWithImpl<$Res, $Val extends NftWalletModel>
    implements $NftWalletModelCopyWith<$Res> {
  _$NftWalletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? confirmed = freezed,
    Object? verificationCode = freezed,
    Object? accountId = null,
  }) {
    return _then(_value.copyWith(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NftWalletModelCopyWith<$Res>
    implements $NftWalletModelCopyWith<$Res> {
  factory _$$_NftWalletModelCopyWith(
          _$_NftWalletModel value, $Res Function(_$_NftWalletModel) then) =
      __$$_NftWalletModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletAddress,
      bool? confirmed,
      String? verificationCode,
      String accountId});
}

/// @nodoc
class __$$_NftWalletModelCopyWithImpl<$Res>
    extends _$NftWalletModelCopyWithImpl<$Res, _$_NftWalletModel>
    implements _$$_NftWalletModelCopyWith<$Res> {
  __$$_NftWalletModelCopyWithImpl(
      _$_NftWalletModel _value, $Res Function(_$_NftWalletModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? confirmed = freezed,
    Object? verificationCode = freezed,
    Object? accountId = null,
  }) {
    return _then(_$_NftWalletModel(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationCode: freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NftWalletModel implements _NftWalletModel {
  const _$_NftWalletModel(
      {required this.walletAddress,
      required this.confirmed,
      required this.verificationCode,
      required this.accountId});

  factory _$_NftWalletModel.fromJson(Map<String, dynamic> json) =>
      _$$_NftWalletModelFromJson(json);

  @override
  final String walletAddress;
  @override
  final bool? confirmed;
  @override
  final String? verificationCode;
  @override
  final String accountId;

  @override
  String toString() {
    return 'NftWalletModel(walletAddress: $walletAddress, confirmed: $confirmed, verificationCode: $verificationCode, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NftWalletModel &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, walletAddress, confirmed, verificationCode, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NftWalletModelCopyWith<_$_NftWalletModel> get copyWith =>
      __$$_NftWalletModelCopyWithImpl<_$_NftWalletModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NftWalletModelToJson(
      this,
    );
  }
}

abstract class _NftWalletModel implements NftWalletModel {
  const factory _NftWalletModel(
      {required final String walletAddress,
      required final bool? confirmed,
      required final String? verificationCode,
      required final String accountId}) = _$_NftWalletModel;

  factory _NftWalletModel.fromJson(Map<String, dynamic> json) =
      _$_NftWalletModel.fromJson;

  @override
  String get walletAddress;
  @override
  bool? get confirmed;
  @override
  String? get verificationCode;
  @override
  String get accountId;
  @override
  @JsonKey(ignore: true)
  _$$_NftWalletModelCopyWith<_$_NftWalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}
