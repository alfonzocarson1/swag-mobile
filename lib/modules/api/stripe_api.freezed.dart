// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stripe_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardTokenRequest _$CardTokenRequestFromJson(Map<String, dynamic> json) {
  return _CardTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$CardTokenRequest {
  @JsonKey(name: "card[exp_month]")
  String get expMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "card[exp_year]")
  String get expYear => throw _privateConstructorUsedError;
  @JsonKey(name: "card[number]")
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: "card[cvc]")
  String get cvc => throw _privateConstructorUsedError;
  @JsonKey(name: "card[name]")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "card[address_line1]")
  String? get addressLine1 => throw _privateConstructorUsedError;
  @JsonKey(name: "card[address_line2]")
  String? get addressLine2 => throw _privateConstructorUsedError;
  @JsonKey(name: "card[address_city]")
  String? get addressCity => throw _privateConstructorUsedError;
  @JsonKey(name: "card[address_state]")
  String? get addressState => throw _privateConstructorUsedError;
  @JsonKey(name: "card[address_zip]")
  String? get addressZip => throw _privateConstructorUsedError;
  @JsonKey(name: "card[address_country]")
  String? get addressCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardTokenRequestCopyWith<CardTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardTokenRequestCopyWith<$Res> {
  factory $CardTokenRequestCopyWith(
          CardTokenRequest value, $Res Function(CardTokenRequest) then) =
      _$CardTokenRequestCopyWithImpl<$Res, CardTokenRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "card[exp_month]") String expMonth,
      @JsonKey(name: "card[exp_year]") String expYear,
      @JsonKey(name: "card[number]") String number,
      @JsonKey(name: "card[cvc]") String cvc,
      @JsonKey(name: "card[name]") String? name,
      @JsonKey(name: "card[address_line1]") String? addressLine1,
      @JsonKey(name: "card[address_line2]") String? addressLine2,
      @JsonKey(name: "card[address_city]") String? addressCity,
      @JsonKey(name: "card[address_state]") String? addressState,
      @JsonKey(name: "card[address_zip]") String? addressZip,
      @JsonKey(name: "card[address_country]") String? addressCountry});
}

/// @nodoc
class _$CardTokenRequestCopyWithImpl<$Res, $Val extends CardTokenRequest>
    implements $CardTokenRequestCopyWith<$Res> {
  _$CardTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expMonth = null,
    Object? expYear = null,
    Object? number = null,
    Object? cvc = null,
    Object? name = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? addressCity = freezed,
    Object? addressState = freezed,
    Object? addressZip = freezed,
    Object? addressCountry = freezed,
  }) {
    return _then(_value.copyWith(
      expMonth: null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _value.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as String?,
      addressState: freezed == addressState
          ? _value.addressState
          : addressState // ignore: cast_nullable_to_non_nullable
              as String?,
      addressZip: freezed == addressZip
          ? _value.addressZip
          : addressZip // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCountry: freezed == addressCountry
          ? _value.addressCountry
          : addressCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardTokenRequestCopyWith<$Res>
    implements $CardTokenRequestCopyWith<$Res> {
  factory _$$_CardTokenRequestCopyWith(
          _$_CardTokenRequest value, $Res Function(_$_CardTokenRequest) then) =
      __$$_CardTokenRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "card[exp_month]") String expMonth,
      @JsonKey(name: "card[exp_year]") String expYear,
      @JsonKey(name: "card[number]") String number,
      @JsonKey(name: "card[cvc]") String cvc,
      @JsonKey(name: "card[name]") String? name,
      @JsonKey(name: "card[address_line1]") String? addressLine1,
      @JsonKey(name: "card[address_line2]") String? addressLine2,
      @JsonKey(name: "card[address_city]") String? addressCity,
      @JsonKey(name: "card[address_state]") String? addressState,
      @JsonKey(name: "card[address_zip]") String? addressZip,
      @JsonKey(name: "card[address_country]") String? addressCountry});
}

