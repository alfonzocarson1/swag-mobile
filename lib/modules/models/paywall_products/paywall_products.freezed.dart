// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paywall_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaywallSubscriptionProducts _$PaywallSubscriptionProductsFromJson(
    Map<String, dynamic> json) {
  return _PaywallSubscriptionProducts.fromJson(json);
}

/// @nodoc
mixin _$PaywallSubscriptionProducts {
  String get annualSubscription => throw _privateConstructorUsedError;
  String get monthlySubscription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaywallSubscriptionProductsCopyWith<PaywallSubscriptionProducts>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaywallSubscriptionProductsCopyWith<$Res> {
  factory $PaywallSubscriptionProductsCopyWith(
          PaywallSubscriptionProducts value,
          $Res Function(PaywallSubscriptionProducts) then) =
      _$PaywallSubscriptionProductsCopyWithImpl<$Res,
          PaywallSubscriptionProducts>;
  @useResult
  $Res call({String annualSubscription, String monthlySubscription});
}

/// @nodoc
class _$PaywallSubscriptionProductsCopyWithImpl<$Res,
        $Val extends PaywallSubscriptionProducts>
    implements $PaywallSubscriptionProductsCopyWith<$Res> {
  _$PaywallSubscriptionProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annualSubscription = null,
    Object? monthlySubscription = null,
  }) {
    return _then(_value.copyWith(
      annualSubscription: null == annualSubscription
          ? _value.annualSubscription
          : annualSubscription // ignore: cast_nullable_to_non_nullable
              as String,
      monthlySubscription: null == monthlySubscription
          ? _value.monthlySubscription
          : monthlySubscription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaywallSubscriptionProductsCopyWith<$Res>
    implements $PaywallSubscriptionProductsCopyWith<$Res> {
  factory _$$_PaywallSubscriptionProductsCopyWith(
          _$_PaywallSubscriptionProducts value,
          $Res Function(_$_PaywallSubscriptionProducts) then) =
      __$$_PaywallSubscriptionProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String annualSubscription, String monthlySubscription});
}

/// @nodoc
class __$$_PaywallSubscriptionProductsCopyWithImpl<$Res>
    extends _$PaywallSubscriptionProductsCopyWithImpl<$Res,
        _$_PaywallSubscriptionProducts>
    implements _$$_PaywallSubscriptionProductsCopyWith<$Res> {
  __$$_PaywallSubscriptionProductsCopyWithImpl(
      _$_PaywallSubscriptionProducts _value,
      $Res Function(_$_PaywallSubscriptionProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annualSubscription = null,
    Object? monthlySubscription = null,
  }) {
    return _then(_$_PaywallSubscriptionProducts(
      annualSubscription: null == annualSubscription
          ? _value.annualSubscription
          : annualSubscription // ignore: cast_nullable_to_non_nullable
              as String,
      monthlySubscription: null == monthlySubscription
          ? _value.monthlySubscription
          : monthlySubscription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PaywallSubscriptionProducts implements _PaywallSubscriptionProducts {
  const _$_PaywallSubscriptionProducts(
      {required this.annualSubscription, required this.monthlySubscription});

  factory _$_PaywallSubscriptionProducts.fromJson(Map<String, dynamic> json) =>
      _$$_PaywallSubscriptionProductsFromJson(json);

  @override
  final String annualSubscription;
  @override
  final String monthlySubscription;

  @override
  String toString() {
    return 'PaywallSubscriptionProducts(annualSubscription: $annualSubscription, monthlySubscription: $monthlySubscription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaywallSubscriptionProducts &&
            (identical(other.annualSubscription, annualSubscription) ||
                other.annualSubscription == annualSubscription) &&
            (identical(other.monthlySubscription, monthlySubscription) ||
                other.monthlySubscription == monthlySubscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, annualSubscription, monthlySubscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaywallSubscriptionProductsCopyWith<_$_PaywallSubscriptionProducts>
      get copyWith => __$$_PaywallSubscriptionProductsCopyWithImpl<
          _$_PaywallSubscriptionProducts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaywallSubscriptionProductsToJson(
      this,
    );
  }
}

abstract class _PaywallSubscriptionProducts
    implements PaywallSubscriptionProducts {
  const factory _PaywallSubscriptionProducts(
          {required final String annualSubscription,
          required final String monthlySubscription}) =
      _$_PaywallSubscriptionProducts;

  factory _PaywallSubscriptionProducts.fromJson(Map<String, dynamic> json) =
      _$_PaywallSubscriptionProducts.fromJson;

  @override
  String get annualSubscription;
  @override
  String get monthlySubscription;
  @override
  @JsonKey(ignore: true)
  _$$_PaywallSubscriptionProductsCopyWith<_$_PaywallSubscriptionProducts>
      get copyWith => throw _privateConstructorUsedError;
}
