// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_purchase_status_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdatePurchaseStatusRequestModel _$UpdatePurchaseStatusRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdatePurchaseStatusRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdatePurchaseStatusRequestModel {
  String? get listingStatus => throw _privateConstructorUsedError;
  String? get productItemId => throw _privateConstructorUsedError;
  String? get listingChatId => throw _privateConstructorUsedError;
  String? get numberTracking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatePurchaseStatusRequestModelCopyWith<UpdatePurchaseStatusRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePurchaseStatusRequestModelCopyWith<$Res> {
  factory $UpdatePurchaseStatusRequestModelCopyWith(
          UpdatePurchaseStatusRequestModel value,
          $Res Function(UpdatePurchaseStatusRequestModel) then) =
      _$UpdatePurchaseStatusRequestModelCopyWithImpl<$Res,
          UpdatePurchaseStatusRequestModel>;
  @useResult
  $Res call(
      {String? listingStatus,
      String? productItemId,
      String? listingChatId,
      String? numberTracking});
}

/// @nodoc
class _$UpdatePurchaseStatusRequestModelCopyWithImpl<$Res,
        $Val extends UpdatePurchaseStatusRequestModel>
    implements $UpdatePurchaseStatusRequestModelCopyWith<$Res> {
  _$UpdatePurchaseStatusRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listingStatus = freezed,
    Object? productItemId = freezed,
    Object? listingChatId = freezed,
    Object? numberTracking = freezed,
  }) {
    return _then(_value.copyWith(
      listingStatus: freezed == listingStatus
          ? _value.listingStatus
          : listingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      listingChatId: freezed == listingChatId
          ? _value.listingChatId
          : listingChatId // ignore: cast_nullable_to_non_nullable
              as String?,
      numberTracking: freezed == numberTracking
          ? _value.numberTracking
          : numberTracking // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdatePurchaseStatusRequestModelCopyWith<$Res>
    implements $UpdatePurchaseStatusRequestModelCopyWith<$Res> {
  factory _$$_UpdatePurchaseStatusRequestModelCopyWith(
          _$_UpdatePurchaseStatusRequestModel value,
          $Res Function(_$_UpdatePurchaseStatusRequestModel) then) =
      __$$_UpdatePurchaseStatusRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? listingStatus,
      String? productItemId,
      String? listingChatId,
      String? numberTracking});
}

/// @nodoc
class __$$_UpdatePurchaseStatusRequestModelCopyWithImpl<$Res>
    extends _$UpdatePurchaseStatusRequestModelCopyWithImpl<$Res,
        _$_UpdatePurchaseStatusRequestModel>
    implements _$$_UpdatePurchaseStatusRequestModelCopyWith<$Res> {
  __$$_UpdatePurchaseStatusRequestModelCopyWithImpl(
      _$_UpdatePurchaseStatusRequestModel _value,
      $Res Function(_$_UpdatePurchaseStatusRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listingStatus = freezed,
    Object? productItemId = freezed,
    Object? listingChatId = freezed,
    Object? numberTracking = freezed,
  }) {
    return _then(_$_UpdatePurchaseStatusRequestModel(
      listingStatus: freezed == listingStatus
          ? _value.listingStatus
          : listingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      listingChatId: freezed == listingChatId
          ? _value.listingChatId
          : listingChatId // ignore: cast_nullable_to_non_nullable
              as String?,
      numberTracking: freezed == numberTracking
          ? _value.numberTracking
          : numberTracking // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_UpdatePurchaseStatusRequestModel
    implements _UpdatePurchaseStatusRequestModel {
  const _$_UpdatePurchaseStatusRequestModel(
      {this.listingStatus,
      this.productItemId,
      this.listingChatId,
      this.numberTracking});

  factory _$_UpdatePurchaseStatusRequestModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdatePurchaseStatusRequestModelFromJson(json);

  @override
  final String? listingStatus;
  @override
  final String? productItemId;
  @override
  final String? listingChatId;
  @override
  final String? numberTracking;

  @override
  String toString() {
    return 'UpdatePurchaseStatusRequestModel(listingStatus: $listingStatus, productItemId: $productItemId, listingChatId: $listingChatId, numberTracking: $numberTracking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePurchaseStatusRequestModel &&
            (identical(other.listingStatus, listingStatus) ||
                other.listingStatus == listingStatus) &&
            (identical(other.productItemId, productItemId) ||
                other.productItemId == productItemId) &&
            (identical(other.listingChatId, listingChatId) ||
                other.listingChatId == listingChatId) &&
            (identical(other.numberTracking, numberTracking) ||
                other.numberTracking == numberTracking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, listingStatus, productItemId, listingChatId, numberTracking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePurchaseStatusRequestModelCopyWith<
          _$_UpdatePurchaseStatusRequestModel>
      get copyWith => __$$_UpdatePurchaseStatusRequestModelCopyWithImpl<
          _$_UpdatePurchaseStatusRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdatePurchaseStatusRequestModelToJson(
      this,
    );
  }
}

abstract class _UpdatePurchaseStatusRequestModel
    implements UpdatePurchaseStatusRequestModel {
  const factory _UpdatePurchaseStatusRequestModel(
      {final String? listingStatus,
      final String? productItemId,
      final String? listingChatId,
      final String? numberTracking}) = _$_UpdatePurchaseStatusRequestModel;

  factory _UpdatePurchaseStatusRequestModel.fromJson(
      Map<String, dynamic> json) = _$_UpdatePurchaseStatusRequestModel.fromJson;

  @override
  String? get listingStatus;
  @override
  String? get productItemId;
  @override
  String? get listingChatId;
  @override
  String? get numberTracking;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatePurchaseStatusRequestModelCopyWith<
          _$_UpdatePurchaseStatusRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
