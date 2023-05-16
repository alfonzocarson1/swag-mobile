// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_collection_items_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCollectionItemPayloadModel _$AddCollectionItemPayloadModelFromJson(
    Map<String, dynamic> json) {
  return _AddCollectionItemPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$AddCollectionItemPayloadModel {
  String? get profileCollectionItemId => throw _privateConstructorUsedError;
  String? get catalogItemId => throw _privateConstructorUsedError;
  String? get purchaseDate => throw _privateConstructorUsedError;
  double? get purchasePrice => throw _privateConstructorUsedError;
  String? get itemCondition => throw _privateConstructorUsedError;
  String? get itemSource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCollectionItemPayloadModelCopyWith<AddCollectionItemPayloadModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCollectionItemPayloadModelCopyWith<$Res> {
  factory $AddCollectionItemPayloadModelCopyWith(
          AddCollectionItemPayloadModel value,
          $Res Function(AddCollectionItemPayloadModel) then) =
      _$AddCollectionItemPayloadModelCopyWithImpl<$Res,
          AddCollectionItemPayloadModel>;
  @useResult
  $Res call(
      {String? profileCollectionItemId,
      String? catalogItemId,
      String? purchaseDate,
      double? purchasePrice,
      String? itemCondition,
      String? itemSource});
}

/// @nodoc
class _$AddCollectionItemPayloadModelCopyWithImpl<$Res,
        $Val extends AddCollectionItemPayloadModel>
    implements $AddCollectionItemPayloadModelCopyWith<$Res> {
  _$AddCollectionItemPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileCollectionItemId = freezed,
    Object? catalogItemId = freezed,
    Object? purchaseDate = freezed,
    Object? purchasePrice = freezed,
    Object? itemCondition = freezed,
    Object? itemSource = freezed,
  }) {
    return _then(_value.copyWith(
      profileCollectionItemId: freezed == profileCollectionItemId
          ? _value.profileCollectionItemId
          : profileCollectionItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogItemId: freezed == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      itemCondition: freezed == itemCondition
          ? _value.itemCondition
          : itemCondition // ignore: cast_nullable_to_non_nullable
              as String?,
      itemSource: freezed == itemSource
          ? _value.itemSource
          : itemSource // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCollectionItemPayloadModelCopyWith<$Res>
    implements $AddCollectionItemPayloadModelCopyWith<$Res> {
  factory _$$_AddCollectionItemPayloadModelCopyWith(
          _$_AddCollectionItemPayloadModel value,
          $Res Function(_$_AddCollectionItemPayloadModel) then) =
      __$$_AddCollectionItemPayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? profileCollectionItemId,
      String? catalogItemId,
      String? purchaseDate,
      double? purchasePrice,
      String? itemCondition,
      String? itemSource});
}

/// @nodoc
class __$$_AddCollectionItemPayloadModelCopyWithImpl<$Res>
    extends _$AddCollectionItemPayloadModelCopyWithImpl<$Res,
        _$_AddCollectionItemPayloadModel>
    implements _$$_AddCollectionItemPayloadModelCopyWith<$Res> {
  __$$_AddCollectionItemPayloadModelCopyWithImpl(
      _$_AddCollectionItemPayloadModel _value,
      $Res Function(_$_AddCollectionItemPayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileCollectionItemId = freezed,
    Object? catalogItemId = freezed,
    Object? purchaseDate = freezed,
    Object? purchasePrice = freezed,
    Object? itemCondition = freezed,
    Object? itemSource = freezed,
  }) {
    return _then(_$_AddCollectionItemPayloadModel(
      profileCollectionItemId: freezed == profileCollectionItemId
          ? _value.profileCollectionItemId
          : profileCollectionItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      catalogItemId: freezed == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      itemCondition: freezed == itemCondition
          ? _value.itemCondition
          : itemCondition // ignore: cast_nullable_to_non_nullable
              as String?,
      itemSource: freezed == itemSource
          ? _value.itemSource
          : itemSource // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddCollectionItemPayloadModel
    implements _AddCollectionItemPayloadModel {
  const _$_AddCollectionItemPayloadModel(
      {this.profileCollectionItemId,
      this.catalogItemId,
      this.purchaseDate,
      this.purchasePrice,
      this.itemCondition,
      this.itemSource});

  factory _$_AddCollectionItemPayloadModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_AddCollectionItemPayloadModelFromJson(json);

  @override
  final String? profileCollectionItemId;
  @override
  final String? catalogItemId;
  @override
  final String? purchaseDate;
  @override
  final double? purchasePrice;
  @override
  final String? itemCondition;
  @override
  final String? itemSource;

  @override
  String toString() {
    return 'AddCollectionItemPayloadModel(profileCollectionItemId: $profileCollectionItemId, catalogItemId: $catalogItemId, purchaseDate: $purchaseDate, purchasePrice: $purchasePrice, itemCondition: $itemCondition, itemSource: $itemSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCollectionItemPayloadModel &&
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
                other.itemSource == itemSource));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, profileCollectionItemId,
      catalogItemId, purchaseDate, purchasePrice, itemCondition, itemSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCollectionItemPayloadModelCopyWith<_$_AddCollectionItemPayloadModel>
      get copyWith => __$$_AddCollectionItemPayloadModelCopyWithImpl<
          _$_AddCollectionItemPayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddCollectionItemPayloadModelToJson(
      this,
    );
  }
}

abstract class _AddCollectionItemPayloadModel
    implements AddCollectionItemPayloadModel {
  const factory _AddCollectionItemPayloadModel(
      {final String? profileCollectionItemId,
      final String? catalogItemId,
      final String? purchaseDate,
      final double? purchasePrice,
      final String? itemCondition,
      final String? itemSource}) = _$_AddCollectionItemPayloadModel;

  factory _AddCollectionItemPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_AddCollectionItemPayloadModel.fromJson;

  @override
  String? get profileCollectionItemId;
  @override
  String? get catalogItemId;
  @override
  String? get purchaseDate;
  @override
  double? get purchasePrice;
  @override
  String? get itemCondition;
  @override
  String? get itemSource;
  @override
  @JsonKey(ignore: true)
  _$$_AddCollectionItemPayloadModelCopyWith<_$_AddCollectionItemPayloadModel>
      get copyWith => throw _privateConstructorUsedError;
}
