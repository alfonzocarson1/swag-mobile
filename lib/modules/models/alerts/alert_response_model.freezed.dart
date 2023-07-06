// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlertResponseModel _$AlertResponseModelFromJson(Map<String, dynamic> json) {
  return _AlertResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AlertResponseModel {
  List<AlertModel> get alertList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertResponseModelCopyWith<AlertResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertResponseModelCopyWith<$Res> {
  factory $AlertResponseModelCopyWith(
          AlertResponseModel value, $Res Function(AlertResponseModel) then) =
      _$AlertResponseModelCopyWithImpl<$Res, AlertResponseModel>;
  @useResult
  $Res call({List<AlertModel> alertList});
}

/// @nodoc
class _$AlertResponseModelCopyWithImpl<$Res, $Val extends AlertResponseModel>
    implements $AlertResponseModelCopyWith<$Res> {
  _$AlertResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertList = null,
  }) {
    return _then(_value.copyWith(
      alertList: null == alertList
          ? _value.alertList
          : alertList // ignore: cast_nullable_to_non_nullable
              as List<AlertModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlertResponseModelCopyWith<$Res>
    implements $AlertResponseModelCopyWith<$Res> {
  factory _$$_AlertResponseModelCopyWith(_$_AlertResponseModel value,
          $Res Function(_$_AlertResponseModel) then) =
      __$$_AlertResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AlertModel> alertList});
}

/// @nodoc
class __$$_AlertResponseModelCopyWithImpl<$Res>
    extends _$AlertResponseModelCopyWithImpl<$Res, _$_AlertResponseModel>
    implements _$$_AlertResponseModelCopyWith<$Res> {
  __$$_AlertResponseModelCopyWithImpl(
      _$_AlertResponseModel _value, $Res Function(_$_AlertResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alertList = null,
  }) {
    return _then(_$_AlertResponseModel(
      alertList: null == alertList
          ? _value._alertList
          : alertList // ignore: cast_nullable_to_non_nullable
              as List<AlertModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_AlertResponseModel implements _AlertResponseModel {
  const _$_AlertResponseModel({required final List<AlertModel> alertList})
      : _alertList = alertList;

  factory _$_AlertResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AlertResponseModelFromJson(json);

  final List<AlertModel> _alertList;
  @override
  List<AlertModel> get alertList {
    if (_alertList is EqualUnmodifiableListView) return _alertList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alertList);
  }

  @override
  String toString() {
    return 'AlertResponseModel(alertList: $alertList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlertResponseModel &&
            const DeepCollectionEquality()
                .equals(other._alertList, _alertList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_alertList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertResponseModelCopyWith<_$_AlertResponseModel> get copyWith =>
      __$$_AlertResponseModelCopyWithImpl<_$_AlertResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlertResponseModelToJson(
      this,
    );
  }
}

abstract class _AlertResponseModel implements AlertResponseModel {
  const factory _AlertResponseModel(
      {required final List<AlertModel> alertList}) = _$_AlertResponseModel;

  factory _AlertResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AlertResponseModel.fromJson;

  @override
  List<AlertModel> get alertList;
  @override
  @JsonKey(ignore: true)
  _$$_AlertResponseModelCopyWith<_$_AlertResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
