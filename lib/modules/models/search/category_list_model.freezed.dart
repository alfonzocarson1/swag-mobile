// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryListModel _$CategoryListModelFromJson(Map<String, dynamic> json) {
  return _CategoryListModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryListModel {
  List<CategoryModel>? get categoryList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryListModelCopyWith<CategoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListModelCopyWith<$Res> {
  factory $CategoryListModelCopyWith(
          CategoryListModel value, $Res Function(CategoryListModel) then) =
      _$CategoryListModelCopyWithImpl<$Res, CategoryListModel>;
  @useResult
  $Res call({List<CategoryModel>? categoryList});
}

/// @nodoc
class _$CategoryListModelCopyWithImpl<$Res, $Val extends CategoryListModel>
    implements $CategoryListModelCopyWith<$Res> {
  _$CategoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = freezed,
  }) {
    return _then(_value.copyWith(
      categoryList: freezed == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryListModelCopyWith<$Res>
    implements $CategoryListModelCopyWith<$Res> {
  factory _$$_CategoryListModelCopyWith(_$_CategoryListModel value,
          $Res Function(_$_CategoryListModel) then) =
      __$$_CategoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel>? categoryList});
}

/// @nodoc
class __$$_CategoryListModelCopyWithImpl<$Res>
    extends _$CategoryListModelCopyWithImpl<$Res, _$_CategoryListModel>
    implements _$$_CategoryListModelCopyWith<$Res> {
  __$$_CategoryListModelCopyWithImpl(
      _$_CategoryListModel _value, $Res Function(_$_CategoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = freezed,
  }) {
    return _then(_$_CategoryListModel(
      categoryList: freezed == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryListModel implements _CategoryListModel {
  const _$_CategoryListModel({final List<CategoryModel>? categoryList})
      : _categoryList = categoryList;

  factory _$_CategoryListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryListModelFromJson(json);

  final List<CategoryModel>? _categoryList;
  @override
  List<CategoryModel>? get categoryList {
    final value = _categoryList;
    if (value == null) return null;
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryListModel(categoryList: $categoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryListModel &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryListModelCopyWith<_$_CategoryListModel> get copyWith =>
      __$$_CategoryListModelCopyWithImpl<_$_CategoryListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryListModelToJson(
      this,
    );
  }
}

abstract class _CategoryListModel implements CategoryListModel {
  const factory _CategoryListModel({final List<CategoryModel>? categoryList}) =
      _$_CategoryListModel;

  factory _CategoryListModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryListModel.fromJson;

  @override
  List<CategoryModel>? get categoryList;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryListModelCopyWith<_$_CategoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
