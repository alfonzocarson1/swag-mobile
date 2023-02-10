// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailCollectionModel _$DetailCollectionModelFromJson(
    Map<String, dynamic> json) {
  return _DetailCollectionModel.fromJson(json);
}

/// @nodoc
mixin _$DetailCollectionModel {
  String get collectionItemId => throw _privateConstructorUsedError;
  String get acquired => throw _privateConstructorUsedError;
  String get paid => throw _privateConstructorUsedError;
  String get salePrice => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCollectionModelCopyWith<DetailCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCollectionModelCopyWith<$Res> {
  factory $DetailCollectionModelCopyWith(DetailCollectionModel value,
          $Res Function(DetailCollectionModel) then) =
      _$DetailCollectionModelCopyWithImpl<$Res, DetailCollectionModel>;
  @useResult
  $Res call(
      {String collectionItemId,
      String acquired,
      String paid,
      String salePrice,
      String condition});
}

/// @nodoc
class _$DetailCollectionModelCopyWithImpl<$Res,
        $Val extends DetailCollectionModel>
    implements $DetailCollectionModelCopyWith<$Res> {
  _$DetailCollectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionItemId = null,
    Object? acquired = null,
    Object? paid = null,
    Object? salePrice = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      collectionItemId: null == collectionItemId
          ? _value.collectionItemId
          : collectionItemId // ignore: cast_nullable_to_non_nullable
              as String,
      acquired: null == acquired
          ? _value.acquired
          : acquired // ignore: cast_nullable_to_non_nullable
              as String,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailCollectionModelCopyWith<$Res>
    implements $DetailCollectionModelCopyWith<$Res> {
  factory _$$_DetailCollectionModelCopyWith(_$_DetailCollectionModel value,
          $Res Function(_$_DetailCollectionModel) then) =
      __$$_DetailCollectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String collectionItemId,
      String acquired,
      String paid,
      String salePrice,
      String condition});
}

/// @nodoc
class __$$_DetailCollectionModelCopyWithImpl<$Res>
    extends _$DetailCollectionModelCopyWithImpl<$Res, _$_DetailCollectionModel>
    implements _$$_DetailCollectionModelCopyWith<$Res> {
  __$$_DetailCollectionModelCopyWithImpl(_$_DetailCollectionModel _value,
      $Res Function(_$_DetailCollectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionItemId = null,
    Object? acquired = null,
    Object? paid = null,
    Object? salePrice = null,
    Object? condition = null,
  }) {
    return _then(_$_DetailCollectionModel(
      collectionItemId: null == collectionItemId
          ? _value.collectionItemId
          : collectionItemId // ignore: cast_nullable_to_non_nullable
              as String,
      acquired: null == acquired
          ? _value.acquired
          : acquired // ignore: cast_nullable_to_non_nullable
              as String,
      paid: null == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_DetailCollectionModel implements _DetailCollectionModel {
  const _$_DetailCollectionModel(
      {required this.collectionItemId,
      required this.acquired,
      required this.paid,
      required this.salePrice,
      required this.condition});

  factory _$_DetailCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailCollectionModelFromJson(json);

  @override
  final String collectionItemId;
  @override
  final String acquired;
  @override
  final String paid;
  @override
  final String salePrice;
  @override
  final String condition;

  @override
  String toString() {
    return 'DetailCollectionModel(collectionItemId: $collectionItemId, acquired: $acquired, paid: $paid, salePrice: $salePrice, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailCollectionModel &&
            (identical(other.collectionItemId, collectionItemId) ||
                other.collectionItemId == collectionItemId) &&
            (identical(other.acquired, acquired) ||
                other.acquired == acquired) &&
            (identical(other.paid, paid) || other.paid == paid) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, collectionItemId, acquired, paid, salePrice, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailCollectionModelCopyWith<_$_DetailCollectionModel> get copyWith =>
      __$$_DetailCollectionModelCopyWithImpl<_$_DetailCollectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailCollectionModelToJson(
      this,
    );
  }
}

abstract class _DetailCollectionModel implements DetailCollectionModel {
  const factory _DetailCollectionModel(
      {required final String collectionItemId,
      required final String acquired,
      required final String paid,
      required final String salePrice,
      required final String condition}) = _$_DetailCollectionModel;

  factory _DetailCollectionModel.fromJson(Map<String, dynamic> json) =
      _$_DetailCollectionModel.fromJson;

  @override
  String get collectionItemId;
  @override
  String get acquired;
  @override
  String get paid;
  @override
  String get salePrice;
  @override
  String get condition;
  @override
  @JsonKey(ignore: true)
  _$$_DetailCollectionModelCopyWith<_$_DetailCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
