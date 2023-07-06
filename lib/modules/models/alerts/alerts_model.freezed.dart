// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alerts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlertModel _$AlertModelFromJson(Map<String, dynamic> json) {
  return _AlertModel.fromJson(json);
}

/// @nodoc
mixin _$AlertModel {
  String? get notificationAlertId => throw _privateConstructorUsedError;
  String? get notificationAlertTitle => throw _privateConstructorUsedError;
  String? get notificationAlertBody => throw _privateConstructorUsedError;
  String? get typeNotification => throw _privateConstructorUsedError;
  bool get read => throw _privateConstructorUsedError;
  AlertPayloadModel? get payload => throw _privateConstructorUsedError;
  String? get timeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertModelCopyWith<AlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertModelCopyWith<$Res> {
  factory $AlertModelCopyWith(
          AlertModel value, $Res Function(AlertModel) then) =
      _$AlertModelCopyWithImpl<$Res, AlertModel>;
  @useResult
  $Res call(
      {String? notificationAlertId,
      String? notificationAlertTitle,
      String? notificationAlertBody,
      String? typeNotification,
      bool read,
      AlertPayloadModel? payload,
      String? timeStamp});

  $AlertPayloadModelCopyWith<$Res>? get payload;
}

/// @nodoc
class _$AlertModelCopyWithImpl<$Res, $Val extends AlertModel>
    implements $AlertModelCopyWith<$Res> {
  _$AlertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationAlertId = freezed,
    Object? notificationAlertTitle = freezed,
    Object? notificationAlertBody = freezed,
    Object? typeNotification = freezed,
    Object? read = null,
    Object? payload = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      notificationAlertId: freezed == notificationAlertId
          ? _value.notificationAlertId
          : notificationAlertId // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAlertTitle: freezed == notificationAlertTitle
          ? _value.notificationAlertTitle
          : notificationAlertTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAlertBody: freezed == notificationAlertBody
          ? _value.notificationAlertBody
          : notificationAlertBody // ignore: cast_nullable_to_non_nullable
              as String?,
      typeNotification: freezed == typeNotification
          ? _value.typeNotification
          : typeNotification // ignore: cast_nullable_to_non_nullable
              as String?,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AlertPayloadModel?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertPayloadModelCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $AlertPayloadModelCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlertModelCopyWith<$Res>
    implements $AlertModelCopyWith<$Res> {
  factory _$$_AlertModelCopyWith(
          _$_AlertModel value, $Res Function(_$_AlertModel) then) =
      __$$_AlertModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? notificationAlertId,
      String? notificationAlertTitle,
      String? notificationAlertBody,
      String? typeNotification,
      bool read,
      AlertPayloadModel? payload,
      String? timeStamp});

  @override
  $AlertPayloadModelCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$_AlertModelCopyWithImpl<$Res>
    extends _$AlertModelCopyWithImpl<$Res, _$_AlertModel>
    implements _$$_AlertModelCopyWith<$Res> {
  __$$_AlertModelCopyWithImpl(
      _$_AlertModel _value, $Res Function(_$_AlertModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationAlertId = freezed,
    Object? notificationAlertTitle = freezed,
    Object? notificationAlertBody = freezed,
    Object? typeNotification = freezed,
    Object? read = null,
    Object? payload = freezed,
    Object? timeStamp = freezed,
  }) {
    return _then(_$_AlertModel(
      notificationAlertId: freezed == notificationAlertId
          ? _value.notificationAlertId
          : notificationAlertId // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAlertTitle: freezed == notificationAlertTitle
          ? _value.notificationAlertTitle
          : notificationAlertTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationAlertBody: freezed == notificationAlertBody
          ? _value.notificationAlertBody
          : notificationAlertBody // ignore: cast_nullable_to_non_nullable
              as String?,
      typeNotification: freezed == typeNotification
          ? _value.typeNotification
          : typeNotification // ignore: cast_nullable_to_non_nullable
              as String?,
      read: null == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AlertPayloadModel?,
      timeStamp: freezed == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_AlertModel extends _AlertModel {
  const _$_AlertModel(
      {this.notificationAlertId,
      this.notificationAlertTitle,
      this.notificationAlertBody,
      this.typeNotification,
      required this.read,
      this.payload,
      this.timeStamp})
      : super._();

  factory _$_AlertModel.fromJson(Map<String, dynamic> json) =>
      _$$_AlertModelFromJson(json);

  @override
  final String? notificationAlertId;
  @override
  final String? notificationAlertTitle;
  @override
  final String? notificationAlertBody;
  @override
  final String? typeNotification;
  @override
  final bool read;
  @override
  final AlertPayloadModel? payload;
  @override
  final String? timeStamp;

  @override
  String toString() {
    return 'AlertModel(notificationAlertId: $notificationAlertId, notificationAlertTitle: $notificationAlertTitle, notificationAlertBody: $notificationAlertBody, typeNotification: $typeNotification, read: $read, payload: $payload, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlertModel &&
            (identical(other.notificationAlertId, notificationAlertId) ||
                other.notificationAlertId == notificationAlertId) &&
            (identical(other.notificationAlertTitle, notificationAlertTitle) ||
                other.notificationAlertTitle == notificationAlertTitle) &&
            (identical(other.notificationAlertBody, notificationAlertBody) ||
                other.notificationAlertBody == notificationAlertBody) &&
            (identical(other.typeNotification, typeNotification) ||
                other.typeNotification == typeNotification) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      notificationAlertId,
      notificationAlertTitle,
      notificationAlertBody,
      typeNotification,
      read,
      payload,
      timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertModelCopyWith<_$_AlertModel> get copyWith =>
      __$$_AlertModelCopyWithImpl<_$_AlertModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlertModelToJson(
      this,
    );
  }
}

abstract class _AlertModel extends AlertModel {
  const factory _AlertModel(
      {final String? notificationAlertId,
      final String? notificationAlertTitle,
      final String? notificationAlertBody,
      final String? typeNotification,
      required final bool read,
      final AlertPayloadModel? payload,
      final String? timeStamp}) = _$_AlertModel;
  const _AlertModel._() : super._();

  factory _AlertModel.fromJson(Map<String, dynamic> json) =
      _$_AlertModel.fromJson;

  @override
  String? get notificationAlertId;
  @override
  String? get notificationAlertTitle;
  @override
  String? get notificationAlertBody;
  @override
  String? get typeNotification;
  @override
  bool get read;
  @override
  AlertPayloadModel? get payload;
  @override
  String? get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_AlertModelCopyWith<_$_AlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}
