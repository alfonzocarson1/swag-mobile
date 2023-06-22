// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_purchase_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancelPurchaseResponseModel _$CancelPurchaseResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CancelPurchaseResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CancelPurchaseResponseModel {
  bool? get response => throw _privateConstructorUsedError;
  String? get shortMessage => throw _privateConstructorUsedError;
  String? get listingStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelPurchaseResponseModelCopyWith<CancelPurchaseResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelPurchaseResponseModelCopyWith<$Res> {
  factory $CancelPurchaseResponseModelCopyWith(
          CancelPurchaseResponseModel value,
          $Res Function(CancelPurchaseResponseModel) then) =
      _$CancelPurchaseResponseModelCopyWithImpl<$Res,
          CancelPurchaseResponseModel>;
  @useResult
  $Res call({bool? response, String? shortMessage, String? listingStatus});
}

/// @nodoc
class _$CancelPurchaseResponseModelCopyWithImpl<$Res,
        $Val extends CancelPurchaseResponseModel>
    implements $CancelPurchaseResponseModelCopyWith<$Res> {
  _$CancelPurchaseResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? shortMessage = freezed,
    Object? listingStatus = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool?,
      shortMessage: freezed == shortMessage
          ? _value.shortMessage
          : shortMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      listingStatus: freezed == listingStatus
          ? _value.listingStatus
          : listingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CancelPurchaseResponseModelCopyWith<$Res>
    implements $CancelPurchaseResponseModelCopyWith<$Res> {
  factory _$$_CancelPurchaseResponseModelCopyWith(
          _$_CancelPurchaseResponseModel value,
          $Res Function(_$_CancelPurchaseResponseModel) then) =
      __$$_CancelPurchaseResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? response, String? shortMessage, String? listingStatus});
}

/// @nodoc
class __$$_CancelPurchaseResponseModelCopyWithImpl<$Res>
    extends _$CancelPurchaseResponseModelCopyWithImpl<$Res,
        _$_CancelPurchaseResponseModel>
    implements _$$_CancelPurchaseResponseModelCopyWith<$Res> {
  __$$_CancelPurchaseResponseModelCopyWithImpl(
      _$_CancelPurchaseResponseModel _value,
      $Res Function(_$_CancelPurchaseResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? shortMessage = freezed,
    Object? listingStatus = freezed,
  }) {
    return _then(_$_CancelPurchaseResponseModel(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool?,
      shortMessage: freezed == shortMessage
          ? _value.shortMessage
          : shortMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      listingStatus: freezed == listingStatus
          ? _value.listingStatus
          : listingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_CancelPurchaseResponseModel implements _CancelPurchaseResponseModel {
  const _$_CancelPurchaseResponseModel(
      {this.response, this.shortMessage, this.listingStatus});

  factory _$_CancelPurchaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CancelPurchaseResponseModelFromJson(json);

  @override
  final bool? response;
  @override
  final String? shortMessage;
  @override
  final String? listingStatus;

  @override
  String toString() {
    return 'CancelPurchaseResponseModel(response: $response, shortMessage: $shortMessage, listingStatus: $listingStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelPurchaseResponseModel &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.shortMessage, shortMessage) ||
                other.shortMessage == shortMessage) &&
            (identical(other.listingStatus, listingStatus) ||
                other.listingStatus == listingStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, response, shortMessage, listingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelPurchaseResponseModelCopyWith<_$_CancelPurchaseResponseModel>
      get copyWith => __$$_CancelPurchaseResponseModelCopyWithImpl<
          _$_CancelPurchaseResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancelPurchaseResponseModelToJson(
      this,
    );
  }
}

abstract class _CancelPurchaseResponseModel
    implements CancelPurchaseResponseModel {
  const factory _CancelPurchaseResponseModel(
      {final bool? response,
      final String? shortMessage,
      final String? listingStatus}) = _$_CancelPurchaseResponseModel;

  factory _CancelPurchaseResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CancelPurchaseResponseModel.fromJson;

  @override
  bool? get response;
  @override
  String? get shortMessage;
  @override
  String? get listingStatus;
  @override
  @JsonKey(ignore: true)
  _$$_CancelPurchaseResponseModelCopyWith<_$_CancelPurchaseResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
