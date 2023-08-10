// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AsyncOperation<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(AsyncValue<T> state) initiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(AsyncValue<T> state)? initiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(AsyncValue<T> state)? initiated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Initiated<T> value) initiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle<T> value)? idle,
    TResult? Function(_Initiated<T> value)? initiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Initiated<T> value)? initiated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncOperationCopyWith<T, $Res> {
  factory $AsyncOperationCopyWith(
          AsyncOperation<T> value, $Res Function(AsyncOperation<T>) then) =
      _$AsyncOperationCopyWithImpl<T, $Res, AsyncOperation<T>>;
}

/// @nodoc
class _$AsyncOperationCopyWithImpl<T, $Res, $Val extends AsyncOperation<T>>
    implements $AsyncOperationCopyWith<T, $Res> {
  _$AsyncOperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<T, $Res> {
  factory _$$_IdleCopyWith(_$_Idle<T> value, $Res Function(_$_Idle<T>) then) =
      __$$_IdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_IdleCopyWithImpl<T, $Res>
    extends _$AsyncOperationCopyWithImpl<T, $Res, _$_Idle<T>>
    implements _$$_IdleCopyWith<T, $Res> {
  __$$_IdleCopyWithImpl(_$_Idle<T> _value, $Res Function(_$_Idle<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Idle<T> extends _Idle<T> {
  const _$_Idle() : super._();

  @override
  String toString() {
    return 'AsyncOperation<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(AsyncValue<T> state) initiated,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(AsyncValue<T> state)? initiated,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(AsyncValue<T> state)? initiated,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Initiated<T> value) initiated,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle<T> value)? idle,
    TResult? Function(_Initiated<T> value)? initiated,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Initiated<T> value)? initiated,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle<T> extends AsyncOperation<T> {
  const factory _Idle() = _$_Idle<T>;
  const _Idle._() : super._();
}

/// @nodoc
abstract class _$$_InitiatedCopyWith<T, $Res> {
  factory _$$_InitiatedCopyWith(
          _$_Initiated<T> value, $Res Function(_$_Initiated<T>) then) =
      __$$_InitiatedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AsyncValue<T> state});

  $AsyncValueCopyWith<T, $Res> get state;
}

/// @nodoc
class __$$_InitiatedCopyWithImpl<T, $Res>
    extends _$AsyncOperationCopyWithImpl<T, $Res, _$_Initiated<T>>
    implements _$$_InitiatedCopyWith<T, $Res> {
  __$$_InitiatedCopyWithImpl(
      _$_Initiated<T> _value, $Res Function(_$_Initiated<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$_Initiated<T>(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AsyncValue<T>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AsyncValueCopyWith<T, $Res> get state {
    return $AsyncValueCopyWith<T, $Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_Initiated<T> extends _Initiated<T> {
  const _$_Initiated(this.state) : super._();

  @override
  final AsyncValue<T> state;

  @override
  String toString() {
    return 'AsyncOperation<$T>.initiated(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initiated<T> &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitiatedCopyWith<T, _$_Initiated<T>> get copyWith =>
      __$$_InitiatedCopyWithImpl<T, _$_Initiated<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(AsyncValue<T> state) initiated,
  }) {
    return initiated(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(AsyncValue<T> state)? initiated,
  }) {
    return initiated?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(AsyncValue<T> state)? initiated,
    required TResult orElse(),
  }) {
    if (initiated != null) {
      return initiated(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle<T> value) idle,
    required TResult Function(_Initiated<T> value) initiated,
  }) {
    return initiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle<T> value)? idle,
    TResult? Function(_Initiated<T> value)? initiated,
  }) {
    return initiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle<T> value)? idle,
    TResult Function(_Initiated<T> value)? initiated,
    required TResult orElse(),
  }) {
    if (initiated != null) {
      return initiated(this);
    }
    return orElse();
  }
}

abstract class _Initiated<T> extends AsyncOperation<T> {
  const factory _Initiated(final AsyncValue<T> state) = _$_Initiated<T>;
  const _Initiated._() : super._();

  AsyncValue<T> get state;
  @JsonKey(ignore: true)
  _$$_InitiatedCopyWith<T, _$_Initiated<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
