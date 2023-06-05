// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_notify_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileNotifyStatusModel _$ProfileNotifyStatusModelFromJson(
    Map<String, dynamic> json) {
  return _ProfileNotifyStatusModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileNotifyStatusModel {
  String get notifyAvailabilityId => throw _privateConstructorUsedError;
  String get profileIdForBeNotified => throw _privateConstructorUsedError;
  String get catalogItemId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileNotifyStatusModelCopyWith<ProfileNotifyStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileNotifyStatusModelCopyWith<$Res> {
  factory $ProfileNotifyStatusModelCopyWith(ProfileNotifyStatusModel value,
          $Res Function(ProfileNotifyStatusModel) then) =
      _$ProfileNotifyStatusModelCopyWithImpl<$Res, ProfileNotifyStatusModel>;
  @useResult
  $Res call(
      {String notifyAvailabilityId,
      String profileIdForBeNotified,
      String catalogItemId});
}

/// @nodoc
class _$ProfileNotifyStatusModelCopyWithImpl<$Res,
        $Val extends ProfileNotifyStatusModel>
    implements $ProfileNotifyStatusModelCopyWith<$Res> {
  _$ProfileNotifyStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifyAvailabilityId = null,
    Object? profileIdForBeNotified = null,
    Object? catalogItemId = null,
  }) {
    return _then(_value.copyWith(
      notifyAvailabilityId: null == notifyAvailabilityId
          ? _value.notifyAvailabilityId
          : notifyAvailabilityId // ignore: cast_nullable_to_non_nullable
              as String,
      profileIdForBeNotified: null == profileIdForBeNotified
          ? _value.profileIdForBeNotified
          : profileIdForBeNotified // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemId: null == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileNotifyStatusModelCopyWith<$Res>
    implements $ProfileNotifyStatusModelCopyWith<$Res> {
  factory _$$_ProfileNotifyStatusModelCopyWith(
          _$_ProfileNotifyStatusModel value,
          $Res Function(_$_ProfileNotifyStatusModel) then) =
      __$$_ProfileNotifyStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String notifyAvailabilityId,
      String profileIdForBeNotified,
      String catalogItemId});
}

/// @nodoc
class __$$_ProfileNotifyStatusModelCopyWithImpl<$Res>
    extends _$ProfileNotifyStatusModelCopyWithImpl<$Res,
        _$_ProfileNotifyStatusModel>
    implements _$$_ProfileNotifyStatusModelCopyWith<$Res> {
  __$$_ProfileNotifyStatusModelCopyWithImpl(_$_ProfileNotifyStatusModel _value,
      $Res Function(_$_ProfileNotifyStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifyAvailabilityId = null,
    Object? profileIdForBeNotified = null,
    Object? catalogItemId = null,
  }) {
    return _then(_$_ProfileNotifyStatusModel(
      notifyAvailabilityId: null == notifyAvailabilityId
          ? _value.notifyAvailabilityId
          : notifyAvailabilityId // ignore: cast_nullable_to_non_nullable
              as String,
      profileIdForBeNotified: null == profileIdForBeNotified
          ? _value.profileIdForBeNotified
          : profileIdForBeNotified // ignore: cast_nullable_to_non_nullable
              as String,
      catalogItemId: null == catalogItemId
          ? _value.catalogItemId
          : catalogItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ProfileNotifyStatusModel implements _ProfileNotifyStatusModel {
  const _$_ProfileNotifyStatusModel(
      {required this.notifyAvailabilityId,
      required this.profileIdForBeNotified,
      required this.catalogItemId});

  factory _$_ProfileNotifyStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileNotifyStatusModelFromJson(json);

  @override
  final String notifyAvailabilityId;
  @override
  final String profileIdForBeNotified;
  @override
  final String catalogItemId;

  @override
  String toString() {
    return 'ProfileNotifyStatusModel(notifyAvailabilityId: $notifyAvailabilityId, profileIdForBeNotified: $profileIdForBeNotified, catalogItemId: $catalogItemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileNotifyStatusModel &&
            (identical(other.notifyAvailabilityId, notifyAvailabilityId) ||
                other.notifyAvailabilityId == notifyAvailabilityId) &&
            (identical(other.profileIdForBeNotified, profileIdForBeNotified) ||
                other.profileIdForBeNotified == profileIdForBeNotified) &&
            (identical(other.catalogItemId, catalogItemId) ||
                other.catalogItemId == catalogItemId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, notifyAvailabilityId, profileIdForBeNotified, catalogItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileNotifyStatusModelCopyWith<_$_ProfileNotifyStatusModel>
      get copyWith => __$$_ProfileNotifyStatusModelCopyWithImpl<
          _$_ProfileNotifyStatusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileNotifyStatusModelToJson(
      this,
    );
  }
}

abstract class _ProfileNotifyStatusModel implements ProfileNotifyStatusModel {
  const factory _ProfileNotifyStatusModel(
      {required final String notifyAvailabilityId,
      required final String profileIdForBeNotified,
      required final String catalogItemId}) = _$_ProfileNotifyStatusModel;

  factory _ProfileNotifyStatusModel.fromJson(Map<String, dynamic> json) =
      _$_ProfileNotifyStatusModel.fromJson;

  @override
  String get notifyAvailabilityId;
  @override
  String get profileIdForBeNotified;
  @override
  String get catalogItemId;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileNotifyStatusModelCopyWith<_$_ProfileNotifyStatusModel>
      get copyWith => throw _privateConstructorUsedError;
}
