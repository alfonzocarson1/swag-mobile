// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_change_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaywallSubscriptionRequest _$PaywallSubscriptionRequestFromJson(
    Map<String, dynamic> json) {
  return _PaywallSubscriptionRequest.fromJson(json);
}

/// @nodoc
mixin _$PaywallSubscriptionRequest {
  String get accountId => throw _privateConstructorUsedError;
  String get transactionID => throw _privateConstructorUsedError;
  String get deviceType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaywallSubscriptionRequestCopyWith<PaywallSubscriptionRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaywallSubscriptionRequestCopyWith<$Res> {
  factory $PaywallSubscriptionRequestCopyWith(PaywallSubscriptionRequest value,
          $Res Function(PaywallSubscriptionRequest) then) =
      _$PaywallSubscriptionRequestCopyWithImpl<$Res,
          PaywallSubscriptionRequest>;
  @useResult
  $Res call({String accountId, String transactionID, String deviceType});
}

/// @nodoc
class _$PaywallSubscriptionRequestCopyWithImpl<$Res,
        $Val extends PaywallSubscriptionRequest>
    implements $PaywallSubscriptionRequestCopyWith<$Res> {
  _$PaywallSubscriptionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? transactionID = null,
    Object? deviceType = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionID: null == transactionID
          ? _value.transactionID
          : transactionID // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaywallSubscriptionRequestCopyWith<$Res>
    implements $PaywallSubscriptionRequestCopyWith<$Res> {
  factory _$$_PaywallSubscriptionRequestCopyWith(
          _$_PaywallSubscriptionRequest value,
          $Res Function(_$_PaywallSubscriptionRequest) then) =
      __$$_PaywallSubscriptionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accountId, String transactionID, String deviceType});
}

/// @nodoc
class __$$_PaywallSubscriptionRequestCopyWithImpl<$Res>
    extends _$PaywallSubscriptionRequestCopyWithImpl<$Res,
        _$_PaywallSubscriptionRequest>
    implements _$$_PaywallSubscriptionRequestCopyWith<$Res> {
  __$$_PaywallSubscriptionRequestCopyWithImpl(
      _$_PaywallSubscriptionRequest _value,
      $Res Function(_$_PaywallSubscriptionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? transactionID = null,
    Object? deviceType = null,
  }) {
    return _then(_$_PaywallSubscriptionRequest(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionID: null == transactionID
          ? _value.transactionID
          : transactionID // ignore: cast_nullable_to_non_nullable
              as String,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PaywallSubscriptionRequest implements _PaywallSubscriptionRequest {
  const _$_PaywallSubscriptionRequest(
      {required this.accountId,
      required this.transactionID,
      required this.deviceType});

  factory _$_PaywallSubscriptionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PaywallSubscriptionRequestFromJson(json);

  @override
  final String accountId;
  @override
  final String transactionID;
  @override
  final String deviceType;

  @override
  String toString() {
    return 'PaywallSubscriptionRequest(accountId: $accountId, transactionID: $transactionID, deviceType: $deviceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaywallSubscriptionRequest &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.transactionID, transactionID) ||
                other.transactionID == transactionID) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, transactionID, deviceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaywallSubscriptionRequestCopyWith<_$_PaywallSubscriptionRequest>
      get copyWith => __$$_PaywallSubscriptionRequestCopyWithImpl<
          _$_PaywallSubscriptionRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaywallSubscriptionRequestToJson(
      this,
    );
  }
}

abstract class _PaywallSubscriptionRequest
    implements PaywallSubscriptionRequest {
  const factory _PaywallSubscriptionRequest(
      {required final String accountId,
      required final String transactionID,
      required final String deviceType}) = _$_PaywallSubscriptionRequest;

  factory _PaywallSubscriptionRequest.fromJson(Map<String, dynamic> json) =
      _$_PaywallSubscriptionRequest.fromJson;

  @override
  String get accountId;
  @override
  String get transactionID;
  @override
  String get deviceType;
  @override
  @JsonKey(ignore: true)
  _$$_PaywallSubscriptionRequestCopyWith<_$_PaywallSubscriptionRequest>
      get copyWith => throw _privateConstructorUsedError;
}
