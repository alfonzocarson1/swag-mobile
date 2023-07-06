// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseHistoryModel _$PurchaseHistoryModelFromJson(Map<String, dynamic> json) {
  return _PurchaseHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseHistoryModel {
  String? get accountId => throw _privateConstructorUsedError;
  List<PurchaseHistoryItemModel> get purchaseHistory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseHistoryModelCopyWith<PurchaseHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseHistoryModelCopyWith<$Res> {
  factory $PurchaseHistoryModelCopyWith(PurchaseHistoryModel value,
          $Res Function(PurchaseHistoryModel) then) =
      _$PurchaseHistoryModelCopyWithImpl<$Res, PurchaseHistoryModel>;
  @useResult
  $Res call(
      {String? accountId, List<PurchaseHistoryItemModel> purchaseHistory});
}

/// @nodoc
class _$PurchaseHistoryModelCopyWithImpl<$Res,
        $Val extends PurchaseHistoryModel>
    implements $PurchaseHistoryModelCopyWith<$Res> {
  _$PurchaseHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? purchaseHistory = null,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseHistory: null == purchaseHistory
          ? _value.purchaseHistory
          : purchaseHistory // ignore: cast_nullable_to_non_nullable
              as List<PurchaseHistoryItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseHistoryModelCopyWith<$Res>
    implements $PurchaseHistoryModelCopyWith<$Res> {
  factory _$$_PurchaseHistoryModelCopyWith(_$_PurchaseHistoryModel value,
          $Res Function(_$_PurchaseHistoryModel) then) =
      __$$_PurchaseHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountId, List<PurchaseHistoryItemModel> purchaseHistory});
}

