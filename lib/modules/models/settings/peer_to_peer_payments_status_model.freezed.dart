// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peer_to_peer_payments_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeerToPeerPaymentsStatusModel _$PeerToPeerPaymentsStatusModelFromJson(
    Map<String, dynamic> json) {
  return _PeerToPeerPaymentsStatusModel.fromJson(json);
}

/// @nodoc
mixin _$PeerToPeerPaymentsStatusModel {
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeerToPeerPaymentsStatusModelCopyWith<PeerToPeerPaymentsStatusModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeerToPeerPaymentsStatusModelCopyWith<$Res> {
  factory $PeerToPeerPaymentsStatusModelCopyWith(
          PeerToPeerPaymentsStatusModel value,
          $Res Function(PeerToPeerPaymentsStatusModel) then) =
      _$PeerToPeerPaymentsStatusModelCopyWithImpl<$Res,
          PeerToPeerPaymentsStatusModel>;
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class _$PeerToPeerPaymentsStatusModelCopyWithImpl<$Res,
        $Val extends PeerToPeerPaymentsStatusModel>
    implements $PeerToPeerPaymentsStatusModelCopyWith<$Res> {
  _$PeerToPeerPaymentsStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeerToPeerPaymentsStatusModelCopyWith<$Res>
    implements $PeerToPeerPaymentsStatusModelCopyWith<$Res> {
  factory _$$_PeerToPeerPaymentsStatusModelCopyWith(
          _$_PeerToPeerPaymentsStatusModel value,
          $Res Function(_$_PeerToPeerPaymentsStatusModel) then) =
      __$$_PeerToPeerPaymentsStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage});
}

/// @nodoc
class __$$_PeerToPeerPaymentsStatusModelCopyWithImpl<$Res>
    extends _$PeerToPeerPaymentsStatusModelCopyWithImpl<$Res,
        _$_PeerToPeerPaymentsStatusModel>
    implements _$$_PeerToPeerPaymentsStatusModelCopyWith<$Res> {
  __$$_PeerToPeerPaymentsStatusModelCopyWithImpl(
      _$_PeerToPeerPaymentsStatusModel _value,
      $Res Function(_$_PeerToPeerPaymentsStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PeerToPeerPaymentsStatusModel(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_PeerToPeerPaymentsStatusModel
    implements _PeerToPeerPaymentsStatusModel {
  const _$_PeerToPeerPaymentsStatusModel({this.errorMessage});

  factory _$_PeerToPeerPaymentsStatusModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PeerToPeerPaymentsStatusModelFromJson(json);

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PeerToPeerPaymentsStatusModel(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeerToPeerPaymentsStatusModel &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeerToPeerPaymentsStatusModelCopyWith<_$_PeerToPeerPaymentsStatusModel>
      get copyWith => __$$_PeerToPeerPaymentsStatusModelCopyWithImpl<
          _$_PeerToPeerPaymentsStatusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeerToPeerPaymentsStatusModelToJson(
      this,
    );
  }
}

abstract class _PeerToPeerPaymentsStatusModel
    implements PeerToPeerPaymentsStatusModel {
  const factory _PeerToPeerPaymentsStatusModel({final String? errorMessage}) =
      _$_PeerToPeerPaymentsStatusModel;

  factory _PeerToPeerPaymentsStatusModel.fromJson(Map<String, dynamic> json) =
      _$_PeerToPeerPaymentsStatusModel.fromJson;

  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PeerToPeerPaymentsStatusModelCopyWith<_$_PeerToPeerPaymentsStatusModel>
      get copyWith => throw _privateConstructorUsedError;
}
