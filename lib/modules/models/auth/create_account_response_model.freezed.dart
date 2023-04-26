// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountResponseModel _$CreateAccountResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateAccountResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountResponseModel {
  String get errorCode => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  bool get hasImportableData => throw _privateConstructorUsedError;
  List<AddressesPayloadModel>? get addresses =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountResponseModelCopyWith<CreateAccountResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountResponseModelCopyWith<$Res> {
  factory $CreateAccountResponseModelCopyWith(CreateAccountResponseModel value,
          $Res Function(CreateAccountResponseModel) then) =
      _$CreateAccountResponseModelCopyWithImpl<$Res,
          CreateAccountResponseModel>;
  @useResult
  $Res call(
      {String errorCode,
      String errorMessage,
      String token,
      String accountId,
      bool hasImportableData,
      List<AddressesPayloadModel>? addresses});
}

/// @nodoc
class _$CreateAccountResponseModelCopyWithImpl<$Res,
        $Val extends CreateAccountResponseModel>
    implements $CreateAccountResponseModelCopyWith<$Res> {
  _$CreateAccountResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
    Object? token = null,
    Object? accountId = null,
    Object? hasImportableData = null,
    Object? addresses = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      hasImportableData: null == hasImportableData
          ? _value.hasImportableData
          : hasImportableData // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressesPayloadModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAccountResponseModelCopyWith<$Res>
    implements $CreateAccountResponseModelCopyWith<$Res> {
  factory _$$_CreateAccountResponseModelCopyWith(
          _$_CreateAccountResponseModel value,
          $Res Function(_$_CreateAccountResponseModel) then) =
      __$$_CreateAccountResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorCode,
      String errorMessage,
      String token,
      String accountId,
      bool hasImportableData,
      List<AddressesPayloadModel>? addresses});
}

/// @nodoc
class __$$_CreateAccountResponseModelCopyWithImpl<$Res>
    extends _$CreateAccountResponseModelCopyWithImpl<$Res,
        _$_CreateAccountResponseModel>
    implements _$$_CreateAccountResponseModelCopyWith<$Res> {
  __$$_CreateAccountResponseModelCopyWithImpl(
      _$_CreateAccountResponseModel _value,
      $Res Function(_$_CreateAccountResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
    Object? token = null,
    Object? accountId = null,
    Object? hasImportableData = null,
    Object? addresses = freezed,
  }) {
    return _then(_$_CreateAccountResponseModel(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      hasImportableData: null == hasImportableData
          ? _value.hasImportableData
          : hasImportableData // ignore: cast_nullable_to_non_nullable
              as bool,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressesPayloadModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAccountResponseModel implements _CreateAccountResponseModel {
  const _$_CreateAccountResponseModel(
      {this.errorCode = defaultString,
      this.errorMessage = defaultString,
      this.token = defaultString,
      this.accountId = defaultString,
      this.hasImportableData = false,
      final List<AddressesPayloadModel>? addresses = const []})
      : _addresses = addresses;

  factory _$_CreateAccountResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAccountResponseModelFromJson(json);

  @override
  @JsonKey()
  final String errorCode;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final String accountId;
  @override
  @JsonKey()
  final bool hasImportableData;
  final List<AddressesPayloadModel>? _addresses;
  @override
  @JsonKey()
  List<AddressesPayloadModel>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateAccountResponseModel(errorCode: $errorCode, errorMessage: $errorMessage, token: $token, accountId: $accountId, hasImportableData: $hasImportableData, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccountResponseModel &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.hasImportableData, hasImportableData) ||
                other.hasImportableData == hasImportableData) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorCode,
      errorMessage,
      token,
      accountId,
      hasImportableData,
      const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountResponseModelCopyWith<_$_CreateAccountResponseModel>
      get copyWith => __$$_CreateAccountResponseModelCopyWithImpl<
          _$_CreateAccountResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAccountResponseModelToJson(
      this,
    );
  }
}

abstract class _CreateAccountResponseModel
    implements CreateAccountResponseModel {
  const factory _CreateAccountResponseModel(
          {final String errorCode,
          final String errorMessage,
          final String token,
          final String accountId,
          final bool hasImportableData,
          final List<AddressesPayloadModel>? addresses}) =
      _$_CreateAccountResponseModel;

  factory _CreateAccountResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CreateAccountResponseModel.fromJson;

  @override
  String get errorCode;
  @override
  String get errorMessage;
  @override
  String get token;
  @override
  String get accountId;
  @override
  bool get hasImportableData;
  @override
  List<AddressesPayloadModel>? get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAccountResponseModelCopyWith<_$_CreateAccountResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
