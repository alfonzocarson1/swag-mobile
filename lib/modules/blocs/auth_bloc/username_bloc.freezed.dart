// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'username_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsernameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String username) checkUsernameAvailavility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String username)? checkUsernameAvailavility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String username)? checkUsernameAvailavility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CheckUsernameAvailability value)
        checkUsernameAvailavility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CheckUsernameAvailability value)?
        checkUsernameAvailavility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CheckUsernameAvailability value)?
        checkUsernameAvailavility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameEventCopyWith<$Res> {
  factory $UsernameEventCopyWith(
          UsernameEvent value, $Res Function(UsernameEvent) then) =
      _$UsernameEventCopyWithImpl<$Res, UsernameEvent>;
}

/// @nodoc
class _$UsernameEventCopyWithImpl<$Res, $Val extends UsernameEvent>
    implements $UsernameEventCopyWith<$Res> {
  _$UsernameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res>
    extends _$UsernameEventCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'UsernameEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String username) checkUsernameAvailavility,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String username)? checkUsernameAvailavility,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String username)? checkUsernameAvailavility,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CheckUsernameAvailability value)
        checkUsernameAvailavility,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CheckUsernameAvailability value)?
        checkUsernameAvailavility,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CheckUsernameAvailability value)?
        checkUsernameAvailavility,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements UsernameEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$CheckUsernameAvailabilityCopyWith<$Res> {
  factory _$$CheckUsernameAvailabilityCopyWith(
          _$CheckUsernameAvailability value,
          $Res Function(_$CheckUsernameAvailability) then) =
      __$$CheckUsernameAvailabilityCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$CheckUsernameAvailabilityCopyWithImpl<$Res>
    extends _$UsernameEventCopyWithImpl<$Res, _$CheckUsernameAvailability>
    implements _$$CheckUsernameAvailabilityCopyWith<$Res> {
  __$$CheckUsernameAvailabilityCopyWithImpl(_$CheckUsernameAvailability _value,
      $Res Function(_$CheckUsernameAvailability) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$CheckUsernameAvailability(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckUsernameAvailability implements CheckUsernameAvailability {
  const _$CheckUsernameAvailability(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'UsernameEvent.checkUsernameAvailavility(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUsernameAvailability &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUsernameAvailabilityCopyWith<_$CheckUsernameAvailability>
      get copyWith => __$$CheckUsernameAvailabilityCopyWithImpl<
          _$CheckUsernameAvailability>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String username) checkUsernameAvailavility,
  }) {
    return checkUsernameAvailavility(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String username)? checkUsernameAvailavility,
  }) {
    return checkUsernameAvailavility?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String username)? checkUsernameAvailavility,
    required TResult orElse(),
  }) {
    if (checkUsernameAvailavility != null) {
      return checkUsernameAvailavility(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CheckUsernameAvailability value)
        checkUsernameAvailavility,
  }) {
    return checkUsernameAvailavility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CheckUsernameAvailability value)?
        checkUsernameAvailavility,
  }) {
    return checkUsernameAvailavility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CheckUsernameAvailability value)?
        checkUsernameAvailavility,
    required TResult orElse(),
  }) {
    if (checkUsernameAvailavility != null) {
      return checkUsernameAvailavility(this);
    }
    return orElse();
  }
}

abstract class CheckUsernameAvailability implements UsernameEvent {
  const factory CheckUsernameAvailability(final String username) =
      _$CheckUsernameAvailability;

