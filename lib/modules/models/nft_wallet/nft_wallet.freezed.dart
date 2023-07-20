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
  String get nftWalletId => throw _privateConstructorUsedError;
  String get nftWallet => throw _privateConstructorUsedError;
  String? get accountProfileId => throw _privateConstructorUsedError;
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
      {String nftWalletId,
      String nftWallet,
      String? accountProfileId,
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
    Object? nftWalletId = null,
    Object? nftWallet = null,
    Object? accountProfileId = freezed,
    Object? accountId = null,
  }) {
    return _then(_value.copyWith(
      nftWalletId: null == nftWalletId
          ? _value.nftWalletId
          : nftWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      nftWallet: null == nftWallet
          ? _value.nftWallet
          : nftWallet // ignore: cast_nullable_to_non_nullable
              as String,
      accountProfileId: freezed == accountProfileId
          ? _value.accountProfileId
          : accountProfileId // ignore: cast_nullable_to_non_nullable
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
      {String nftWalletId,
      String nftWallet,
      String? accountProfileId,
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
    Object? nftWalletId = null,
    Object? nftWallet = null,
    Object? accountProfileId = freezed,
    Object? accountId = null,
  }) {
    return _then(_$_NftWalletModel(
      nftWalletId: null == nftWalletId
          ? _value.nftWalletId
          : nftWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      nftWallet: null == nftWallet
          ? _value.nftWallet
          : nftWallet // ignore: cast_nullable_to_non_nullable
              as String,
      accountProfileId: freezed == accountProfileId
          ? _value.accountProfileId
          : accountProfileId // ignore: cast_nullable_to_non_nullable
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
      {required this.nftWalletId,
      required this.nftWallet,
      required this.accountProfileId,
      required this.accountId});

  factory _$_NftWalletModel.fromJson(Map<String, dynamic> json) =>
      _$$_NftWalletModelFromJson(json);

  @override
  final String nftWalletId;
  @override
  final String nftWallet;
  @override
  final String? accountProfileId;
  @override
  final String accountId;

  @override
  String toString() {
    return 'NftWalletModel(nftWalletId: $nftWalletId, nftWallet: $nftWallet, accountProfileId: $accountProfileId, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NftWalletModel &&
            (identical(other.nftWalletId, nftWalletId) ||
                other.nftWalletId == nftWalletId) &&
            (identical(other.nftWallet, nftWallet) ||
                other.nftWallet == nftWallet) &&
            (identical(other.accountProfileId, accountProfileId) ||
                other.accountProfileId == accountProfileId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nftWalletId, nftWallet, accountProfileId, accountId);

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
      {required final String nftWalletId,
      required final String nftWallet,
      required final String? accountProfileId,
      required final String accountId}) = _$_NftWalletModel;

  factory _NftWalletModel.fromJson(Map<String, dynamic> json) =
      _$_NftWalletModel.fromJson;

  @override
  String get nftWalletId;
  @override
  String get nftWallet;
  @override
  String? get accountProfileId;
  @override
  String get accountId;
  @override
  @JsonKey(ignore: true)
  _$$_NftWalletModelCopyWith<_$_NftWalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}
