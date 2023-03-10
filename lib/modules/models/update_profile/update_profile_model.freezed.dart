// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProfileModel _$UpdateProfileModelFromJson(Map<String, dynamic> json) {
  return _UpdateProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileModel {
  String get accountId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  double get listingsRating => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<AddressesPayloadModel>? get addresses =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileModelCopyWith<UpdateProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileModelCopyWith<$Res> {
  factory $UpdateProfileModelCopyWith(
          UpdateProfileModel value, $Res Function(UpdateProfileModel) then) =
      _$UpdateProfileModelCopyWithImpl<$Res, UpdateProfileModel>;
  @useResult
  $Res call(
      {String accountId,
      String username,
      double listingsRating,
      String phoneNumber,
      String email,
      List<AddressesPayloadModel>? addresses});
}

/// @nodoc
class _$UpdateProfileModelCopyWithImpl<$Res, $Val extends UpdateProfileModel>
    implements $UpdateProfileModelCopyWith<$Res> {
  _$UpdateProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? username = null,
    Object? listingsRating = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? addresses = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProfileModelCopyWith<$Res>
    implements $UpdateProfileModelCopyWith<$Res> {
  factory _$$_UpdateProfileModelCopyWith(_$_UpdateProfileModel value,
          $Res Function(_$_UpdateProfileModel) then) =
      __$$_UpdateProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountId,
      String username,
      double listingsRating,
      String phoneNumber,
      String email,
      List<AddressesPayloadModel>? addresses});
}

/// @nodoc
class __$$_UpdateProfileModelCopyWithImpl<$Res>
    extends _$UpdateProfileModelCopyWithImpl<$Res, _$_UpdateProfileModel>
    implements _$$_UpdateProfileModelCopyWith<$Res> {
  __$$_UpdateProfileModelCopyWithImpl(
      _$_UpdateProfileModel _value, $Res Function(_$_UpdateProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? username = null,
    Object? listingsRating = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? addresses = freezed,
  }) {
    return _then(_$_UpdateProfileModel(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateProfileModel implements _UpdateProfileModel {
  const _$_UpdateProfileModel(
      {required this.accountId,
      required this.username,
      required this.listingsRating,
      required this.phoneNumber,
      required this.email,
      final List<AddressesPayloadModel>? addresses})
      : _addresses = addresses;

  factory _$_UpdateProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProfileModelFromJson(json);

  @override
  final String accountId;
  @override
  final String username;
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
  String toString() {
    return 'UpdateProfileModel(accountId: $accountId, username: $username, listingsRating: $listingsRating, phoneNumber: $phoneNumber, email: $email, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileModel &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.listingsRating, listingsRating) ||
                other.listingsRating == listingsRating) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountId,
      username,
      listingsRating,
      phoneNumber,
      email,
      const DeepCollectionEquality().hash(_addresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileModelCopyWith<_$_UpdateProfileModel> get copyWith =>
      __$$_UpdateProfileModelCopyWithImpl<_$_UpdateProfileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProfileModelToJson(
      this,
    );
  }
}

abstract class _UpdateProfileModel implements UpdateProfileModel {
  const factory _UpdateProfileModel(
      {required final String accountId,
      required final String username,
      required final double listingsRating,
      required final String phoneNumber,
      required final String email,
      final List<AddressesPayloadModel>? addresses}) = _$_UpdateProfileModel;

  factory _UpdateProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateProfileModel.fromJson;

  @override
  String get accountId;
  @override
  String get username;
  @override
  double get listingsRating;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  List<AddressesPayloadModel>? get addresses;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfileModelCopyWith<_$_UpdateProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
