// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenericResponseModel _$GenericResponseModelFromJson(Map<String, dynamic> json) {
  return _GenericResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GenericResponseModel {
  String get errorCode => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get hasImportableData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenericResponseModelCopyWith<GenericResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericResponseModelCopyWith<$Res> {
  factory $GenericResponseModelCopyWith(GenericResponseModel value,
          $Res Function(GenericResponseModel) then) =
      _$GenericResponseModelCopyWithImpl<$Res, GenericResponseModel>;
  @useResult
  $Res call(
      {String errorCode,
      String errorMessage,
      String token,
      bool hasImportableData});
}

/// @nodoc
class _$GenericResponseModelCopyWithImpl<$Res,
        $Val extends GenericResponseModel>
    implements $GenericResponseModelCopyWith<$Res> {
  _$GenericResponseModelCopyWithImpl(this._value, this._then);

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
    Object? hasImportableData = null,
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
      hasImportableData: null == hasImportableData
          ? _value.hasImportableData
          : hasImportableData // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenericResponseModelCopyWith<$Res>
    implements $GenericResponseModelCopyWith<$Res> {
  factory _$$_GenericResponseModelCopyWith(_$_GenericResponseModel value,
          $Res Function(_$_GenericResponseModel) then) =
      __$$_GenericResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorCode,
      String errorMessage,
      String token,
      bool hasImportableData});
}

/// @nodoc
class __$$_GenericResponseModelCopyWithImpl<$Res>
    extends _$GenericResponseModelCopyWithImpl<$Res, _$_GenericResponseModel>
    implements _$$_GenericResponseModelCopyWith<$Res> {
  __$$_GenericResponseModelCopyWithImpl(_$_GenericResponseModel _value,
      $Res Function(_$_GenericResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? errorMessage = null,
    Object? token = null,
    Object? hasImportableData = null,
  }) {
    return _then(_$_GenericResponseModel(
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
      hasImportableData: null == hasImportableData
          ? _value.hasImportableData
          : hasImportableData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_GenericResponseModel implements _GenericResponseModel {
  const _$_GenericResponseModel(
      {this.errorCode = defaultString,
      this.errorMessage = defaultString,
      this.token = defaultString,
      this.hasImportableData = false});

  factory _$_GenericResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_GenericResponseModelFromJson(json);

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
  final bool hasImportableData;

  @override
  String toString() {
    return 'GenericResponseModel(errorCode: $errorCode, errorMessage: $errorMessage, token: $token, hasImportableData: $hasImportableData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenericResponseModel &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.hasImportableData, hasImportableData) ||
                other.hasImportableData == hasImportableData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, errorCode, errorMessage, token, hasImportableData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenericResponseModelCopyWith<_$_GenericResponseModel> get copyWith =>
      __$$_GenericResponseModelCopyWithImpl<_$_GenericResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenericResponseModelToJson(
      this,
    );
  }
}

abstract class _GenericResponseModel implements GenericResponseModel {
  const factory _GenericResponseModel(
      {final String errorCode,
      final String errorMessage,
      final String token,
      final bool hasImportableData}) = _$_GenericResponseModel;

  factory _GenericResponseModel.fromJson(Map<String, dynamic> json) =
      _$_GenericResponseModel.fromJson;

  @override
  String get errorCode;
  @override
  String get errorMessage;
  @override
  String get token;
  @override
  bool get hasImportableData;
  @override
  @JsonKey(ignore: true)
  _$$_GenericResponseModelCopyWith<_$_GenericResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
