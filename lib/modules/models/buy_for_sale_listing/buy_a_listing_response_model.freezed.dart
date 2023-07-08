// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_a_listing_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuyASaleListingResponseModel _$BuyASaleListingResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BuyASaleListingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BuyASaleListingResponseModel {
  bool get response => throw _privateConstructorUsedError;
  String? get shortMessage => throw _privateConstructorUsedError;
  String? get channelUrl => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyASaleListingResponseModelCopyWith<BuyASaleListingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyASaleListingResponseModelCopyWith<$Res> {
  factory $BuyASaleListingResponseModelCopyWith(
          BuyASaleListingResponseModel value,
          $Res Function(BuyASaleListingResponseModel) then) =
      _$BuyASaleListingResponseModelCopyWithImpl<$Res,
          BuyASaleListingResponseModel>;
  @useResult
  $Res call(
      {bool response,
      String? shortMessage,
      String? channelUrl,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class _$BuyASaleListingResponseModelCopyWithImpl<$Res,
        $Val extends BuyASaleListingResponseModel>
    implements $BuyASaleListingResponseModelCopyWith<$Res> {
  _$BuyASaleListingResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? shortMessage = freezed,
    Object? channelUrl = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      shortMessage: freezed == shortMessage
          ? _value.shortMessage
          : shortMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_BuyASaleListingResponseModelCopyWith<$Res>
    implements $BuyASaleListingResponseModelCopyWith<$Res> {
  factory _$$_BuyASaleListingResponseModelCopyWith(
          _$_BuyASaleListingResponseModel value,
          $Res Function(_$_BuyASaleListingResponseModel) then) =
      __$$_BuyASaleListingResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool response,
      String? shortMessage,
      String? channelUrl,
      String? errorCode,
      String? errorMessage});
}

/// @nodoc
class __$$_BuyASaleListingResponseModelCopyWithImpl<$Res>
    extends _$BuyASaleListingResponseModelCopyWithImpl<$Res,
        _$_BuyASaleListingResponseModel>
    implements _$$_BuyASaleListingResponseModelCopyWith<$Res> {
  __$$_BuyASaleListingResponseModelCopyWithImpl(
      _$_BuyASaleListingResponseModel _value,
      $Res Function(_$_BuyASaleListingResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? shortMessage = freezed,
    Object? channelUrl = freezed,
    Object? errorCode = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_BuyASaleListingResponseModel(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      shortMessage: freezed == shortMessage
          ? _value.shortMessage
          : shortMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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

@JsonSerializable(includeIfNull: false)
class _$_BuyASaleListingResponseModel implements _BuyASaleListingResponseModel {
  const _$_BuyASaleListingResponseModel(
      {this.response = false,
      this.shortMessage,
      this.channelUrl,
      this.errorCode,
      this.errorMessage});

  factory _$_BuyASaleListingResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BuyASaleListingResponseModelFromJson(json);

  @override
  @JsonKey()
  final bool response;
  @override
  final String? shortMessage;
  @override
  final String? channelUrl;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BuyASaleListingResponseModel(response: $response, shortMessage: $shortMessage, channelUrl: $channelUrl, errorCode: $errorCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyASaleListingResponseModel &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.shortMessage, shortMessage) ||
                other.shortMessage == shortMessage) &&
            (identical(other.channelUrl, channelUrl) ||
                other.channelUrl == channelUrl) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, response, shortMessage, channelUrl, errorCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyASaleListingResponseModelCopyWith<_$_BuyASaleListingResponseModel>
      get copyWith => __$$_BuyASaleListingResponseModelCopyWithImpl<
          _$_BuyASaleListingResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyASaleListingResponseModelToJson(
      this,
    );
  }
}

abstract class _BuyASaleListingResponseModel
    implements BuyASaleListingResponseModel {
  const factory _BuyASaleListingResponseModel(
      {final bool response,
      final String? shortMessage,
      final String? channelUrl,
      final String? errorCode,
      final String? errorMessage}) = _$_BuyASaleListingResponseModel;

  factory _BuyASaleListingResponseModel.fromJson(Map<String, dynamic> json) =
      _$_BuyASaleListingResponseModel.fromJson;

  @override
  bool get response;
  @override
  String? get shortMessage;
  @override
  String? get channelUrl;
  @override
  String? get errorCode;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_BuyASaleListingResponseModelCopyWith<_$_BuyASaleListingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
