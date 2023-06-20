// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_a_listing_accept_purchase_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AcceptPurchaseResponseModel _$AcceptPurchaseResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AcceptPurchaseResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AcceptPurchaseResponseModel {
  String? get channelUrl => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptPurchaseResponseModelCopyWith<AcceptPurchaseResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptPurchaseResponseModelCopyWith<$Res> {
  factory $AcceptPurchaseResponseModelCopyWith(
          AcceptPurchaseResponseModel value,
          $Res Function(AcceptPurchaseResponseModel) then) =
      _$AcceptPurchaseResponseModelCopyWithImpl<$Res,
          AcceptPurchaseResponseModel>;
  @useResult
  $Res call({String? channelUrl, String? errorCode, String? errorMessage});
}

/// @nodoc
class _$AcceptPurchaseResponseModelCopyWithImpl<$Res,
        $Val extends AcceptPurchaseResponseModel>
    implements $AcceptPurchaseResponseModelCopyWith<$Res> {
  _$AcceptPurchaseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelUrl = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      channelUrl: freezed == channelUrl
          ? _value.channelUrl
          : channelUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AcceptPurchaseResponseModelCopyWith<$Res>
    implements $AcceptPurchaseResponseModelCopyWith<$Res> {
  factory _$$_AcceptPurchaseResponseModelCopyWith(
          _$_AcceptPurchaseResponseModel value,
          $Res Function(_$_AcceptPurchaseResponseModel) then) =
      __$$_AcceptPurchaseResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? channelUrl, String? errorCode, String? errorMessage});
}

/// @nodoc
class __$$_AcceptPurchaseResponseModelCopyWithImpl<$Res>
    extends _$AcceptPurchaseResponseModelCopyWithImpl<$Res,
        _$_AcceptPurchaseResponseModel>
    implements _$$_AcceptPurchaseResponseModelCopyWith<$Res> {
  __$$_AcceptPurchaseResponseModelCopyWithImpl(
      _$_AcceptPurchaseResponseModel _value,
      $Res Function(_$_AcceptPurchaseResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelUrl = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AcceptPurchaseResponseModel(
      channelUrl: freezed == channelUrl
          ? _value.channelUrl
          : channelUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_AcceptPurchaseResponseModel implements _AcceptPurchaseResponseModel {
  const _$_AcceptPurchaseResponseModel(
      {this.channelUrl, this.errorCode, this.errorMessage});

  factory _$_AcceptPurchaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AcceptPurchaseResponseModelFromJson(json);

  @override
  final String? channelUrl;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AcceptPurchaseResponseModel(channelUrl: $channelUrl, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptPurchaseResponseModel &&
            (identical(other.channelUrl, channelUrl) ||
                other.channelUrl == channelUrl) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, channelUrl, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptPurchaseResponseModelCopyWith<_$_AcceptPurchaseResponseModel>
      get copyWith => __$$_AcceptPurchaseResponseModelCopyWithImpl<
          _$_AcceptPurchaseResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AcceptPurchaseResponseModelToJson(
      this,
    );
  }
}

abstract class _AcceptPurchaseResponseModel
    implements AcceptPurchaseResponseModel {
  const factory _AcceptPurchaseResponseModel(
      {final String? channelUrl,
      final String? errorCode,
      final String? errorMessage}) = _$_AcceptPurchaseResponseModel;

  factory _AcceptPurchaseResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AcceptPurchaseResponseModel.fromJson;

  @override
  String? get channelUrl;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AcceptPurchaseResponseModelCopyWith<_$_AcceptPurchaseResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
