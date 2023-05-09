// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkbox_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckboxModel {
  String get title => throw _privateConstructorUsedError;
  bool get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckboxModelCopyWith<CheckboxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckboxModelCopyWith<$Res> {
  factory $CheckboxModelCopyWith(
          CheckboxModel value, $Res Function(CheckboxModel) then) =
      _$CheckboxModelCopyWithImpl<$Res, CheckboxModel>;
  @useResult
  $Res call({String title, bool value});
}

/// @nodoc
class _$CheckboxModelCopyWithImpl<$Res, $Val extends CheckboxModel>
    implements $CheckboxModelCopyWith<$Res> {
  _$CheckboxModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckboxModelCopyWith<$Res>
    implements $CheckboxModelCopyWith<$Res> {
  factory _$$_CheckboxModelCopyWith(
          _$_CheckboxModel value, $Res Function(_$_CheckboxModel) then) =
      __$$_CheckboxModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, bool value});
}

/// @nodoc
class __$$_CheckboxModelCopyWithImpl<$Res>
    extends _$CheckboxModelCopyWithImpl<$Res, _$_CheckboxModel>
    implements _$$_CheckboxModelCopyWith<$Res> {
  __$$_CheckboxModelCopyWithImpl(
      _$_CheckboxModel _value, $Res Function(_$_CheckboxModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_$_CheckboxModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckboxModel implements _CheckboxModel {
  const _$_CheckboxModel({required this.title, this.value = false});

  @override
  final String title;
  @override
  @JsonKey()
  final bool value;

  @override
  String toString() {
    return 'CheckboxModel(title: $title, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckboxModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckboxModelCopyWith<_$_CheckboxModel> get copyWith =>
      __$$_CheckboxModelCopyWithImpl<_$_CheckboxModel>(this, _$identity);
}

abstract class _CheckboxModel implements CheckboxModel {
  const factory _CheckboxModel(
      {required final String title, final bool value}) = _$_CheckboxModel;

  @override
  String get title;
  @override
  bool get value;
  @override
  @JsonKey(ignore: true)
  _$$_CheckboxModelCopyWith<_$_CheckboxModel> get copyWith =>
      throw _privateConstructorUsedError;
}
