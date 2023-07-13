// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_buy_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingBuyModelRequest _$RatingBuyModelRequestFromJson(
    Map<String, dynamic> json) {
  return _RatingBuyModelRequest.fromJson(json);
}

/// @nodoc
mixin _$RatingBuyModelRequest {
  String? get productItemId => throw _privateConstructorUsedError;
  bool? get listingRating => throw _privateConstructorUsedError;
  String? get listingFeedbackMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingBuyModelRequestCopyWith<RatingBuyModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingBuyModelRequestCopyWith<$Res> {
  factory $RatingBuyModelRequestCopyWith(RatingBuyModelRequest value,
          $Res Function(RatingBuyModelRequest) then) =
      _$RatingBuyModelRequestCopyWithImpl<$Res, RatingBuyModelRequest>;
  @useResult
  $Res call(
      {String? productItemId,
      bool? listingRating,
      String? listingFeedbackMessage});
}

/// @nodoc
class _$RatingBuyModelRequestCopyWithImpl<$Res,
        $Val extends RatingBuyModelRequest>
    implements $RatingBuyModelRequestCopyWith<$Res> {
  _$RatingBuyModelRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemId = freezed,
    Object? listingRating = freezed,
    Object? listingFeedbackMessage = freezed,
  }) {
    return _then(_value.copyWith(
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      listingRating: freezed == listingRating
          ? _value.listingRating
          : listingRating // ignore: cast_nullable_to_non_nullable
              as bool?,
      listingFeedbackMessage: freezed == listingFeedbackMessage
          ? _value.listingFeedbackMessage
          : listingFeedbackMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatingBuyModelRequestCopyWith<$Res>
    implements $RatingBuyModelRequestCopyWith<$Res> {
  factory _$$_RatingBuyModelRequestCopyWith(_$_RatingBuyModelRequest value,
          $Res Function(_$_RatingBuyModelRequest) then) =
      __$$_RatingBuyModelRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? productItemId,
      bool? listingRating,
      String? listingFeedbackMessage});
}

/// @nodoc
class __$$_RatingBuyModelRequestCopyWithImpl<$Res>
    extends _$RatingBuyModelRequestCopyWithImpl<$Res, _$_RatingBuyModelRequest>
    implements _$$_RatingBuyModelRequestCopyWith<$Res> {
  __$$_RatingBuyModelRequestCopyWithImpl(_$_RatingBuyModelRequest _value,
      $Res Function(_$_RatingBuyModelRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemId = freezed,
    Object? listingRating = freezed,
    Object? listingFeedbackMessage = freezed,
  }) {
    return _then(_$_RatingBuyModelRequest(
      productItemId: freezed == productItemId
          ? _value.productItemId
          : productItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      listingRating: freezed == listingRating
          ? _value.listingRating
          : listingRating // ignore: cast_nullable_to_non_nullable
              as bool?,
      listingFeedbackMessage: freezed == listingFeedbackMessage
          ? _value.listingFeedbackMessage
          : listingFeedbackMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_RatingBuyModelRequest implements _RatingBuyModelRequest {
  const _$_RatingBuyModelRequest(
      {this.productItemId, this.listingRating, this.listingFeedbackMessage});

  factory _$_RatingBuyModelRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RatingBuyModelRequestFromJson(json);

  @override
  final String? productItemId;
  @override
  final bool? listingRating;
  @override
  final String? listingFeedbackMessage;

  @override
  String toString() {
    return 'RatingBuyModelRequest(productItemId: $productItemId, listingRating: $listingRating, listingFeedbackMessage: $listingFeedbackMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatingBuyModelRequest &&
            (identical(other.productItemId, productItemId) ||
                other.productItemId == productItemId) &&
            (identical(other.listingRating, listingRating) ||
                other.listingRating == listingRating) &&
            (identical(other.listingFeedbackMessage, listingFeedbackMessage) ||
                other.listingFeedbackMessage == listingFeedbackMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, productItemId, listingRating, listingFeedbackMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingBuyModelRequestCopyWith<_$_RatingBuyModelRequest> get copyWith =>
      __$$_RatingBuyModelRequestCopyWithImpl<_$_RatingBuyModelRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingBuyModelRequestToJson(
      this,
    );
  }
}

abstract class _RatingBuyModelRequest implements RatingBuyModelRequest {
  const factory _RatingBuyModelRequest(
      {final String? productItemId,
      final bool? listingRating,
      final String? listingFeedbackMessage}) = _$_RatingBuyModelRequest;

  factory _RatingBuyModelRequest.fromJson(Map<String, dynamic> json) =
      _$_RatingBuyModelRequest.fromJson;

  @override
  String? get productItemId;
  @override
  bool? get listingRating;
  @override
  String? get listingFeedbackMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RatingBuyModelRequestCopyWith<_$_RatingBuyModelRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