  String get username;
  @JsonKey(ignore: true)
  _$$CheckUsernameAvailabilityCopyWith<_$CheckUsernameAvailability>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsernameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUsernameAvailable) isUsernameAvailable,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isUsernameAvailable)? isUsernameAvailable,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUsernameAvailable)? isUsernameAvailable,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsUsernameAvailable value) isUsernameAvailable,
    required TResult Function(AuthenticationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(IsUsernameAvailable value)? isUsernameAvailable,
    TResult? Function(AuthenticationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsUsernameAvailable value)? isUsernameAvailable,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameStateCopyWith<$Res> {
  factory $UsernameStateCopyWith(
          UsernameState value, $Res Function(UsernameState) then) =
      _$UsernameStateCopyWithImpl<$Res, UsernameState>;
}

/// @nodoc
class _$UsernameStateCopyWithImpl<$Res, $Val extends UsernameState>
    implements $UsernameStateCopyWith<$Res> {
  _$UsernameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$UsernameStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'UsernameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUsernameAvailable) isUsernameAvailable,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isUsernameAvailable)? isUsernameAvailable,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUsernameAvailable)? isUsernameAvailable,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsUsernameAvailable value) isUsernameAvailable,
    required TResult Function(AuthenticationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(IsUsernameAvailable value)? isUsernameAvailable,
    TResult? Function(AuthenticationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsUsernameAvailable value)? isUsernameAvailable,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UsernameState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$IsUsernameAvailableCopyWith<$Res> {
  factory _$$IsUsernameAvailableCopyWith(_$IsUsernameAvailable value,
          $Res Function(_$IsUsernameAvailable) then) =
      __$$IsUsernameAvailableCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUsernameAvailable});
}

/// @nodoc
class __$$IsUsernameAvailableCopyWithImpl<$Res>
    extends _$UsernameStateCopyWithImpl<$Res, _$IsUsernameAvailable>
    implements _$$IsUsernameAvailableCopyWith<$Res> {
  __$$IsUsernameAvailableCopyWithImpl(
      _$IsUsernameAvailable _value, $Res Function(_$IsUsernameAvailable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUsernameAvailable = null,
  }) {
    return _then(_$IsUsernameAvailable(
      null == isUsernameAvailable
          ? _value.isUsernameAvailable
          : isUsernameAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IsUsernameAvailable implements IsUsernameAvailable {
  const _$IsUsernameAvailable(this.isUsernameAvailable);

  @override
  final bool isUsernameAvailable;

  @override
  String toString() {
    return 'UsernameState.isUsernameAvailable(isUsernameAvailable: $isUsernameAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsUsernameAvailable &&
            (identical(other.isUsernameAvailable, isUsernameAvailable) ||
                other.isUsernameAvailable == isUsernameAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUsernameAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsUsernameAvailableCopyWith<_$IsUsernameAvailable> get copyWith =>
      __$$IsUsernameAvailableCopyWithImpl<_$IsUsernameAvailable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUsernameAvailable) isUsernameAvailable,
    required TResult Function(String message) error,
  }) {
    return isUsernameAvailable(this.isUsernameAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isUsernameAvailable)? isUsernameAvailable,
    TResult? Function(String message)? error,
  }) {
    return isUsernameAvailable?.call(this.isUsernameAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUsernameAvailable)? isUsernameAvailable,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (isUsernameAvailable != null) {
      return isUsernameAvailable(this.isUsernameAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsUsernameAvailable value) isUsernameAvailable,
    required TResult Function(AuthenticationError value) error,
  }) {
    return isUsernameAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(IsUsernameAvailable value)? isUsernameAvailable,
    TResult? Function(AuthenticationError value)? error,
  }) {
    return isUsernameAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsUsernameAvailable value)? isUsernameAvailable,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) {
    if (isUsernameAvailable != null) {
      return isUsernameAvailable(this);
    }
    return orElse();
  }
}

abstract class IsUsernameAvailable implements UsernameState {
  const factory IsUsernameAvailable(final bool isUsernameAvailable) =
      _$IsUsernameAvailable;

  bool get isUsernameAvailable;
  @JsonKey(ignore: true)
  _$$IsUsernameAvailableCopyWith<_$IsUsernameAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationErrorCopyWith<$Res> {
  factory _$$AuthenticationErrorCopyWith(_$AuthenticationError value,
          $Res Function(_$AuthenticationError) then) =
      __$$AuthenticationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthenticationErrorCopyWithImpl<$Res>
    extends _$UsernameStateCopyWithImpl<$Res, _$AuthenticationError>
    implements _$$AuthenticationErrorCopyWith<$Res> {
  __$$AuthenticationErrorCopyWithImpl(
      _$AuthenticationError _value, $Res Function(_$AuthenticationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthenticationError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationError implements AuthenticationError {
  const _$AuthenticationError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UsernameState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationErrorCopyWith<_$AuthenticationError> get copyWith =>
      __$$AuthenticationErrorCopyWithImpl<_$AuthenticationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isUsernameAvailable) isUsernameAvailable,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isUsernameAvailable)? isUsernameAvailable,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isUsernameAvailable)? isUsernameAvailable,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(IsUsernameAvailable value) isUsernameAvailable,
    required TResult Function(AuthenticationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(IsUsernameAvailable value)? isUsernameAvailable,
    TResult? Function(AuthenticationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(IsUsernameAvailable value)? isUsernameAvailable,
    TResult Function(AuthenticationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthenticationError implements UsernameState {
  const factory AuthenticationError(final String message) =
      _$AuthenticationError;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthenticationErrorCopyWith<_$AuthenticationError> get copyWith =>
      throw _privateConstructorUsedError;
}
