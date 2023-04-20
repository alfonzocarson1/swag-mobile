// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListingForSaleProfileResponseModel _$ListingForSaleProfileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ListingForSaleProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ListingForSaleProfileResponseModel {
  List<ListingForSaleModel> get listForSale =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListingForSaleProfileResponseModelCopyWith<
          ListingForSaleProfileResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingForSaleProfileResponseModelCopyWith<$Res> {
  factory $ListingForSaleProfileResponseModelCopyWith(
          ListingForSaleProfileResponseModel value,
          $Res Function(ListingForSaleProfileResponseModel) then) =
      _$ListingForSaleProfileResponseModelCopyWithImpl<$Res,
          ListingForSaleProfileResponseModel>;
  @useResult
  $Res call({List<ListingForSaleModel> listForSale});
}

/// @nodoc
class _$ListingForSaleProfileResponseModelCopyWithImpl<$Res,
        $Val extends ListingForSaleProfileResponseModel>
    implements $ListingForSaleProfileResponseModelCopyWith<$Res> {
  _$ListingForSaleProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForSale = null,
  }) {
    return _then(_value.copyWith(
      listForSale: null == listForSale
          ? _value.listForSale
          : listForSale // ignore: cast_nullable_to_non_nullable
              as List<ListingForSaleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListingForSaleProfileResponseModelCopyWith<$Res>
    implements $ListingForSaleProfileResponseModelCopyWith<$Res> {
  factory _$$_ListingForSaleProfileResponseModelCopyWith(
          _$_ListingForSaleProfileResponseModel value,
          $Res Function(_$_ListingForSaleProfileResponseModel) then) =
      __$$_ListingForSaleProfileResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ListingForSaleModel> listForSale});
}

/// @nodoc
class __$$_ListingForSaleProfileResponseModelCopyWithImpl<$Res>
    extends _$ListingForSaleProfileResponseModelCopyWithImpl<$Res,
        _$_ListingForSaleProfileResponseModel>
    implements _$$_ListingForSaleProfileResponseModelCopyWith<$Res> {
  __$$_ListingForSaleProfileResponseModelCopyWithImpl(
      _$_ListingForSaleProfileResponseModel _value,
      $Res Function(_$_ListingForSaleProfileResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listForSale = null,
  }) {
    return _then(_$_ListingForSaleProfileResponseModel(
      listForSale: null == listForSale
          ? _value._listForSale
          : listForSale // ignore: cast_nullable_to_non_nullable
              as List<ListingForSaleModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ListingForSaleProfileResponseModel
    implements _ListingForSaleProfileResponseModel {
  const _$_ListingForSaleProfileResponseModel(
      {required final List<ListingForSaleModel> listForSale})
      : _listForSale = listForSale;

  factory _$_ListingForSaleProfileResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ListingForSaleProfileResponseModelFromJson(json);

  final List<ListingForSaleModel> _listForSale;
  @override
  List<ListingForSaleModel> get listForSale {
    if (_listForSale is EqualUnmodifiableListView) return _listForSale;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listForSale);
  }

  @override
  String toString() {
    return 'ListingForSaleProfileResponseModel(listForSale: $listForSale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListingForSaleProfileResponseModel &&
            const DeepCollectionEquality()
                .equals(other._listForSale, _listForSale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listForSale));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListingForSaleProfileResponseModelCopyWith<
          _$_ListingForSaleProfileResponseModel>
      get copyWith => __$$_ListingForSaleProfileResponseModelCopyWithImpl<
          _$_ListingForSaleProfileResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListingForSaleProfileResponseModelToJson(
      this,
    );
  }
}

abstract class _ListingForSaleProfileResponseModel
    implements ListingForSaleProfileResponseModel {
  const factory _ListingForSaleProfileResponseModel(
          {required final List<ListingForSaleModel> listForSale}) =
      _$_ListingForSaleProfileResponseModel;

  factory _ListingForSaleProfileResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_ListingForSaleProfileResponseModel.fromJson;

  @override
  List<ListingForSaleModel> get listForSale;
  @override
  @JsonKey(ignore: true)
  _$$_ListingForSaleProfileResponseModelCopyWith<
          _$_ListingForSaleProfileResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
