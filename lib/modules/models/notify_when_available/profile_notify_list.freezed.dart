// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_notify_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileNotifyList _$ProfileNotifyListFromJson(Map<String, dynamic> json) {
  return _ProfileNotifyList.fromJson(json);
}

/// @nodoc
mixin _$ProfileNotifyList {
  List<ProfileNotifyStatusModel> get profileNotificationList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileNotifyListCopyWith<ProfileNotifyList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileNotifyListCopyWith<$Res> {
  factory $ProfileNotifyListCopyWith(
          ProfileNotifyList value, $Res Function(ProfileNotifyList) then) =
      _$ProfileNotifyListCopyWithImpl<$Res, ProfileNotifyList>;
  @useResult
  $Res call({List<ProfileNotifyStatusModel> profileNotificationList});
}

/// @nodoc
class _$ProfileNotifyListCopyWithImpl<$Res, $Val extends ProfileNotifyList>
    implements $ProfileNotifyListCopyWith<$Res> {
  _$ProfileNotifyListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileNotificationList = null,
  }) {
    return _then(_value.copyWith(
      profileNotificationList: null == profileNotificationList
          ? _value.profileNotificationList
          : profileNotificationList // ignore: cast_nullable_to_non_nullable
              as List<ProfileNotifyStatusModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileNotifyListCopyWith<$Res>
    implements $ProfileNotifyListCopyWith<$Res> {
  factory _$$_ProfileNotifyListCopyWith(_$_ProfileNotifyList value,
          $Res Function(_$_ProfileNotifyList) then) =
      __$$_ProfileNotifyListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProfileNotifyStatusModel> profileNotificationList});
}

/// @nodoc
class __$$_ProfileNotifyListCopyWithImpl<$Res>
    extends _$ProfileNotifyListCopyWithImpl<$Res, _$_ProfileNotifyList>
    implements _$$_ProfileNotifyListCopyWith<$Res> {
  __$$_ProfileNotifyListCopyWithImpl(
      _$_ProfileNotifyList _value, $Res Function(_$_ProfileNotifyList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileNotificationList = null,
  }) {
    return _then(_$_ProfileNotifyList(
      profileNotificationList: null == profileNotificationList
          ? _value._profileNotificationList
          : profileNotificationList // ignore: cast_nullable_to_non_nullable
              as List<ProfileNotifyStatusModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ProfileNotifyList implements _ProfileNotifyList {
  const _$_ProfileNotifyList(
      {required final List<ProfileNotifyStatusModel> profileNotificationList})
      : _profileNotificationList = profileNotificationList;

  factory _$_ProfileNotifyList.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileNotifyListFromJson(json);

  final List<ProfileNotifyStatusModel> _profileNotificationList;
  @override
  List<ProfileNotifyStatusModel> get profileNotificationList {
    if (_profileNotificationList is EqualUnmodifiableListView)
      return _profileNotificationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profileNotificationList);
  }

  @override
  String toString() {
    return 'ProfileNotifyList(profileNotificationList: $profileNotificationList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileNotifyList &&
            const DeepCollectionEquality().equals(
                other._profileNotificationList, _profileNotificationList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_profileNotificationList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileNotifyListCopyWith<_$_ProfileNotifyList> get copyWith =>
      __$$_ProfileNotifyListCopyWithImpl<_$_ProfileNotifyList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileNotifyListToJson(
      this,
    );
  }
}

abstract class _ProfileNotifyList implements ProfileNotifyList {
  const factory _ProfileNotifyList(
      {required final List<ProfileNotifyStatusModel>
          profileNotificationList}) = _$_ProfileNotifyList;

  factory _ProfileNotifyList.fromJson(Map<String, dynamic> json) =
      _$_ProfileNotifyList.fromJson;

  @override
  List<ProfileNotifyStatusModel> get profileNotificationList;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileNotifyListCopyWith<_$_ProfileNotifyList> get copyWith =>
      throw _privateConstructorUsedError;
}
