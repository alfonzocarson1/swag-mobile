// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_avatar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateAvatarModel _$UpdateAvatarModelFromJson(Map<String, dynamic> json) {
  return _UpdateAvatarModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateAvatarModel {
  String get imageUrl => throw _privateConstructorUsedError;
  String get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAvatarModelCopyWith<UpdateAvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAvatarModelCopyWith<$Res> {
  factory $UpdateAvatarModelCopyWith(
          UpdateAvatarModel value, $Res Function(UpdateAvatarModel) then) =
      _$UpdateAvatarModelCopyWithImpl<$Res, UpdateAvatarModel>;
  @useResult
  $Res call({String imageUrl, String errorCode});
}

/// @nodoc
class _$UpdateAvatarModelCopyWithImpl<$Res, $Val extends UpdateAvatarModel>
    implements $UpdateAvatarModelCopyWith<$Res> {
  _$UpdateAvatarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? errorCode = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateAvatarModelCopyWith<$Res>
    implements $UpdateAvatarModelCopyWith<$Res> {
  factory _$$_UpdateAvatarModelCopyWith(_$_UpdateAvatarModel value,
          $Res Function(_$_UpdateAvatarModel) then) =
      __$$_UpdateAvatarModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String errorCode});
}

/// @nodoc
class __$$_UpdateAvatarModelCopyWithImpl<$Res>
    extends _$UpdateAvatarModelCopyWithImpl<$Res, _$_UpdateAvatarModel>
    implements _$$_UpdateAvatarModelCopyWith<$Res> {
  __$$_UpdateAvatarModelCopyWithImpl(
      _$_UpdateAvatarModel _value, $Res Function(_$_UpdateAvatarModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? errorCode = null,
  }) {
    return _then(_$_UpdateAvatarModel(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateAvatarModel implements _UpdateAvatarModel {
  const _$_UpdateAvatarModel({required this.imageUrl, required this.errorCode});

  factory _$_UpdateAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateAvatarModelFromJson(json);

  @override
  final String imageUrl;
  @override
  final String errorCode;

  @override
  String toString() {
    return 'UpdateAvatarModel(imageUrl: $imageUrl, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAvatarModel &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAvatarModelCopyWith<_$_UpdateAvatarModel> get copyWith =>
      __$$_UpdateAvatarModelCopyWithImpl<_$_UpdateAvatarModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAvatarModelToJson(
      this,
    );
  }
}

abstract class _UpdateAvatarModel implements UpdateAvatarModel {
  const factory _UpdateAvatarModel(
      {required final String imageUrl,
      required final String errorCode}) = _$_UpdateAvatarModel;

  factory _UpdateAvatarModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateAvatarModel.fromJson;

  @override
  String get imageUrl;
  @override
  String get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAvatarModelCopyWith<_$_UpdateAvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}
