// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_product_item_sold_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListProductItemsSoldResponseModel _$ListProductItemsSoldResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ListProductItemsSoldResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ListProductItemsSoldResponseModel {
  List<ProductItemSold> get productItemsSold =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListProductItemsSoldResponseModelCopyWith<ListProductItemsSoldResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListProductItemsSoldResponseModelCopyWith<$Res> {
  factory $ListProductItemsSoldResponseModelCopyWith(
          ListProductItemsSoldResponseModel value,
          $Res Function(ListProductItemsSoldResponseModel) then) =
      _$ListProductItemsSoldResponseModelCopyWithImpl<$Res,
          ListProductItemsSoldResponseModel>;
  @useResult
  $Res call({List<ProductItemSold> productItemsSold});
}

/// @nodoc
class _$ListProductItemsSoldResponseModelCopyWithImpl<$Res,
        $Val extends ListProductItemsSoldResponseModel>
    implements $ListProductItemsSoldResponseModelCopyWith<$Res> {
  _$ListProductItemsSoldResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemsSold = null,
  }) {
    return _then(_value.copyWith(
      productItemsSold: null == productItemsSold
          ? _value.productItemsSold
          : productItemsSold // ignore: cast_nullable_to_non_nullable
              as List<ProductItemSold>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListProductItemsSoldResponseModelCopyWith<$Res>
    implements $ListProductItemsSoldResponseModelCopyWith<$Res> {
  factory _$$_ListProductItemsSoldResponseModelCopyWith(
          _$_ListProductItemsSoldResponseModel value,
          $Res Function(_$_ListProductItemsSoldResponseModel) then) =
      __$$_ListProductItemsSoldResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductItemSold> productItemsSold});
}

/// @nodoc
class __$$_ListProductItemsSoldResponseModelCopyWithImpl<$Res>
    extends _$ListProductItemsSoldResponseModelCopyWithImpl<$Res,
        _$_ListProductItemsSoldResponseModel>
    implements _$$_ListProductItemsSoldResponseModelCopyWith<$Res> {
  __$$_ListProductItemsSoldResponseModelCopyWithImpl(
      _$_ListProductItemsSoldResponseModel _value,
      $Res Function(_$_ListProductItemsSoldResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productItemsSold = null,
  }) {
    return _then(_$_ListProductItemsSoldResponseModel(
      productItemsSold: null == productItemsSold
          ? _value._productItemsSold
          : productItemsSold // ignore: cast_nullable_to_non_nullable
              as List<ProductItemSold>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ListProductItemsSoldResponseModel
    implements _ListProductItemsSoldResponseModel {
  const _$_ListProductItemsSoldResponseModel(
      {required final List<ProductItemSold> productItemsSold})
      : _productItemsSold = productItemsSold;

  factory _$_ListProductItemsSoldResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ListProductItemsSoldResponseModelFromJson(json);

  final List<ProductItemSold> _productItemsSold;
  @override
  List<ProductItemSold> get productItemsSold {
    if (_productItemsSold is EqualUnmodifiableListView)
      return _productItemsSold;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productItemsSold);
  }

  @override
  String toString() {
    return 'ListProductItemsSoldResponseModel(productItemsSold: $productItemsSold)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListProductItemsSoldResponseModel &&
            const DeepCollectionEquality()
                .equals(other._productItemsSold, _productItemsSold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productItemsSold));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListProductItemsSoldResponseModelCopyWith<
          _$_ListProductItemsSoldResponseModel>
      get copyWith => __$$_ListProductItemsSoldResponseModelCopyWithImpl<
          _$_ListProductItemsSoldResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListProductItemsSoldResponseModelToJson(
      this,
    );
  }
}

abstract class _ListProductItemsSoldResponseModel
    implements ListProductItemsSoldResponseModel {
  const factory _ListProductItemsSoldResponseModel(
          {required final List<ProductItemSold> productItemsSold}) =
      _$_ListProductItemsSoldResponseModel;

  factory _ListProductItemsSoldResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_ListProductItemsSoldResponseModel.fromJson;

  @override
  List<ProductItemSold> get productItemsSold;
  @override
  @JsonKey(ignore: true)
  _$$_ListProductItemsSoldResponseModelCopyWith<
          _$_ListProductItemsSoldResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
