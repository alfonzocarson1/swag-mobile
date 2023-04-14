// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProfilePayloadModel _$UpdateProfilePayloadModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateProfilePayloadModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfilePayloadModel {
  String? get accountId => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get useAvatar => throw _privateConstructorUsedError;
  List<AddressesPayloadModel>? get addresses =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfilePayloadModelCopyWith<UpdateProfilePayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfilePayloadModelCopyWith<$Res> {
  factory $UpdateProfilePayloadModelCopyWith(UpdateProfilePayloadModel value,
          $Res Function(UpdateProfilePayloadModel) then) =
      _$UpdateProfilePayloadModelCopyWithImpl<$Res, UpdateProfilePayloadModel>;
  @useResult
  $Res call(
      {String? accountId,
      String? phoneNumber,
      String? email,
      String? userName,
      String? useAvatar,
      List<AddressesPayloadModel>? addresses});
}

/// @nodoc
class _$UpdateProfilePayloadModelCopyWithImpl<$Res,
        $Val extends UpdateProfilePayloadModel>
    implements $UpdateProfilePayloadModelCopyWith<$Res> {
  _$UpdateProfilePayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? useAvatar = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      useAvatar: freezed == useAvatar
          ? _value.useAvatar
          : useAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressesPayloadModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProfilePayloadModelCopyWith<$Res>
    implements $UpdateProfilePayloadModelCopyWith<$Res> {
  factory _$$_UpdateProfilePayloadModelCopyWith(
          _$_UpdateProfilePayloadModel value,
          $Res Function(_$_UpdateProfilePayloadModel) then) =
      __$$_UpdateProfilePayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountId,
      String? phoneNumber,
      String? email,
      String? userName,
      String? useAvatar,
      List<AddressesPayloadModel>? addresses});
}

/// @nodoc
class __$$_UpdateProfilePayloadModelCopyWithImpl<$Res>
    extends _$UpdateProfilePayloadModelCopyWithImpl<$Res,
        _$_UpdateProfilePayloadModel>
    implements _$$_UpdateProfilePayloadModelCopyWith<$Res> {
  __$$_UpdateProfilePayloadModelCopyWithImpl(
      _$_UpdateProfilePayloadModel _value,
      $Res Function(_$_UpdateProfilePayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? userName = freezed,
    Object? useAvatar = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_$_UpdateProfilePayloadModel(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      useAvatar: freezed == useAvatar
          ? _value.useAvatar
          : useAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressesPayloadModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_UpdateProfilePayloadModel implements _UpdateProfilePayloadModel {
  const _$_UpdateProfilePayloadModel(
      {this.accountId,
      this.phoneNumber,
      this.email,
      this.userName,
      this.useAvatar,
      final List<AddressesPayloadModel>? addresses})
      : _addresses = addresses;

  factory _$_UpdateProfilePayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProfilePayloadModelFromJson(json);

  @override
  final String? accountId;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? userName;
  @override
  final String? useAvatar;
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
  String toString() {
    return 'UpdateProfilePayloadModel(accountId: $accountId, phoneNumber: $phoneNumber, email: $email, userName: $userName, useAvatar: $useAvatar, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfilePayloadModel &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.useAvatar, useAvatar) ||
                other.useAvatar == useAvatar) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountId, phoneNumber, email,
      userName, useAvatar, const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfilePayloadModelCopyWith<_$_UpdateProfilePayloadModel>
      get copyWith => __$$_UpdateProfilePayloadModelCopyWithImpl<
          _$_UpdateProfilePayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfilePayloadModelToJson(
      this,
    );
  }
}

abstract class _UpdateProfilePayloadModel implements UpdateProfilePayloadModel {
  const factory _UpdateProfilePayloadModel(
          {final String? accountId,
          final String? phoneNumber,
          final String? email,
          final String? userName,
          final String? useAvatar,
          final List<AddressesPayloadModel>? addresses}) =
      _$_UpdateProfilePayloadModel;

  factory _UpdateProfilePayloadModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateProfilePayloadModel.fromJson;

  @override
  String? get accountId;
  @override
  String? get phoneNumber;
  @override
  String? get email;
  @override
  String? get userName;
  @override
  String? get useAvatar;
  @override
  List<AddressesPayloadModel>? get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfilePayloadModelCopyWith<_$_UpdateProfilePayloadModel>
      get copyWith => throw _privateConstructorUsedError;
}
