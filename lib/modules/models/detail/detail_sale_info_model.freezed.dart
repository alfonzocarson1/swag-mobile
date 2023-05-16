// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_sale_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailSaleInfoModel _$DetailSaleInfoModelFromJson(Map<String, dynamic> json) {
  return _DetailSaleInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DetailSaleInfoModel {
  String? get minPrice => throw _privateConstructorUsedError;
  String? get maxPrice => throw _privateConstructorUsedError;
  String? get lastSale => throw _privateConstructorUsedError;
  String? get percentageLastSale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailSaleInfoModelCopyWith<DetailSaleInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSaleInfoModelCopyWith<$Res> {
  factory $DetailSaleInfoModelCopyWith(
          DetailSaleInfoModel value, $Res Function(DetailSaleInfoModel) then) =
      _$DetailSaleInfoModelCopyWithImpl<$Res, DetailSaleInfoModel>;
  @useResult
  $Res call(
      {String? minPrice,
      String? maxPrice,
      String? lastSale,
      String? percentageLastSale});
}

/// @nodoc
class _$DetailSaleInfoModelCopyWithImpl<$Res, $Val extends DetailSaleInfoModel>
    implements $DetailSaleInfoModelCopyWith<$Res> {
  _$DetailSaleInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? lastSale = freezed,
    Object? percentageLastSale = freezed,
  }) {
    return _then(_value.copyWith(
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSale: freezed == lastSale
          ? _value.lastSale
          : lastSale // ignore: cast_nullable_to_non_nullable
              as String?,
      percentageLastSale: freezed == percentageLastSale
          ? _value.percentageLastSale
          : percentageLastSale // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailSaleInfoModelCopyWith<$Res>
    implements $DetailSaleInfoModelCopyWith<$Res> {
  factory _$$_DetailSaleInfoModelCopyWith(_$_DetailSaleInfoModel value,
          $Res Function(_$_DetailSaleInfoModel) then) =
      __$$_DetailSaleInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? minPrice,
      String? maxPrice,
      String? lastSale,
      String? percentageLastSale});
}

/// @nodoc
class __$$_DetailSaleInfoModelCopyWithImpl<$Res>
    extends _$DetailSaleInfoModelCopyWithImpl<$Res, _$_DetailSaleInfoModel>
    implements _$$_DetailSaleInfoModelCopyWith<$Res> {
  __$$_DetailSaleInfoModelCopyWithImpl(_$_DetailSaleInfoModel _value,
      $Res Function(_$_DetailSaleInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? lastSale = freezed,
    Object? percentageLastSale = freezed,
  }) {
    return _then(_$_DetailSaleInfoModel(
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSale: freezed == lastSale
          ? _value.lastSale
          : lastSale // ignore: cast_nullable_to_non_nullable
              as String?,
      percentageLastSale: freezed == percentageLastSale
          ? _value.percentageLastSale
          : percentageLastSale // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailSaleInfoModel implements _DetailSaleInfoModel {
  const _$_DetailSaleInfoModel(
      {this.minPrice, this.maxPrice, this.lastSale, this.percentageLastSale});

  factory _$_DetailSaleInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailSaleInfoModelFromJson(json);

  @override
  final String? minPrice;
  @override
  final String? maxPrice;
  @override
  final String? lastSale;
  @override
  final String? percentageLastSale;

  @override
  String toString() {
    return 'DetailSaleInfoModel(minPrice: $minPrice, maxPrice: $maxPrice, lastSale: $lastSale, percentageLastSale: $percentageLastSale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailSaleInfoModel &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.lastSale, lastSale) ||
                other.lastSale == lastSale) &&
            (identical(other.percentageLastSale, percentageLastSale) ||
                other.percentageLastSale == percentageLastSale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, minPrice, maxPrice, lastSale, percentageLastSale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailSaleInfoModelCopyWith<_$_DetailSaleInfoModel> get copyWith =>
      __$$_DetailSaleInfoModelCopyWithImpl<_$_DetailSaleInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailSaleInfoModelToJson(
      this,
    );
  }
}

abstract class _DetailSaleInfoModel implements DetailSaleInfoModel {
  const factory _DetailSaleInfoModel(
      {final String? minPrice,
      final String? maxPrice,
      final String? lastSale,
      final String? percentageLastSale}) = _$_DetailSaleInfoModel;

  factory _DetailSaleInfoModel.fromJson(Map<String, dynamic> json) =
      _$_DetailSaleInfoModel.fromJson;

  @override
  String? get minPrice;
  @override
  String? get maxPrice;
  @override
  String? get lastSale;
  @override
  String? get percentageLastSale;
  @override
  @JsonKey(ignore: true)
  _$$_DetailSaleInfoModelCopyWith<_$_DetailSaleInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
