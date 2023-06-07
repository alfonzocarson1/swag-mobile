// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buy_for_sale_listing_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuyForSaleListingResponseModel _$BuyForSaleListingResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BuyForSaleListingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BuyForSaleListingResponseModel {
  List<BuyForSaleListingModel> get saledItemdList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyForSaleListingResponseModelCopyWith<BuyForSaleListingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyForSaleListingResponseModelCopyWith<$Res> {
  factory $BuyForSaleListingResponseModelCopyWith(
          BuyForSaleListingResponseModel value,
          $Res Function(BuyForSaleListingResponseModel) then) =
      _$BuyForSaleListingResponseModelCopyWithImpl<$Res,
          BuyForSaleListingResponseModel>;
  @useResult
  $Res call({List<BuyForSaleListingModel> saledItemdList});
}

/// @nodoc
class _$BuyForSaleListingResponseModelCopyWithImpl<$Res,
        $Val extends BuyForSaleListingResponseModel>
    implements $BuyForSaleListingResponseModelCopyWith<$Res> {
  _$BuyForSaleListingResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saledItemdList = null,
  }) {
    return _then(_value.copyWith(
      saledItemdList: null == saledItemdList
          ? _value.saledItemdList
          : saledItemdList // ignore: cast_nullable_to_non_nullable
              as List<BuyForSaleListingModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BuyForSaleListingResponseModelCopyWith<$Res>
    implements $BuyForSaleListingResponseModelCopyWith<$Res> {
  factory _$$_BuyForSaleListingResponseModelCopyWith(
          _$_BuyForSaleListingResponseModel value,
          $Res Function(_$_BuyForSaleListingResponseModel) then) =
      __$$_BuyForSaleListingResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BuyForSaleListingModel> saledItemdList});
}

/// @nodoc
class __$$_BuyForSaleListingResponseModelCopyWithImpl<$Res>
    extends _$BuyForSaleListingResponseModelCopyWithImpl<$Res,
        _$_BuyForSaleListingResponseModel>
    implements _$$_BuyForSaleListingResponseModelCopyWith<$Res> {
  __$$_BuyForSaleListingResponseModelCopyWithImpl(
      _$_BuyForSaleListingResponseModel _value,
      $Res Function(_$_BuyForSaleListingResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saledItemdList = null,
  }) {
    return _then(_$_BuyForSaleListingResponseModel(
      saledItemdList: null == saledItemdList
          ? _value._saledItemdList
          : saledItemdList // ignore: cast_nullable_to_non_nullable
              as List<BuyForSaleListingModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_BuyForSaleListingResponseModel
    implements _BuyForSaleListingResponseModel {
  const _$_BuyForSaleListingResponseModel(
      {required final List<BuyForSaleListingModel> saledItemdList})
      : _saledItemdList = saledItemdList;

  factory _$_BuyForSaleListingResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_BuyForSaleListingResponseModelFromJson(json);

  final List<BuyForSaleListingModel> _saledItemdList;
  @override
  List<BuyForSaleListingModel> get saledItemdList {
    if (_saledItemdList is EqualUnmodifiableListView) return _saledItemdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saledItemdList);
  }

  @override
  String toString() {
    return 'BuyForSaleListingResponseModel(saledItemdList: $saledItemdList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyForSaleListingResponseModel &&
            const DeepCollectionEquality()
                .equals(other._saledItemdList, _saledItemdList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_saledItemdList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuyForSaleListingResponseModelCopyWith<_$_BuyForSaleListingResponseModel>
      get copyWith => __$$_BuyForSaleListingResponseModelCopyWithImpl<
          _$_BuyForSaleListingResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyForSaleListingResponseModelToJson(
      this,
    );
  }
}

abstract class _BuyForSaleListingResponseModel
    implements BuyForSaleListingResponseModel {
  const factory _BuyForSaleListingResponseModel(
          {required final List<BuyForSaleListingModel> saledItemdList}) =
      _$_BuyForSaleListingResponseModel;

  factory _BuyForSaleListingResponseModel.fromJson(Map<String, dynamic> json) =
      _$_BuyForSaleListingResponseModel.fromJson;

  @override
  List<BuyForSaleListingModel> get saledItemdList;
  @override
  @JsonKey(ignore: true)
  _$$_BuyForSaleListingResponseModelCopyWith<_$_BuyForSaleListingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
