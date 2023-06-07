// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_account_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountPayloadModel _$CreateAccountPayloadModelFromJson(
    Map<String, dynamic> json) {
  return _CreateAccountPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$CreateAccountPayloadModel {
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  bool get termsOfServiceAccepted => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountPayloadModelCopyWith<CreateAccountPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountPayloadModelCopyWith<$Res> {
  factory $CreateAccountPayloadModelCopyWith(CreateAccountPayloadModel value,
          $Res Function(CreateAccountPayloadModel) then) =
      _$CreateAccountPayloadModelCopyWithImpl<$Res, CreateAccountPayloadModel>;
  @useResult
  $Res call(
      {String email,
      String phoneNumber,
      String password,
      String userName,
      bool termsOfServiceAccepted,
      String deviceId});
}

/// @nodoc
class _$CreateAccountPayloadModelCopyWithImpl<$Res,
        $Val extends CreateAccountPayloadModel>
    implements $CreateAccountPayloadModelCopyWith<$Res> {
  _$CreateAccountPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? userName = null,
    Object? termsOfServiceAccepted = null,
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      termsOfServiceAccepted: null == termsOfServiceAccepted
          ? _value.termsOfServiceAccepted
          : termsOfServiceAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAccountPayloadModelCopyWith<$Res>
    implements $CreateAccountPayloadModelCopyWith<$Res> {
  factory _$$_CreateAccountPayloadModelCopyWith(
          _$_CreateAccountPayloadModel value,
          $Res Function(_$_CreateAccountPayloadModel) then) =
      __$$_CreateAccountPayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String phoneNumber,
      String password,
      String userName,
      bool termsOfServiceAccepted,
      String deviceId});
}

/// @nodoc
class __$$_CreateAccountPayloadModelCopyWithImpl<$Res>
    extends _$CreateAccountPayloadModelCopyWithImpl<$Res,
        _$_CreateAccountPayloadModel>
    implements _$$_CreateAccountPayloadModelCopyWith<$Res> {
  __$$_CreateAccountPayloadModelCopyWithImpl(
      _$_CreateAccountPayloadModel _value,
      $Res Function(_$_CreateAccountPayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? userName = null,
    Object? termsOfServiceAccepted = null,
    Object? deviceId = null,
  }) {
    return _then(_$_CreateAccountPayloadModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      termsOfServiceAccepted: null == termsOfServiceAccepted
          ? _value.termsOfServiceAccepted
          : termsOfServiceAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_CreateAccountPayloadModel implements _CreateAccountPayloadModel {
  const _$_CreateAccountPayloadModel(
      {required this.email,
      required this.phoneNumber,
      required this.password,
      required this.userName,
      required this.termsOfServiceAccepted,
      required this.deviceId});

  factory _$_CreateAccountPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAccountPayloadModelFromJson(json);

  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final String userName;
  @override
  final bool termsOfServiceAccepted;
  @override
  final String deviceId;

  @override
  String toString() {
    return 'CreateAccountPayloadModel(email: $email, phoneNumber: $phoneNumber, password: $password, userName: $userName, termsOfServiceAccepted: $termsOfServiceAccepted, deviceId: $deviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccountPayloadModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.termsOfServiceAccepted, termsOfServiceAccepted) ||
                other.termsOfServiceAccepted == termsOfServiceAccepted) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, phoneNumber, password,
      userName, termsOfServiceAccepted, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountPayloadModelCopyWith<_$_CreateAccountPayloadModel>
      get copyWith => __$$_CreateAccountPayloadModelCopyWithImpl<
          _$_CreateAccountPayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAccountPayloadModelToJson(
      this,
    );
  }
}

abstract class _CreateAccountPayloadModel implements CreateAccountPayloadModel {
  const factory _CreateAccountPayloadModel(
      {required final String email,
      required final String phoneNumber,
      required final String password,
      required final String userName,
      required final bool termsOfServiceAccepted,
      required final String deviceId}) = _$_CreateAccountPayloadModel;

  factory _CreateAccountPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_CreateAccountPayloadModel.fromJson;

  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  String get userName;
  @override
  bool get termsOfServiceAccepted;
  @override
  String get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAccountPayloadModelCopyWith<_$_CreateAccountPayloadModel>
      get copyWith => throw _privateConstructorUsedError;
}
