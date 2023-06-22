// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_purchase_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancelPurchaseRequestModel _$CancelPurchaseRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CancelPurchaseRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CancelPurchaseRequestModel {
  String? get productItemId => throw _privateConstructorUsedError;
  String? get listingChatId => throw _privateConstructorUsedError;
  String? get cancelReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelPurchaseRequestModelCopyWith<CancelPurchaseRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelPurchaseRequestModelCopyWith<$Res> {
  factory $CancelPurchaseRequestModelCopyWith(CancelPurchaseRequestModel value,
          $Res Function(CancelPurchaseRequestModel) then) =
      _$CancelPurchaseRequestModelCopyWithImpl<$Res,
          CancelPurchaseRequestModel>;
  @useResult
  $Res call(
      {String? productItemId, String? listingChatId, String? cancelReason});
}

/// @nodoc
class _$CancelPurchaseRequestModelCopyWithImpl<$Res,
        $Val extends CancelPurchaseRequestModel>
    implements $CancelPurchaseRequestModelCopyWith<$Res> {
  _$CancelPurchaseRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemId = freezed,
    Object? listingChatId = freezed,
    Object? cancelReason = freezed,
  }) {
    return _then(_value.copyWith(
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      listingChatId: freezed == listingChatId
          ? _value.listingChatId
          : listingChatId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CancelPurchaseRequestModelCopyWith<$Res>
    implements $CancelPurchaseRequestModelCopyWith<$Res> {
  factory _$$_CancelPurchaseRequestModelCopyWith(
          _$_CancelPurchaseRequestModel value,
          $Res Function(_$_CancelPurchaseRequestModel) then) =
      __$$_CancelPurchaseRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productItemId, String? listingChatId, String? cancelReason});
}

/// @nodoc
class __$$_CancelPurchaseRequestModelCopyWithImpl<$Res>
    extends _$CancelPurchaseRequestModelCopyWithImpl<$Res,
        _$_CancelPurchaseRequestModel>
    implements _$$_CancelPurchaseRequestModelCopyWith<$Res> {
  __$$_CancelPurchaseRequestModelCopyWithImpl(
      _$_CancelPurchaseRequestModel _value,
      $Res Function(_$_CancelPurchaseRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemId = freezed,
    Object? listingChatId = freezed,
    Object? cancelReason = freezed,
  }) {
    return _then(_$_CancelPurchaseRequestModel(
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      listingChatId: freezed == listingChatId
          ? _value.listingChatId
          : listingChatId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReason: freezed == cancelReason
          ? _value.cancelReason
          : cancelReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_CancelPurchaseRequestModel implements _CancelPurchaseRequestModel {
  const _$_CancelPurchaseRequestModel(
      {this.productItemId, this.listingChatId, this.cancelReason});

  factory _$_CancelPurchaseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_CancelPurchaseRequestModelFromJson(json);

  @override
  final String? productItemId;
  @override
  final String? listingChatId;
  @override
  final String? cancelReason;

  @override
  String toString() {
    return 'CancelPurchaseRequestModel(productItemId: $productItemId, listingChatId: $listingChatId, cancelReason: $cancelReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelPurchaseRequestModel &&
            (identical(other.productItemId, productItemId) ||
                other.productItemId == productItemId) &&
            (identical(other.listingChatId, listingChatId) ||
                other.listingChatId == listingChatId) &&
            (identical(other.cancelReason, cancelReason) ||
                other.cancelReason == cancelReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productItemId, listingChatId, cancelReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelPurchaseRequestModelCopyWith<_$_CancelPurchaseRequestModel>
      get copyWith => __$$_CancelPurchaseRequestModelCopyWithImpl<
          _$_CancelPurchaseRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancelPurchaseRequestModelToJson(
      this,
    );
  }
}

abstract class _CancelPurchaseRequestModel
    implements CancelPurchaseRequestModel {
  const factory _CancelPurchaseRequestModel(
      {final String? productItemId,
      final String? listingChatId,
      final String? cancelReason}) = _$_CancelPurchaseRequestModel;

  factory _CancelPurchaseRequestModel.fromJson(Map<String, dynamic> json) =
      _$_CancelPurchaseRequestModel.fromJson;

  @override
  String? get productItemId;
  @override
  String? get listingChatId;
  @override
  String? get cancelReason;
  @override
  @JsonKey(ignore: true)
  _$$_CancelPurchaseRequestModelCopyWith<_$_CancelPurchaseRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