/// @nodoc
class __$$_CardTokenRequestCopyWithImpl<$Res>
    extends _$CardTokenRequestCopyWithImpl<$Res, _$_CardTokenRequest>
    implements _$$_CardTokenRequestCopyWith<$Res> {
  __$$_CardTokenRequestCopyWithImpl(
      _$_CardTokenRequest _value, $Res Function(_$_CardTokenRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expMonth = null,
    Object? expYear = null,
    Object? number = null,
    Object? cvc = null,
    Object? name = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? addressCity = freezed,
    Object? addressState = freezed,
    Object? addressZip = freezed,
    Object? addressCountry = freezed,
  }) {
    return _then(_$_CardTokenRequest(
      expMonth: null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as String,
      expYear: null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      cvc: null == cvc
          ? _value.cvc
          : cvc // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _value.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as String?,
      addressState: freezed == addressState
          ? _value.addressState
          : addressState // ignore: cast_nullable_to_non_nullable
              as String?,
      addressZip: freezed == addressZip
          ? _value.addressZip
          : addressZip // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCountry: freezed == addressCountry
          ? _value.addressCountry
          : addressCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardTokenRequest implements _CardTokenRequest {
  const _$_CardTokenRequest(
      {@JsonKey(name: "card[exp_month]") required this.expMonth,
      @JsonKey(name: "card[exp_year]") required this.expYear,
      @JsonKey(name: "card[number]") required this.number,
      @JsonKey(name: "card[cvc]") required this.cvc,
      @JsonKey(name: "card[name]") this.name,
      @JsonKey(name: "card[address_line1]") this.addressLine1,
      @JsonKey(name: "card[address_line2]") this.addressLine2,
      @JsonKey(name: "card[address_city]") this.addressCity,
      @JsonKey(name: "card[address_state]") this.addressState,
      @JsonKey(name: "card[address_zip]") this.addressZip,
      @JsonKey(name: "card[address_country]") this.addressCountry});

  factory _$_CardTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CardTokenRequestFromJson(json);

  @override
  @JsonKey(name: "card[exp_month]")
  final String expMonth;
  @override
  @JsonKey(name: "card[exp_year]")
  final String expYear;
  @override
  @JsonKey(name: "card[number]")
  final String number;
  @override
  @JsonKey(name: "card[cvc]")
  final String cvc;
  @override
  @JsonKey(name: "card[name]")
  final String? name;
  @override
  @JsonKey(name: "card[address_line1]")
  final String? addressLine1;
  @override
  @JsonKey(name: "card[address_line2]")
  final String? addressLine2;
  @override
  @JsonKey(name: "card[address_city]")
  final String? addressCity;
  @override
  @JsonKey(name: "card[address_state]")
  final String? addressState;
  @override
  @JsonKey(name: "card[address_zip]")
  final String? addressZip;
  @override
  @JsonKey(name: "card[address_country]")
  final String? addressCountry;

  @override
  String toString() {
    return 'CardTokenRequest(expMonth: $expMonth, expYear: $expYear, number: $number, cvc: $cvc, name: $name, addressLine1: $addressLine1, addressLine2: $addressLine2, addressCity: $addressCity, addressState: $addressState, addressZip: $addressZip, addressCountry: $addressCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardTokenRequest &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.cvc, cvc) || other.cvc == cvc) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.addressCity, addressCity) ||
                other.addressCity == addressCity) &&
            (identical(other.addressState, addressState) ||
                other.addressState == addressState) &&
            (identical(other.addressZip, addressZip) ||
                other.addressZip == addressZip) &&
            (identical(other.addressCountry, addressCountry) ||
                other.addressCountry == addressCountry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      expMonth,
      expYear,
      number,
      cvc,
      name,
      addressLine1,
      addressLine2,
      addressCity,
      addressState,
      addressZip,
      addressCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardTokenRequestCopyWith<_$_CardTokenRequest> get copyWith =>
      __$$_CardTokenRequestCopyWithImpl<_$_CardTokenRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardTokenRequestToJson(
      this,
    );
  }
}

abstract class _CardTokenRequest implements CardTokenRequest {
  const factory _CardTokenRequest(
      {@JsonKey(name: "card[exp_month]") required final String expMonth,
      @JsonKey(name: "card[exp_year]") required final String expYear,
      @JsonKey(name: "card[number]") required final String number,
      @JsonKey(name: "card[cvc]") required final String cvc,
      @JsonKey(name: "card[name]") final String? name,
      @JsonKey(name: "card[address_line1]") final String? addressLine1,
      @JsonKey(name: "card[address_line2]") final String? addressLine2,
      @JsonKey(name: "card[address_city]") final String? addressCity,
      @JsonKey(name: "card[address_state]") final String? addressState,
      @JsonKey(name: "card[address_zip]") final String? addressZip,
      @JsonKey(name: "card[address_country]")
      final String? addressCountry}) = _$_CardTokenRequest;

  factory _CardTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_CardTokenRequest.fromJson;

  @override
  @JsonKey(name: "card[exp_month]")
  String get expMonth;
  @override
  @JsonKey(name: "card[exp_year]")
  String get expYear;
  @override
  @JsonKey(name: "card[number]")
  String get number;
  @override
  @JsonKey(name: "card[cvc]")
  String get cvc;
  @override
  @JsonKey(name: "card[name]")
  String? get name;
  @override
  @JsonKey(name: "card[address_line1]")
  String? get addressLine1;
  @override
  @JsonKey(name: "card[address_line2]")
  String? get addressLine2;
  @override
  @JsonKey(name: "card[address_city]")
  String? get addressCity;
  @override
  @JsonKey(name: "card[address_state]")
  String? get addressState;
  @override
  @JsonKey(name: "card[address_zip]")
  String? get addressZip;
  @override
  @JsonKey(name: "card[address_country]")
  String? get addressCountry;
  @override
  @JsonKey(ignore: true)
  _$$_CardTokenRequestCopyWith<_$_CardTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

CardTokenResponse _$CardTokenResponseFromJson(Map<String, dynamic> json) {
  return _CardTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$CardTokenResponse {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardTokenResponseCopyWith<CardTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardTokenResponseCopyWith<$Res> {
  factory $CardTokenResponseCopyWith(
          CardTokenResponse value, $Res Function(CardTokenResponse) then) =
      _$CardTokenResponseCopyWithImpl<$Res, CardTokenResponse>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$CardTokenResponseCopyWithImpl<$Res, $Val extends CardTokenResponse>
    implements $CardTokenResponseCopyWith<$Res> {
  _$CardTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardTokenResponseCopyWith<$Res>
    implements $CardTokenResponseCopyWith<$Res> {
  factory _$$_CardTokenResponseCopyWith(_$_CardTokenResponse value,
          $Res Function(_$_CardTokenResponse) then) =
      __$$_CardTokenResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_CardTokenResponseCopyWithImpl<$Res>
    extends _$CardTokenResponseCopyWithImpl<$Res, _$_CardTokenResponse>
    implements _$$_CardTokenResponseCopyWith<$Res> {
  __$$_CardTokenResponseCopyWithImpl(
      _$_CardTokenResponse _value, $Res Function(_$_CardTokenResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_CardTokenResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardTokenResponse implements _CardTokenResponse {
  const _$_CardTokenResponse({required this.id});

  factory _$_CardTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CardTokenResponseFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'CardTokenResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardTokenResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardTokenResponseCopyWith<_$_CardTokenResponse> get copyWith =>
      __$$_CardTokenResponseCopyWithImpl<_$_CardTokenResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardTokenResponseToJson(
      this,
    );
  }
}

abstract class _CardTokenResponse implements CardTokenResponse {
  const factory _CardTokenResponse({required final String id}) =
      _$_CardTokenResponse;

  factory _CardTokenResponse.fromJson(Map<String, dynamic> json) =
      _$_CardTokenResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_CardTokenResponseCopyWith<_$_CardTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StripeError _$StripeErrorFromJson(Map<String, dynamic> json) {
  return _StripeError.fromJson(json);
}

/// @nodoc
mixin _$StripeError {
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StripeErrorCopyWith<StripeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StripeErrorCopyWith<$Res> {
  factory $StripeErrorCopyWith(
          StripeError value, $Res Function(StripeError) then) =
      _$StripeErrorCopyWithImpl<$Res, StripeError>;
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class _$StripeErrorCopyWithImpl<$Res, $Val extends StripeError>
    implements $StripeErrorCopyWith<$Res> {
  _$StripeErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StripeErrorCopyWith<$Res>
    implements $StripeErrorCopyWith<$Res> {
  factory _$$_StripeErrorCopyWith(
          _$_StripeError value, $Res Function(_$_StripeError) then) =
      __$$_StripeErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class __$$_StripeErrorCopyWithImpl<$Res>
    extends _$StripeErrorCopyWithImpl<$Res, _$_StripeError>
    implements _$$_StripeErrorCopyWith<$Res> {
  __$$_StripeErrorCopyWithImpl(
      _$_StripeError _value, $Res Function(_$_StripeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_StripeError(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StripeError implements _StripeError {
  const _$_StripeError({required this.code, required this.message});

  factory _$_StripeError.fromJson(Map<String, dynamic> json) =>
      _$$_StripeErrorFromJson(json);

  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'StripeError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StripeError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StripeErrorCopyWith<_$_StripeError> get copyWith =>
      __$$_StripeErrorCopyWithImpl<_$_StripeError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StripeErrorToJson(
      this,
    );
  }
}

abstract class _StripeError implements StripeError {
  const factory _StripeError(
      {required final String? code,
      required final String? message}) = _$_StripeError;

  factory _StripeError.fromJson(Map<String, dynamic> json) =
      _$_StripeError.fromJson;

  @override
  String? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_StripeErrorCopyWith<_$_StripeError> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerAccess _$CustomerAccessFromJson(Map<String, dynamic> json) {
  return _CustomerAccess.fromJson(json);
}

/// @nodoc
mixin _$CustomerAccess {
  bool get paymentCustomerSetup => throw _privateConstructorUsedError;
  String? get ephemeralKey => throw _privateConstructorUsedError;
  String? get customerIdForKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAccessCopyWith<CustomerAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAccessCopyWith<$Res> {
  factory $CustomerAccessCopyWith(
          CustomerAccess value, $Res Function(CustomerAccess) then) =
      _$CustomerAccessCopyWithImpl<$Res, CustomerAccess>;
  @useResult
  $Res call(
      {bool paymentCustomerSetup,
      String? ephemeralKey,
      String? customerIdForKey});
}

/// @nodoc
class _$CustomerAccessCopyWithImpl<$Res, $Val extends CustomerAccess>
    implements $CustomerAccessCopyWith<$Res> {
  _$CustomerAccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCustomerSetup = null,
    Object? ephemeralKey = freezed,
    Object? customerIdForKey = freezed,
  }) {
    return _then(_value.copyWith(
      paymentCustomerSetup: null == paymentCustomerSetup
          ? _value.paymentCustomerSetup
          : paymentCustomerSetup // ignore: cast_nullable_to_non_nullable
              as bool,
      ephemeralKey: freezed == ephemeralKey
          ? _value.ephemeralKey
          : ephemeralKey // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIdForKey: freezed == customerIdForKey
          ? _value.customerIdForKey
          : customerIdForKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerAccessCopyWith<$Res>
    implements $CustomerAccessCopyWith<$Res> {
  factory _$$_CustomerAccessCopyWith(
          _$_CustomerAccess value, $Res Function(_$_CustomerAccess) then) =
      __$$_CustomerAccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool paymentCustomerSetup,
      String? ephemeralKey,
      String? customerIdForKey});
}

/// @nodoc
class __$$_CustomerAccessCopyWithImpl<$Res>
    extends _$CustomerAccessCopyWithImpl<$Res, _$_CustomerAccess>
    implements _$$_CustomerAccessCopyWith<$Res> {
  __$$_CustomerAccessCopyWithImpl(
      _$_CustomerAccess _value, $Res Function(_$_CustomerAccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCustomerSetup = null,
    Object? ephemeralKey = freezed,
    Object? customerIdForKey = freezed,
  }) {
    return _then(_$_CustomerAccess(
      paymentCustomerSetup: null == paymentCustomerSetup
          ? _value.paymentCustomerSetup
          : paymentCustomerSetup // ignore: cast_nullable_to_non_nullable
              as bool,
      ephemeralKey: freezed == ephemeralKey
          ? _value.ephemeralKey
          : ephemeralKey // ignore: cast_nullable_to_non_nullable
              as String?,
      customerIdForKey: freezed == customerIdForKey
          ? _value.customerIdForKey
          : customerIdForKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerAccess implements _CustomerAccess {
  const _$_CustomerAccess(
      {required this.paymentCustomerSetup,
      this.ephemeralKey,
      this.customerIdForKey});

  factory _$_CustomerAccess.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerAccessFromJson(json);

  @override
  final bool paymentCustomerSetup;
  @override
  final String? ephemeralKey;
  @override
  final String? customerIdForKey;

  @override
  String toString() {
    return 'CustomerAccess(paymentCustomerSetup: $paymentCustomerSetup, ephemeralKey: $ephemeralKey, customerIdForKey: $customerIdForKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerAccess &&
            (identical(other.paymentCustomerSetup, paymentCustomerSetup) ||
                other.paymentCustomerSetup == paymentCustomerSetup) &&
            (identical(other.ephemeralKey, ephemeralKey) ||
                other.ephemeralKey == ephemeralKey) &&
            (identical(other.customerIdForKey, customerIdForKey) ||
                other.customerIdForKey == customerIdForKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, paymentCustomerSetup, ephemeralKey, customerIdForKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerAccessCopyWith<_$_CustomerAccess> get copyWith =>
      __$$_CustomerAccessCopyWithImpl<_$_CustomerAccess>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerAccessToJson(
      this,
    );
  }
}

abstract class _CustomerAccess implements CustomerAccess {
  const factory _CustomerAccess(
      {required final bool paymentCustomerSetup,
      final String? ephemeralKey,
      final String? customerIdForKey}) = _$_CustomerAccess;

  factory _CustomerAccess.fromJson(Map<String, dynamic> json) =
      _$_CustomerAccess.fromJson;

  @override
  bool get paymentCustomerSetup;
  @override
  String? get ephemeralKey;
  @override
  String? get customerIdForKey;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerAccessCopyWith<_$_CustomerAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

CardObject _$CardObjectFromJson(Map<String, dynamic> json) {
  return _CardObject.fromJson(json);
}

/// @nodoc
mixin _$CardObject {
  String? get id => throw _privateConstructorUsedError;
  String? get last4 => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardObjectCopyWith<CardObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardObjectCopyWith<$Res> {
  factory $CardObjectCopyWith(
          CardObject value, $Res Function(CardObject) then) =
      _$CardObjectCopyWithImpl<$Res, CardObject>;
  @useResult
  $Res call({String? id, String? last4, String? brand});
}

/// @nodoc
class _$CardObjectCopyWithImpl<$Res, $Val extends CardObject>
    implements $CardObjectCopyWith<$Res> {
  _$CardObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? last4 = freezed,
    Object? brand = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardObjectCopyWith<$Res>
    implements $CardObjectCopyWith<$Res> {
  factory _$$_CardObjectCopyWith(
          _$_CardObject value, $Res Function(_$_CardObject) then) =
      __$$_CardObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? last4, String? brand});
}

/// @nodoc
class __$$_CardObjectCopyWithImpl<$Res>
    extends _$CardObjectCopyWithImpl<$Res, _$_CardObject>
    implements _$$_CardObjectCopyWith<$Res> {
  __$$_CardObjectCopyWithImpl(
      _$_CardObject _value, $Res Function(_$_CardObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? last4 = freezed,
    Object? brand = freezed,
  }) {
    return _then(_$_CardObject(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardObject implements _CardObject {
  const _$_CardObject({this.id, this.last4, this.brand});

  factory _$_CardObject.fromJson(Map<String, dynamic> json) =>
      _$$_CardObjectFromJson(json);

  @override
  final String? id;
  @override
  final String? last4;
  @override
  final String? brand;

  @override
  String toString() {
    return 'CardObject(id: $id, last4: $last4, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardObject &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.last4, last4) || other.last4 == last4) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, last4, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardObjectCopyWith<_$_CardObject> get copyWith =>
      __$$_CardObjectCopyWithImpl<_$_CardObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardObjectToJson(
      this,
    );
  }
}

abstract class _CardObject implements CardObject {
  const factory _CardObject(
      {final String? id,
      final String? last4,
      final String? brand}) = _$_CardObject;

  factory _CardObject.fromJson(Map<String, dynamic> json) =
      _$_CardObject.fromJson;

  @override
  String? get id;
  @override
  String? get last4;
  @override
  String? get brand;
  @override
  @JsonKey(ignore: true)
  _$$_CardObjectCopyWith<_$_CardObject> get copyWith =>
      throw _privateConstructorUsedError;
}
