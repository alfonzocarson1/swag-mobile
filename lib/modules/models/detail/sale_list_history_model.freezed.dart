// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_list_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesHistoryListModel _$SalesHistoryListModelFromJson(
    Map<String, dynamic> json) {
  return _SalesHistoryListModel.fromJson(json);
}

/// @nodoc
mixin _$SalesHistoryListModel {
  List<SalesHistoryModel>? get saleHistoryList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesHistoryListModelCopyWith<SalesHistoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesHistoryListModelCopyWith<$Res> {
  factory $SalesHistoryListModelCopyWith(SalesHistoryListModel value,
          $Res Function(SalesHistoryListModel) then) =
      _$SalesHistoryListModelCopyWithImpl<$Res, SalesHistoryListModel>;
  @useResult
  $Res call({List<SalesHistoryModel>? saleHistoryList});
}

/// @nodoc
class _$SalesHistoryListModelCopyWithImpl<$Res,
        $Val extends SalesHistoryListModel>
    implements $SalesHistoryListModelCopyWith<$Res> {
  _$SalesHistoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleHistoryList = freezed,
  }) {
    return _then(_value.copyWith(
      saleHistoryList: freezed == saleHistoryList
          ? _value.saleHistoryList
          : saleHistoryList // ignore: cast_nullable_to_non_nullable
              as List<SalesHistoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalesHistoryListModelCopyWith<$Res>
    implements $SalesHistoryListModelCopyWith<$Res> {
  factory _$$_SalesHistoryListModelCopyWith(_$_SalesHistoryListModel value,
          $Res Function(_$_SalesHistoryListModel) then) =
      __$$_SalesHistoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SalesHistoryModel>? saleHistoryList});
}

/// @nodoc
class __$$_SalesHistoryListModelCopyWithImpl<$Res>
    extends _$SalesHistoryListModelCopyWithImpl<$Res, _$_SalesHistoryListModel>
    implements _$$_SalesHistoryListModelCopyWith<$Res> {
  __$$_SalesHistoryListModelCopyWithImpl(_$_SalesHistoryListModel _value,
      $Res Function(_$_SalesHistoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saleHistoryList = freezed,
  }) {
    return _then(_$_SalesHistoryListModel(
      saleHistoryList: freezed == saleHistoryList
          ? _value._saleHistoryList
          : saleHistoryList // ignore: cast_nullable_to_non_nullable
              as List<SalesHistoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalesHistoryListModel implements _SalesHistoryListModel {
  const _$_SalesHistoryListModel(
      {final List<SalesHistoryModel>? saleHistoryList})
      : _saleHistoryList = saleHistoryList;

  factory _$_SalesHistoryListModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalesHistoryListModelFromJson(json);

  final List<SalesHistoryModel>? _saleHistoryList;
  @override
  List<SalesHistoryModel>? get saleHistoryList {
    final value = _saleHistoryList;
    if (value == null) return null;
    if (_saleHistoryList is EqualUnmodifiableListView) return _saleHistoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesHistoryListModel(saleHistoryList: $saleHistoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesHistoryListModel &&
            const DeepCollectionEquality()
                .equals(other._saleHistoryList, _saleHistoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_saleHistoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalesHistoryListModelCopyWith<_$_SalesHistoryListModel> get copyWith =>
      __$$_SalesHistoryListModelCopyWithImpl<_$_SalesHistoryListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesHistoryListModelToJson(
      this,
    );
  }
}

abstract class _SalesHistoryListModel implements SalesHistoryListModel {
  const factory _SalesHistoryListModel(
          {final List<SalesHistoryModel>? saleHistoryList}) =
      _$_SalesHistoryListModel;

  factory _SalesHistoryListModel.fromJson(Map<String, dynamic> json) =
      _$_SalesHistoryListModel.fromJson;

  @override
  List<SalesHistoryModel>? get saleHistoryList;
  @override
  @JsonKey(ignore: true)
  _$$_SalesHistoryListModelCopyWith<_$_SalesHistoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
