// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nft_wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NftWalletState {
  AsyncValue<List<NftWalletModel>> get wallets =>
      throw _privateConstructorUsedError;
  AsyncOperation<NftWalletModel> get creatingWallet =>
      throw _privateConstructorUsedError;
  AsyncOperation<NftWalletModel> get verifyingWallet =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NftWalletStateCopyWith<NftWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftWalletStateCopyWith<$Res> {
  factory $NftWalletStateCopyWith(
          NftWalletState value, $Res Function(NftWalletState) then) =
      _$NftWalletStateCopyWithImpl<$Res, NftWalletState>;
  @useResult
  $Res call(
      {AsyncValue<List<NftWalletModel>> wallets,
      AsyncOperation<NftWalletModel> creatingWallet,
      AsyncOperation<NftWalletModel> verifyingWallet});

  $AsyncValueCopyWith<List<NftWalletModel>, $Res> get wallets;
  $AsyncOperationCopyWith<NftWalletModel, $Res> get creatingWallet;
  $AsyncOperationCopyWith<NftWalletModel, $Res> get verifyingWallet;
}

/// @nodoc
class _$NftWalletStateCopyWithImpl<$Res, $Val extends NftWalletState>
    implements $NftWalletStateCopyWith<$Res> {
  _$NftWalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
    Object? creatingWallet = null,
    Object? verifyingWallet = null,
  }) {
    return _then(_value.copyWith(
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<NftWalletModel>>,
      creatingWallet: null == creatingWallet
          ? _value.creatingWallet
          : creatingWallet // ignore: cast_nullable_to_non_nullable
              as AsyncOperation<NftWalletModel>,
      verifyingWallet: null == verifyingWallet
          ? _value.verifyingWallet
          : verifyingWallet // ignore: cast_nullable_to_non_nullable
              as AsyncOperation<NftWalletModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<List<NftWalletModel>, $Res> get wallets {
    return $AsyncValueCopyWith<List<NftWalletModel>, $Res>(_value.wallets,
        (value) {
      return _then(_value.copyWith(wallets: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncOperationCopyWith<NftWalletModel, $Res> get creatingWallet {
    return $AsyncOperationCopyWith<NftWalletModel, $Res>(_value.creatingWallet,
        (value) {
      return _then(_value.copyWith(creatingWallet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncOperationCopyWith<NftWalletModel, $Res> get verifyingWallet {
    return $AsyncOperationCopyWith<NftWalletModel, $Res>(_value.verifyingWallet,
        (value) {
      return _then(_value.copyWith(verifyingWallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NftWalletStateCopyWith<$Res>
    implements $NftWalletStateCopyWith<$Res> {
  factory _$$_NftWalletStateCopyWith(
          _$_NftWalletState value, $Res Function(_$_NftWalletState) then) =
      __$$_NftWalletStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<List<NftWalletModel>> wallets,
      AsyncOperation<NftWalletModel> creatingWallet,
      AsyncOperation<NftWalletModel> verifyingWallet});

  @override
  $AsyncValueCopyWith<List<NftWalletModel>, $Res> get wallets;
  @override
  $AsyncOperationCopyWith<NftWalletModel, $Res> get creatingWallet;
  @override
  $AsyncOperationCopyWith<NftWalletModel, $Res> get verifyingWallet;
}

/// @nodoc
class __$$_NftWalletStateCopyWithImpl<$Res>
    extends _$NftWalletStateCopyWithImpl<$Res, _$_NftWalletState>
    implements _$$_NftWalletStateCopyWith<$Res> {
  __$$_NftWalletStateCopyWithImpl(
      _$_NftWalletState _value, $Res Function(_$_NftWalletState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
    Object? creatingWallet = null,
    Object? verifyingWallet = null,
  }) {
    return _then(_$_NftWalletState(
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<NftWalletModel>>,
      creatingWallet: null == creatingWallet
          ? _value.creatingWallet
          : creatingWallet // ignore: cast_nullable_to_non_nullable
              as AsyncOperation<NftWalletModel>,
      verifyingWallet: null == verifyingWallet
          ? _value.verifyingWallet
          : verifyingWallet // ignore: cast_nullable_to_non_nullable
              as AsyncOperation<NftWalletModel>,
    ));
  }
}

/// @nodoc

class _$_NftWalletState implements _NftWalletState {
  const _$_NftWalletState(
      {this.wallets = const NftWalletsAsyncValue.loading(),
      this.creatingWallet = const AsyncOperation.idle(),
      this.verifyingWallet = const AsyncOperation.idle()});

  @override
  @JsonKey()
  final AsyncValue<List<NftWalletModel>> wallets;
  @override
  @JsonKey()
  final AsyncOperation<NftWalletModel> creatingWallet;
  @override
  @JsonKey()
  final AsyncOperation<NftWalletModel> verifyingWallet;

  @override
  String toString() {
    return 'NftWalletState(wallets: $wallets, creatingWallet: $creatingWallet, verifyingWallet: $verifyingWallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NftWalletState &&
            (identical(other.wallets, wallets) || other.wallets == wallets) &&
            (identical(other.creatingWallet, creatingWallet) ||
                other.creatingWallet == creatingWallet) &&
            (identical(other.verifyingWallet, verifyingWallet) ||
                other.verifyingWallet == verifyingWallet));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, wallets, creatingWallet, verifyingWallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NftWalletStateCopyWith<_$_NftWalletState> get copyWith =>
      __$$_NftWalletStateCopyWithImpl<_$_NftWalletState>(this, _$identity);
}

abstract class _NftWalletState implements NftWalletState {
  const factory _NftWalletState(
          {final AsyncValue<List<NftWalletModel>> wallets,
          final AsyncOperation<NftWalletModel> creatingWallet,
          final AsyncOperation<NftWalletModel> verifyingWallet}) =
      _$_NftWalletState;

  @override
  AsyncValue<List<NftWalletModel>> get wallets;
  @override
  AsyncOperation<NftWalletModel> get creatingWallet;
  @override
  AsyncOperation<NftWalletModel> get verifyingWallet;
  @override
  @JsonKey(ignore: true)
  _$$_NftWalletStateCopyWith<_$_NftWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
