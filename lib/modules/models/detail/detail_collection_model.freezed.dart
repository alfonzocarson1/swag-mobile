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
  String get profileCollectionItemId => throw _privateConstructorUsedError;
  String get catalogItemId => throw _privateConstructorUsedError;
  String get purchaseDate => throw _privateConstructorUsedError;
  double get purchasePrice => throw _privateConstructorUsedError;
  String get itemCondition => throw _privateConstructorUsedError;
  String get itemSource => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

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
      {String profileCollectionItemId,
      String catalogItemId,
      String purchaseDate,
      double purchasePrice,
      String itemCondition,
      String itemSource,
      String? description});
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
    Object? profileCollectionItemId = null,
    Object? catalogItemId = null,
    Object? purchaseDate = null,
    Object? purchasePrice = null,
    Object? itemCondition = null,
    Object? itemSource = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      profileCollectionItemId: null == profileCollectionItemId
          ? _value.profileCollectionItemId
          : profileCollectionItemId // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemId: null == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
      itemCondition: null == itemCondition
          ? _value.itemCondition
          : itemCondition // ignore: cast_nullable_to_non_nullable
              as String,
      itemSource: null == itemSource
          ? _value.itemSource
          : itemSource // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String profileCollectionItemId,
      String catalogItemId,
      String purchaseDate,
      double purchasePrice,
      String itemCondition,
      String itemSource,
      String? description});
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
    Object? profileCollectionItemId = null,
    Object? catalogItemId = null,
    Object? purchaseDate = null,
    Object? purchasePrice = null,
    Object? itemCondition = null,
    Object? itemSource = null,
    Object? description = freezed,
  }) {
    return _then(_$_DetailCollectionModel(
      profileCollectionItemId: null == profileCollectionItemId
          ? _value.profileCollectionItemId
          : profileCollectionItemId // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemId: null == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseDate: null == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      purchasePrice: null == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double,
      itemCondition: null == itemCondition
          ? _value.itemCondition
          : itemCondition // ignore: cast_nullable_to_non_nullable
              as String,
      itemSource: null == itemSource
          ? _value.itemSource
          : itemSource // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_DetailCollectionModel implements _DetailCollectionModel {
  const _$_DetailCollectionModel(
      {required this.profileCollectionItemId,
      required this.catalogItemId,
      required this.purchaseDate,
      required this.purchasePrice,
      required this.itemCondition,
      required this.itemSource,
      this.description});

  factory _$_DetailCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_DetailCollectionModelFromJson(json);

  @override
  final String profileCollectionItemId;
  @override
  final String catalogItemId;
  @override
  final String purchaseDate;
  @override
  final double purchasePrice;
  @override
  final String itemCondition;
  @override
  final String itemSource;
  @override
  final String? description;

  @override
  String toString() {
    return 'DetailCollectionModel(profileCollectionItemId: $profileCollectionItemId, catalogItemId: $catalogItemId, purchaseDate: $purchaseDate, purchasePrice: $purchasePrice, itemCondition: $itemCondition, itemSource: $itemSource, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailCollectionModel &&
            (identical(
                    other.profileCollectionItemId, profileCollectionItemId) ||
                other.profileCollectionItemId == profileCollectionItemId) &&
            (identical(other.catalogItemId, catalogItemId) ||
                other.catalogItemId == catalogItemId) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            (identical(other.purchasePrice, purchasePrice) ||
                other.purchasePrice == purchasePrice) &&
            (identical(other.itemCondition, itemCondition) ||
                other.itemCondition == itemCondition) &&
            (identical(other.itemSource, itemSource) ||
                other.itemSource == itemSource) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileCollectionItemId,
      catalogItemId,
      purchaseDate,
      purchasePrice,
      itemCondition,
      itemSource,
      description);

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
      {required final String profileCollectionItemId,
      required final String catalogItemId,
      required final String purchaseDate,
      required final double purchasePrice,
      required final String itemCondition,
      required final String itemSource,
      final String? description}) = _$_DetailCollectionModel;

  factory _DetailCollectionModel.fromJson(Map<String, dynamic> json) =
      _$_DetailCollectionModel.fromJson;

  @override
  String get profileCollectionItemId;
  @override
  String get catalogItemId;
  @override
  String get purchaseDate;
  @override
  double get purchasePrice;
  @override
  String get itemCondition;
  @override
  String get itemSource;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_DetailCollectionModelCopyWith<_$_DetailCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
