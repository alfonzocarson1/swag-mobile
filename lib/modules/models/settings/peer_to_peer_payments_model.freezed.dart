// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peer_to_peer_payments_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeerToPeerPaymentsModel _$PeerToPeerPaymentsModelFromJson(
    Map<String, dynamic> json) {
  return _PeerToPeerPaymentsModel.fromJson(json);
}

/// @nodoc
mixin _$PeerToPeerPaymentsModel {
  String? get venmoUser => throw _privateConstructorUsedError;
  String? get cashTag => throw _privateConstructorUsedError;
  String? get payPalEmail => throw _privateConstructorUsedError;
  String? get accountProfilePeerToPeerPaymentId =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeerToPeerPaymentsModelCopyWith<PeerToPeerPaymentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeerToPeerPaymentsModelCopyWith<$Res> {
  factory $PeerToPeerPaymentsModelCopyWith(PeerToPeerPaymentsModel value,
          $Res Function(PeerToPeerPaymentsModel) then) =
      _$PeerToPeerPaymentsModelCopyWithImpl<$Res, PeerToPeerPaymentsModel>;
  @useResult
  $Res call(
      {String? venmoUser,
      String? cashTag,
      String? payPalEmail,
      String? accountProfilePeerToPeerPaymentId});
}

/// @nodoc
class _$PeerToPeerPaymentsModelCopyWithImpl<$Res,
        $Val extends PeerToPeerPaymentsModel>
    implements $PeerToPeerPaymentsModelCopyWith<$Res> {
  _$PeerToPeerPaymentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? venmoUser = freezed,
    Object? cashTag = freezed,
    Object? payPalEmail = freezed,
    Object? accountProfilePeerToPeerPaymentId = freezed,
  }) {
    return _then(_value.copyWith(
      venmoUser: freezed == venmoUser
          ? _value.venmoUser
          : venmoUser // ignore: cast_nullable_to_non_nullable
              as String?,
      cashTag: freezed == cashTag
          ? _value.cashTag
          : cashTag // ignore: cast_nullable_to_non_nullable
              as String?,
      payPalEmail: freezed == payPalEmail
          ? _value.payPalEmail
          : payPalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      accountProfilePeerToPeerPaymentId: freezed ==
              accountProfilePeerToPeerPaymentId
          ? _value.accountProfilePeerToPeerPaymentId
          : accountProfilePeerToPeerPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeerToPeerPaymentsModelCopyWith<$Res>
    implements $PeerToPeerPaymentsModelCopyWith<$Res> {
  factory _$$_PeerToPeerPaymentsModelCopyWith(_$_PeerToPeerPaymentsModel value,
          $Res Function(_$_PeerToPeerPaymentsModel) then) =
      __$$_PeerToPeerPaymentsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? venmoUser,
      String? cashTag,
      String? payPalEmail,
      String? accountProfilePeerToPeerPaymentId});
}

/// @nodoc
class __$$_PeerToPeerPaymentsModelCopyWithImpl<$Res>
    extends _$PeerToPeerPaymentsModelCopyWithImpl<$Res,
        _$_PeerToPeerPaymentsModel>
    implements _$$_PeerToPeerPaymentsModelCopyWith<$Res> {
  __$$_PeerToPeerPaymentsModelCopyWithImpl(_$_PeerToPeerPaymentsModel _value,
      $Res Function(_$_PeerToPeerPaymentsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? venmoUser = freezed,
    Object? cashTag = freezed,
    Object? payPalEmail = freezed,
    Object? accountProfilePeerToPeerPaymentId = freezed,
  }) {
    return _then(_$_PeerToPeerPaymentsModel(
      venmoUser: freezed == venmoUser
          ? _value.venmoUser
          : venmoUser // ignore: cast_nullable_to_non_nullable
              as String?,
      cashTag: freezed == cashTag
          ? _value.cashTag
          : cashTag // ignore: cast_nullable_to_non_nullable
              as String?,
      payPalEmail: freezed == payPalEmail
          ? _value.payPalEmail
          : payPalEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      accountProfilePeerToPeerPaymentId: freezed ==
              accountProfilePeerToPeerPaymentId
          ? _value.accountProfilePeerToPeerPaymentId
          : accountProfilePeerToPeerPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_PeerToPeerPaymentsModel implements _PeerToPeerPaymentsModel {
  const _$_PeerToPeerPaymentsModel(
      {this.venmoUser,
      this.cashTag,
      this.payPalEmail,
      this.accountProfilePeerToPeerPaymentId});

  factory _$_PeerToPeerPaymentsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PeerToPeerPaymentsModelFromJson(json);

  @override
  final String? venmoUser;
  @override
  final String? cashTag;
  @override
  final String? payPalEmail;
  @override
  final String? accountProfilePeerToPeerPaymentId;

  @override
  String toString() {
    return 'PeerToPeerPaymentsModel(venmoUser: $venmoUser, cashTag: $cashTag, payPalEmail: $payPalEmail, accountProfilePeerToPeerPaymentId: $accountProfilePeerToPeerPaymentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeerToPeerPaymentsModel &&
            (identical(other.venmoUser, venmoUser) ||
                other.venmoUser == venmoUser) &&
            (identical(other.cashTag, cashTag) || other.cashTag == cashTag) &&
            (identical(other.payPalEmail, payPalEmail) ||
                other.payPalEmail == payPalEmail) &&
            (identical(other.accountProfilePeerToPeerPaymentId,
                    accountProfilePeerToPeerPaymentId) ||
                other.accountProfilePeerToPeerPaymentId ==
                    accountProfilePeerToPeerPaymentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, venmoUser, cashTag, payPalEmail,
      accountProfilePeerToPeerPaymentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeerToPeerPaymentsModelCopyWith<_$_PeerToPeerPaymentsModel>
      get copyWith =>
          __$$_PeerToPeerPaymentsModelCopyWithImpl<_$_PeerToPeerPaymentsModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeerToPeerPaymentsModelToJson(
      this,
    );
  }
}

abstract class _PeerToPeerPaymentsModel implements PeerToPeerPaymentsModel {
  const factory _PeerToPeerPaymentsModel(
          {final String? venmoUser,
          final String? cashTag,
          final String? payPalEmail,
          final String? accountProfilePeerToPeerPaymentId}) =
      _$_PeerToPeerPaymentsModel;

  factory _PeerToPeerPaymentsModel.fromJson(Map<String, dynamic> json) =
      _$_PeerToPeerPaymentsModel.fromJson;

  @override
  String? get venmoUser;
  @override
  String? get cashTag;
  @override
  String? get payPalEmail;
  @override
  String? get accountProfilePeerToPeerPaymentId;
  @override
  @JsonKey(ignore: true)
  _$$_PeerToPeerPaymentsModelCopyWith<_$_PeerToPeerPaymentsModel>
      get copyWith => throw _privateConstructorUsedError;
}
