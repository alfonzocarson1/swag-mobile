// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePasswordResponseModel _$ChangePasswordResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordResponseModel {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordResponseModelCopyWith<ChangePasswordResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordResponseModelCopyWith<$Res> {
  factory $ChangePasswordResponseModelCopyWith(
          ChangePasswordResponseModel value,
          $Res Function(ChangePasswordResponseModel) then) =
      _$ChangePasswordResponseModelCopyWithImpl<$Res,
          ChangePasswordResponseModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$ChangePasswordResponseModelCopyWithImpl<$Res,
        $Val extends ChangePasswordResponseModel>
    implements $ChangePasswordResponseModelCopyWith<$Res> {
  _$ChangePasswordResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordResponseModelCopyWith<$Res>
    implements $ChangePasswordResponseModelCopyWith<$Res> {
  factory _$$_ChangePasswordResponseModelCopyWith(
          _$_ChangePasswordResponseModel value,
          $Res Function(_$_ChangePasswordResponseModel) then) =
      __$$_ChangePasswordResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_ChangePasswordResponseModelCopyWithImpl<$Res>
    extends _$ChangePasswordResponseModelCopyWithImpl<$Res,
        _$_ChangePasswordResponseModel>
    implements _$$_ChangePasswordResponseModelCopyWith<$Res> {
  __$$_ChangePasswordResponseModelCopyWithImpl(
      _$_ChangePasswordResponseModel _value,
      $Res Function(_$_ChangePasswordResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_ChangePasswordResponseModel(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePasswordResponseModel implements _ChangePasswordResponseModel {
  const _$_ChangePasswordResponseModel({required this.token});

  factory _$_ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordResponseModelFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'ChangePasswordResponseModel(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordResponseModel &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordResponseModelCopyWith<_$_ChangePasswordResponseModel>
      get copyWith => __$$_ChangePasswordResponseModelCopyWithImpl<
          _$_ChangePasswordResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordResponseModelToJson(
      this,
    );
  }
}

abstract class _ChangePasswordResponseModel
    implements ChangePasswordResponseModel {
  const factory _ChangePasswordResponseModel({required final String token}) =
      _$_ChangePasswordResponseModel;

  factory _ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ChangePasswordResponseModel.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordResponseModelCopyWith<_$_ChangePasswordResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
