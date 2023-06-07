// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCollectionModel _$AddCollectionModelFromJson(Map<String, dynamic> json) {
  return _AddCollectionModel.fromJson(json);
}

/// @nodoc
mixin _$AddCollectionModel {
  String? get accountId => throw _privateConstructorUsedError;
  String? get collectionItemsAction => throw _privateConstructorUsedError;
  String? get deleteReason => throw _privateConstructorUsedError;
  List<AddCollectionItemPayloadModel>? get profileCollectionItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCollectionModelCopyWith<AddCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCollectionModelCopyWith<$Res> {
  factory $AddCollectionModelCopyWith(
          AddCollectionModel value, $Res Function(AddCollectionModel) then) =
      _$AddCollectionModelCopyWithImpl<$Res, AddCollectionModel>;
  @useResult
  $Res call(
      {String? accountId,
      String? collectionItemsAction,
      String? deleteReason,
      List<AddCollectionItemPayloadModel>? profileCollectionItems});
}

/// @nodoc
class _$AddCollectionModelCopyWithImpl<$Res, $Val extends AddCollectionModel>
    implements $AddCollectionModelCopyWith<$Res> {
  _$AddCollectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? collectionItemsAction = freezed,
    Object? deleteReason = freezed,
    Object? profileCollectionItems = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionItemsAction: freezed == collectionItemsAction
          ? _value.collectionItemsAction
          : collectionItemsAction // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteReason: freezed == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String?,
      profileCollectionItems: freezed == profileCollectionItems
          ? _value.profileCollectionItems
          : profileCollectionItems // ignore: cast_nullable_to_non_nullable
              as List<AddCollectionItemPayloadModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCollectionModelCopyWith<$Res>
    implements $AddCollectionModelCopyWith<$Res> {
  factory _$$_AddCollectionModelCopyWith(_$_AddCollectionModel value,
          $Res Function(_$_AddCollectionModel) then) =
      __$$_AddCollectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountId,
      String? collectionItemsAction,
      String? deleteReason,
      List<AddCollectionItemPayloadModel>? profileCollectionItems});
}

/// @nodoc
class __$$_AddCollectionModelCopyWithImpl<$Res>
    extends _$AddCollectionModelCopyWithImpl<$Res, _$_AddCollectionModel>
    implements _$$_AddCollectionModelCopyWith<$Res> {
  __$$_AddCollectionModelCopyWithImpl(
      _$_AddCollectionModel _value, $Res Function(_$_AddCollectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? collectionItemsAction = freezed,
    Object? deleteReason = freezed,
    Object? profileCollectionItems = freezed,
  }) {
    return _then(_$_AddCollectionModel(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionItemsAction: freezed == collectionItemsAction
          ? _value.collectionItemsAction
          : collectionItemsAction // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteReason: freezed == deleteReason
          ? _value.deleteReason
          : deleteReason // ignore: cast_nullable_to_non_nullable
              as String?,
      profileCollectionItems: freezed == profileCollectionItems
          ? _value._profileCollectionItems
          : profileCollectionItems // ignore: cast_nullable_to_non_nullable
              as List<AddCollectionItemPayloadModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_AddCollectionModel implements _AddCollectionModel {
  const _$_AddCollectionModel(
      {this.accountId,
      this.collectionItemsAction,
      this.deleteReason,
      final List<AddCollectionItemPayloadModel>? profileCollectionItems})
      : _profileCollectionItems = profileCollectionItems;

  factory _$_AddCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddCollectionModelFromJson(json);

  @override
  final String? accountId;
  @override
  final String? collectionItemsAction;
  @override
  final String? deleteReason;
  final List<AddCollectionItemPayloadModel>? _profileCollectionItems;
  @override
  List<AddCollectionItemPayloadModel>? get profileCollectionItems {
    final value = _profileCollectionItems;
    if (value == null) return null;
    if (_profileCollectionItems is EqualUnmodifiableListView)
      return _profileCollectionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddCollectionModel(accountId: $accountId, collectionItemsAction: $collectionItemsAction, deleteReason: $deleteReason, profileCollectionItems: $profileCollectionItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCollectionModel &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.collectionItemsAction, collectionItemsAction) ||
                other.collectionItemsAction == collectionItemsAction) &&
            (identical(other.deleteReason, deleteReason) ||
                other.deleteReason == deleteReason) &&
            const DeepCollectionEquality().equals(
                other._profileCollectionItems, _profileCollectionItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountId,
      collectionItemsAction,
      deleteReason,
      const DeepCollectionEquality().hash(_profileCollectionItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCollectionModelCopyWith<_$_AddCollectionModel> get copyWith =>
      __$$_AddCollectionModelCopyWithImpl<_$_AddCollectionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddCollectionModelToJson(
      this,
    );
  }
}

abstract class _AddCollectionModel implements AddCollectionModel {
  const factory _AddCollectionModel(
          {final String? accountId,
          final String? collectionItemsAction,
          final String? deleteReason,
          final List<AddCollectionItemPayloadModel>? profileCollectionItems}) =
      _$_AddCollectionModel;

  factory _AddCollectionModel.fromJson(Map<String, dynamic> json) =
      _$_AddCollectionModel.fromJson;

  @override
  String? get accountId;
  @override
  String? get collectionItemsAction;
  @override
  String? get deleteReason;
  @override
  List<AddCollectionItemPayloadModel>? get profileCollectionItems;
  @override
  @JsonKey(ignore: true)
  _$$_AddCollectionModelCopyWith<_$_AddCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
