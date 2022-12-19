// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticate,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticate,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticate,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_LogoutAuth value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_LogoutAuth value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_LogoutAuth value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'AuthEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticate,
    required TResult Function() logout,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticate,
    TResult? Function()? logout,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticate,
    TResult Function()? logout,
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
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_LogoutAuth value) logout,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_LogoutAuth value)? logout,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements AuthEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_AuthenticateCopyWith<$Res> {
  factory _$$_AuthenticateCopyWith(
          _$_Authenticate value, $Res Function(_$_Authenticate) then) =
      __$$_AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Authenticate>
    implements _$$_AuthenticateCopyWith<$Res> {
  __$$_AuthenticateCopyWithImpl(
      _$_Authenticate _value, $Res Function(_$_Authenticate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticate implements _Authenticate {
  const _$_Authenticate();

  @override
  String toString() {
    return 'AuthEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticate,
    required TResult Function() logout,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticate,
    TResult? Function()? logout,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticate,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_LogoutAuth value) logout,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_LogoutAuth value)? logout,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthEvent {
  const factory _Authenticate() = _$_Authenticate;
}

/// @nodoc
abstract class _$$_LogoutAuthCopyWith<$Res> {
  factory _$$_LogoutAuthCopyWith(
          _$_LogoutAuth value, $Res Function(_$_LogoutAuth) then) =
      __$$_LogoutAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogoutAuth>
    implements _$$_LogoutAuthCopyWith<$Res> {
  __$$_LogoutAuthCopyWithImpl(
      _$_LogoutAuth _value, $Res Function(_$_LogoutAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogoutAuth implements _LogoutAuth {
  const _$_LogoutAuth();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() authenticate,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? authenticate,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? authenticate,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_LogoutAuth value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_LogoutAuth value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutAuth implements AuthEvent {
  const factory _LogoutAuth() = _$_LogoutAuth;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
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
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$WalkthroughCopyWith<$Res> {
  factory _$$WalkthroughCopyWith(
          _$Walkthrough value, $Res Function(_$Walkthrough) then) =
      __$$WalkthroughCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalkthroughCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Walkthrough>
    implements _$$WalkthroughCopyWith<$Res> {
  __$$WalkthroughCopyWithImpl(
      _$Walkthrough _value, $Res Function(_$Walkthrough) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Walkthrough implements Walkthrough {
  const _$Walkthrough();

  @override
  String toString() {
    return 'AuthState.walkthrough()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Walkthrough);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return walkthrough();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return walkthrough?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
    required TResult orElse(),
  }) {
    if (walkthrough != null) {
      return walkthrough();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return walkthrough(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return walkthrough?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (walkthrough != null) {
      return walkthrough(this);
    }
    return orElse();
  }
}

abstract class Walkthrough implements AuthState {
  const factory Walkthrough() = _$Walkthrough;
}

/// @nodoc
abstract class _$$OnboardingCopyWith<$Res> {
  factory _$$OnboardingCopyWith(
          _$Onboarding value, $Res Function(_$Onboarding) then) =
      __$$OnboardingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Onboarding>
    implements _$$OnboardingCopyWith<$Res> {
  __$$OnboardingCopyWithImpl(
      _$Onboarding _value, $Res Function(_$Onboarding) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Onboarding implements Onboarding {
  const _$Onboarding();

  @override
  String toString() {
    return 'AuthState.onboarding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Onboarding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return onboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return onboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
    required TResult orElse(),
  }) {
    if (onboarding != null) {
      return onboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return onboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return onboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (onboarding != null) {
      return onboarding(this);
    }
    return orElse();
  }
}

abstract class Onboarding implements AuthState {
  const factory Onboarding() = _$Onboarding;
}

/// @nodoc
abstract class _$$LoggingCopyWith<$Res> {
  factory _$$LoggingCopyWith(_$Logging value, $Res Function(_$Logging) then) =
      __$$LoggingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Logging>
    implements _$$LoggingCopyWith<$Res> {
  __$$LoggingCopyWithImpl(_$Logging _value, $Res Function(_$Logging) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Logging implements Logging {
  const _$Logging();

  @override
  String toString() {
    return 'AuthState.logging()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logging);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return logging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return logging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
    required TResult orElse(),
  }) {
    if (logging != null) {
      return logging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return logging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return logging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (logging != null) {
      return logging(this);
    }
    return orElse();
  }
}

abstract class Logging implements AuthState {
  const factory Logging() = _$Logging;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Unauthenticated>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
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
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticationError>
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
    return 'AuthState.error(message: $message)';
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
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
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
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthenticationError implements AuthState {
  const factory AuthenticationError(final String message) =
      _$AuthenticationError;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthenticationErrorCopyWith<_$AuthenticationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetCopyWith<$Res> {
  factory _$$ResetCopyWith(_$Reset value, $Res Function(_$Reset) then) =
      __$$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$Reset>
    implements _$$ResetCopyWith<$Res> {
  __$$ResetCopyWithImpl(_$Reset _value, $Res Function(_$Reset) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Reset implements Reset {
  const _$Reset();

  @override
  String toString() {
    return 'AuthState.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class Reset implements AuthState {
  const factory Reset() = _$Reset;
}

/// @nodoc
abstract class _$$RegisteredCopyWith<$Res> {
  factory _$$RegisteredCopyWith(
          _$Registered value, $Res Function(_$Registered) then) =
      __$$RegisteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisteredCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Registered>
    implements _$$RegisteredCopyWith<$Res> {
  __$$RegisteredCopyWithImpl(
      _$Registered _value, $Res Function(_$Registered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Registered implements Registered {
  const _$Registered();

  @override
  String toString() {
    return 'AuthState.registered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Registered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() walkthrough,
    required TResult Function() onboarding,
    required TResult Function() logging,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) error,
    required TResult Function() reset,
    required TResult Function() registered,
  }) {
    return registered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? walkthrough,
    TResult? Function()? onboarding,
    TResult? Function()? logging,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? error,
    TResult? Function()? reset,
    TResult? Function()? registered,
  }) {
    return registered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? walkthrough,
    TResult Function()? onboarding,
    TResult Function()? logging,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? error,
    TResult Function()? reset,
    TResult Function()? registered,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Walkthrough value) walkthrough,
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(Logging value) logging,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticationError value) error,
    required TResult Function(Reset value) reset,
    required TResult Function(Registered value) registered,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Walkthrough value)? walkthrough,
    TResult? Function(Onboarding value)? onboarding,
    TResult? Function(Logging value)? logging,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthenticationError value)? error,
    TResult? Function(Reset value)? reset,
    TResult? Function(Registered value)? registered,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Walkthrough value)? walkthrough,
    TResult Function(Onboarding value)? onboarding,
    TResult Function(Logging value)? logging,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticationError value)? error,
    TResult Function(Reset value)? reset,
    TResult Function(Registered value)? registered,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class Registered implements AuthState {
  const factory Registered() = _$Registered;
}
