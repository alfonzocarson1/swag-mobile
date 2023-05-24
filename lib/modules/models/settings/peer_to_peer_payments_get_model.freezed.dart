// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peer_to_peer_payments_get_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeerToPeerPaymentsGetModel _$PeerToPeerPaymentsGetModelFromJson(
    Map<String, dynamic> json) {
  return _PeerToPeerPaymentsGetModel.fromJson(json);
}

/// @nodoc
mixin _$PeerToPeerPaymentsGetModel {
  String? get accountId => throw _privateConstructorUsedError;
  PeerToPeerPaymentsModel? get peerToPeerPayments =>
      throw _privateConstructorUsedError;
  PeerToPeerPaymentsStatusModel? get status =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeerToPeerPaymentsGetModelCopyWith<PeerToPeerPaymentsGetModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeerToPeerPaymentsGetModelCopyWith<$Res> {
  factory $PeerToPeerPaymentsGetModelCopyWith(PeerToPeerPaymentsGetModel value,
          $Res Function(PeerToPeerPaymentsGetModel) then) =
      _$PeerToPeerPaymentsGetModelCopyWithImpl<$Res,
          PeerToPeerPaymentsGetModel>;
  @useResult
  $Res call(
      {String? accountId,
      PeerToPeerPaymentsModel? peerToPeerPayments,
      PeerToPeerPaymentsStatusModel? status});

  $PeerToPeerPaymentsModelCopyWith<$Res>? get peerToPeerPayments;
  $PeerToPeerPaymentsStatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$PeerToPeerPaymentsGetModelCopyWithImpl<$Res,
        $Val extends PeerToPeerPaymentsGetModel>
    implements $PeerToPeerPaymentsGetModelCopyWith<$Res> {
  _$PeerToPeerPaymentsGetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? peerToPeerPayments = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      peerToPeerPayments: freezed == peerToPeerPayments
          ? _value.peerToPeerPayments
          : peerToPeerPayments // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsStatusModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeerToPeerPaymentsModelCopyWith<$Res>? get peerToPeerPayments {
    if (_value.peerToPeerPayments == null) {
      return null;
    }

    return $PeerToPeerPaymentsModelCopyWith<$Res>(_value.peerToPeerPayments!,
        (value) {
      return _then(_value.copyWith(peerToPeerPayments: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeerToPeerPaymentsStatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $PeerToPeerPaymentsStatusModelCopyWith<$Res>(_value.status!,
        (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PeerToPeerPaymentsGetModelCopyWith<$Res>
    implements $PeerToPeerPaymentsGetModelCopyWith<$Res> {
  factory _$$_PeerToPeerPaymentsGetModelCopyWith(
          _$_PeerToPeerPaymentsGetModel value,
          $Res Function(_$_PeerToPeerPaymentsGetModel) then) =
      __$$_PeerToPeerPaymentsGetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountId,
      PeerToPeerPaymentsModel? peerToPeerPayments,
      PeerToPeerPaymentsStatusModel? status});

  @override
  $PeerToPeerPaymentsModelCopyWith<$Res>? get peerToPeerPayments;
  @override
  $PeerToPeerPaymentsStatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_PeerToPeerPaymentsGetModelCopyWithImpl<$Res>
    extends _$PeerToPeerPaymentsGetModelCopyWithImpl<$Res,
        _$_PeerToPeerPaymentsGetModel>
    implements _$$_PeerToPeerPaymentsGetModelCopyWith<$Res> {
  __$$_PeerToPeerPaymentsGetModelCopyWithImpl(
      _$_PeerToPeerPaymentsGetModel _value,
      $Res Function(_$_PeerToPeerPaymentsGetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? peerToPeerPayments = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_PeerToPeerPaymentsGetModel(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      peerToPeerPayments: freezed == peerToPeerPayments
          ? _value.peerToPeerPayments
          : peerToPeerPayments // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeerToPeerPaymentsStatusModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_PeerToPeerPaymentsGetModel implements _PeerToPeerPaymentsGetModel {
  const _$_PeerToPeerPaymentsGetModel(
      {this.accountId, this.peerToPeerPayments, this.status});

  factory _$_PeerToPeerPaymentsGetModel.fromJson(Map<String, dynamic> json) =>
      _$$_PeerToPeerPaymentsGetModelFromJson(json);

  @override
  final String? accountId;
  @override
  final PeerToPeerPaymentsModel? peerToPeerPayments;
  @override
  final PeerToPeerPaymentsStatusModel? status;

  @override
  String toString() {
    return 'PeerToPeerPaymentsGetModel(accountId: $accountId, peerToPeerPayments: $peerToPeerPayments, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeerToPeerPaymentsGetModel &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.peerToPeerPayments, peerToPeerPayments) ||
                other.peerToPeerPayments == peerToPeerPayments) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, peerToPeerPayments, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeerToPeerPaymentsGetModelCopyWith<_$_PeerToPeerPaymentsGetModel>
      get copyWith => __$$_PeerToPeerPaymentsGetModelCopyWithImpl<
          _$_PeerToPeerPaymentsGetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeerToPeerPaymentsGetModelToJson(
      this,
    );
  }
}

abstract class _PeerToPeerPaymentsGetModel
    implements PeerToPeerPaymentsGetModel {
  const factory _PeerToPeerPaymentsGetModel(
          {final String? accountId,
          final PeerToPeerPaymentsModel? peerToPeerPayments,
          final PeerToPeerPaymentsStatusModel? status}) =
      _$_PeerToPeerPaymentsGetModel;

  factory _PeerToPeerPaymentsGetModel.fromJson(Map<String, dynamic> json) =
      _$_PeerToPeerPaymentsGetModel.fromJson;

  @override
  String? get accountId;
  @override
  PeerToPeerPaymentsModel? get peerToPeerPayments;
  @override
  PeerToPeerPaymentsStatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$_PeerToPeerPaymentsGetModelCopyWith<_$_PeerToPeerPaymentsGetModel>
      get copyWith => throw _privateConstructorUsedError;
}