/// @nodoc
class __$$_PurchaseHistoryModelCopyWithImpl<$Res>
    extends _$PurchaseHistoryModelCopyWithImpl<$Res, _$_PurchaseHistoryModel>
    implements _$$_PurchaseHistoryModelCopyWith<$Res> {
  __$$_PurchaseHistoryModelCopyWithImpl(_$_PurchaseHistoryModel _value,
      $Res Function(_$_PurchaseHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? purchaseHistory = null,
  }) {
    return _then(_$_PurchaseHistoryModel(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseHistory: null == purchaseHistory
          ? _value._purchaseHistory
          : purchaseHistory // ignore: cast_nullable_to_non_nullable
              as List<PurchaseHistoryItemModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_PurchaseHistoryModel implements _PurchaseHistoryModel {
  const _$_PurchaseHistoryModel(
      {this.accountId,
      required final List<PurchaseHistoryItemModel> purchaseHistory})
      : _purchaseHistory = purchaseHistory;

  factory _$_PurchaseHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseHistoryModelFromJson(json);

  @override
  final String? accountId;
  final List<PurchaseHistoryItemModel> _purchaseHistory;
  @override
  List<PurchaseHistoryItemModel> get purchaseHistory {
    if (_purchaseHistory is EqualUnmodifiableListView) return _purchaseHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchaseHistory);
  }

  @override
  String toString() {
    return 'PurchaseHistoryModel(accountId: $accountId, purchaseHistory: $purchaseHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseHistoryModel &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            const DeepCollectionEquality()
                .equals(other._purchaseHistory, _purchaseHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountId,
      const DeepCollectionEquality().hash(_purchaseHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseHistoryModelCopyWith<_$_PurchaseHistoryModel> get copyWith =>
      __$$_PurchaseHistoryModelCopyWithImpl<_$_PurchaseHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseHistoryModelToJson(
      this,
    );
  }
}

abstract class _PurchaseHistoryModel implements PurchaseHistoryModel {
  const factory _PurchaseHistoryModel(
          {final String? accountId,
          required final List<PurchaseHistoryItemModel> purchaseHistory}) =
      _$_PurchaseHistoryModel;

  factory _PurchaseHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseHistoryModel.fromJson;

  @override
  String? get accountId;
  @override
  List<PurchaseHistoryItemModel> get purchaseHistory;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseHistoryModelCopyWith<_$_PurchaseHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseHistoryItemModel _$PurchaseHistoryItemModelFromJson(
    Map<String, dynamic> json) {
  return _PurchaseHistoryItemModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseHistoryItemModel {
  String? get purchaseHistoryId => throw _privateConstructorUsedError;
  String? get purchaseDate => throw _privateConstructorUsedError;
  List<PurchaseItemModel> get purchaseItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseHistoryItemModelCopyWith<PurchaseHistoryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseHistoryItemModelCopyWith<$Res> {
  factory $PurchaseHistoryItemModelCopyWith(PurchaseHistoryItemModel value,
          $Res Function(PurchaseHistoryItemModel) then) =
      _$PurchaseHistoryItemModelCopyWithImpl<$Res, PurchaseHistoryItemModel>;
  @useResult
  $Res call(
      {String? purchaseHistoryId,
      String? purchaseDate,
      List<PurchaseItemModel> purchaseItems});
}

/// @nodoc
class _$PurchaseHistoryItemModelCopyWithImpl<$Res,
        $Val extends PurchaseHistoryItemModel>
    implements $PurchaseHistoryItemModelCopyWith<$Res> {
  _$PurchaseHistoryItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseHistoryId = freezed,
    Object? purchaseDate = freezed,
    Object? purchaseItems = null,
  }) {
    return _then(_value.copyWith(
      purchaseHistoryId: freezed == purchaseHistoryId
          ? _value.purchaseHistoryId
          : purchaseHistoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseItems: null == purchaseItems
          ? _value.purchaseItems
          : purchaseItems // ignore: cast_nullable_to_non_nullable
              as List<PurchaseItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseHistoryItemModelCopyWith<$Res>
    implements $PurchaseHistoryItemModelCopyWith<$Res> {
  factory _$$_PurchaseHistoryItemModelCopyWith(
          _$_PurchaseHistoryItemModel value,
          $Res Function(_$_PurchaseHistoryItemModel) then) =
      __$$_PurchaseHistoryItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? purchaseHistoryId,
      String? purchaseDate,
      List<PurchaseItemModel> purchaseItems});
}

/// @nodoc
class __$$_PurchaseHistoryItemModelCopyWithImpl<$Res>
    extends _$PurchaseHistoryItemModelCopyWithImpl<$Res,
        _$_PurchaseHistoryItemModel>
    implements _$$_PurchaseHistoryItemModelCopyWith<$Res> {
  __$$_PurchaseHistoryItemModelCopyWithImpl(_$_PurchaseHistoryItemModel _value,
      $Res Function(_$_PurchaseHistoryItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseHistoryId = freezed,
    Object? purchaseDate = freezed,
    Object? purchaseItems = null,
  }) {
    return _then(_$_PurchaseHistoryItemModel(
      purchaseHistoryId: freezed == purchaseHistoryId
          ? _value.purchaseHistoryId
          : purchaseHistoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseDate: freezed == purchaseDate
          ? _value.purchaseDate
          : purchaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseItems: null == purchaseItems
          ? _value._purchaseItems
          : purchaseItems // ignore: cast_nullable_to_non_nullable
              as List<PurchaseItemModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_PurchaseHistoryItemModel implements _PurchaseHistoryItemModel {
  const _$_PurchaseHistoryItemModel(
      {this.purchaseHistoryId,
      this.purchaseDate,
      required final List<PurchaseItemModel> purchaseItems})
      : _purchaseItems = purchaseItems;

  factory _$_PurchaseHistoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseHistoryItemModelFromJson(json);

  @override
  final String? purchaseHistoryId;
  @override
  final String? purchaseDate;
  final List<PurchaseItemModel> _purchaseItems;
  @override
  List<PurchaseItemModel> get purchaseItems {
    if (_purchaseItems is EqualUnmodifiableListView) return _purchaseItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_purchaseItems);
  }

  @override
  String toString() {
    return 'PurchaseHistoryItemModel(purchaseHistoryId: $purchaseHistoryId, purchaseDate: $purchaseDate, purchaseItems: $purchaseItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseHistoryItemModel &&
            (identical(other.purchaseHistoryId, purchaseHistoryId) ||
                other.purchaseHistoryId == purchaseHistoryId) &&
            (identical(other.purchaseDate, purchaseDate) ||
                other.purchaseDate == purchaseDate) &&
            const DeepCollectionEquality()
                .equals(other._purchaseItems, _purchaseItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, purchaseHistoryId, purchaseDate,
      const DeepCollectionEquality().hash(_purchaseItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseHistoryItemModelCopyWith<_$_PurchaseHistoryItemModel>
      get copyWith => __$$_PurchaseHistoryItemModelCopyWithImpl<
          _$_PurchaseHistoryItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseHistoryItemModelToJson(
      this,
    );
  }
}

abstract class _PurchaseHistoryItemModel implements PurchaseHistoryItemModel {
  const factory _PurchaseHistoryItemModel(
          {final String? purchaseHistoryId,
          final String? purchaseDate,
          required final List<PurchaseItemModel> purchaseItems}) =
      _$_PurchaseHistoryItemModel;

  factory _PurchaseHistoryItemModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseHistoryItemModel.fromJson;

  @override
  String? get purchaseHistoryId;
  @override
  String? get purchaseDate;
  @override
  List<PurchaseItemModel> get purchaseItems;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseHistoryItemModelCopyWith<_$_PurchaseHistoryItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

PurchaseItemModel _$PurchaseItemModelFromJson(Map<String, dynamic> json) {
  return _PurchaseItemModel.fromJson(json);
}

/// @nodoc
mixin _$PurchaseItemModel {
  String? get purchaseItemTitle => throw _privateConstructorUsedError;
  String? get purchaseItemImage => throw _privateConstructorUsedError;
  double get purchaseItemPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseItemModelCopyWith<PurchaseItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseItemModelCopyWith<$Res> {
  factory $PurchaseItemModelCopyWith(
          PurchaseItemModel value, $Res Function(PurchaseItemModel) then) =
      _$PurchaseItemModelCopyWithImpl<$Res, PurchaseItemModel>;
  @useResult
  $Res call(
      {String? purchaseItemTitle,
      String? purchaseItemImage,
      double purchaseItemPrice});
}

/// @nodoc
class _$PurchaseItemModelCopyWithImpl<$Res, $Val extends PurchaseItemModel>
    implements $PurchaseItemModelCopyWith<$Res> {
  _$PurchaseItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseItemTitle = freezed,
    Object? purchaseItemImage = freezed,
    Object? purchaseItemPrice = null,
  }) {
    return _then(_value.copyWith(
      purchaseItemTitle: freezed == purchaseItemTitle
          ? _value.purchaseItemTitle
          : purchaseItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseItemImage: freezed == purchaseItemImage
          ? _value.purchaseItemImage
          : purchaseItemImage // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseItemPrice: null == purchaseItemPrice
          ? _value.purchaseItemPrice
          : purchaseItemPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseItemModelCopyWith<$Res>
    implements $PurchaseItemModelCopyWith<$Res> {
  factory _$$_PurchaseItemModelCopyWith(_$_PurchaseItemModel value,
          $Res Function(_$_PurchaseItemModel) then) =
      __$$_PurchaseItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? purchaseItemTitle,
      String? purchaseItemImage,
      double purchaseItemPrice});
}

/// @nodoc
class __$$_PurchaseItemModelCopyWithImpl<$Res>
    extends _$PurchaseItemModelCopyWithImpl<$Res, _$_PurchaseItemModel>
    implements _$$_PurchaseItemModelCopyWith<$Res> {
  __$$_PurchaseItemModelCopyWithImpl(
      _$_PurchaseItemModel _value, $Res Function(_$_PurchaseItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseItemTitle = freezed,
    Object? purchaseItemImage = freezed,
    Object? purchaseItemPrice = null,
  }) {
    return _then(_$_PurchaseItemModel(
      purchaseItemTitle: freezed == purchaseItemTitle
          ? _value.purchaseItemTitle
          : purchaseItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseItemImage: freezed == purchaseItemImage
          ? _value.purchaseItemImage
          : purchaseItemImage // ignore: cast_nullable_to_non_nullable
              as String?,
      purchaseItemPrice: null == purchaseItemPrice
          ? _value.purchaseItemPrice
          : purchaseItemPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_PurchaseItemModel implements _PurchaseItemModel {
  const _$_PurchaseItemModel(
      {this.purchaseItemTitle,
      this.purchaseItemImage,
      this.purchaseItemPrice = 0.0});

  factory _$_PurchaseItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseItemModelFromJson(json);

  @override
  final String? purchaseItemTitle;
  @override
  final String? purchaseItemImage;
  @override
  @JsonKey()
  final double purchaseItemPrice;

  @override
  String toString() {
    return 'PurchaseItemModel(purchaseItemTitle: $purchaseItemTitle, purchaseItemImage: $purchaseItemImage, purchaseItemPrice: $purchaseItemPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseItemModel &&
            (identical(other.purchaseItemTitle, purchaseItemTitle) ||
                other.purchaseItemTitle == purchaseItemTitle) &&
            (identical(other.purchaseItemImage, purchaseItemImage) ||
                other.purchaseItemImage == purchaseItemImage) &&
            (identical(other.purchaseItemPrice, purchaseItemPrice) ||
                other.purchaseItemPrice == purchaseItemPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, purchaseItemTitle, purchaseItemImage, purchaseItemPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseItemModelCopyWith<_$_PurchaseItemModel> get copyWith =>
      __$$_PurchaseItemModelCopyWithImpl<_$_PurchaseItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseItemModelToJson(
      this,
    );
  }
}

abstract class _PurchaseItemModel implements PurchaseItemModel {
  const factory _PurchaseItemModel(
      {final String? purchaseItemTitle,
      final String? purchaseItemImage,
      final double purchaseItemPrice}) = _$_PurchaseItemModel;

  factory _PurchaseItemModel.fromJson(Map<String, dynamic> json) =
      _$_PurchaseItemModel.fromJson;

  @override
  String? get purchaseItemTitle;
  @override
  String? get purchaseItemImage;
  @override
  double get purchaseItemPrice;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseItemModelCopyWith<_$_PurchaseItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
