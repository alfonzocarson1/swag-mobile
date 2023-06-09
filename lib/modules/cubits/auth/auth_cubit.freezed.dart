// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthStateCubit {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(dynamic isPhoneAvailable) isPhoneAvailable,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(dynamic isPhoneAvailable)? isPhoneAvailable,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(dynamic isPhoneAvailable)? isPhoneAvailable,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(IsPhoneAvailable value) isPhoneAvailable,
    required TResult Function(ErrorAuthStateCubit value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult? Function(ErrorAuthStateCubit value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult Function(ErrorAuthStateCubit value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCubitCopyWith<$Res> {
  factory $AuthStateCubitCopyWith(
          AuthStateCubit value, $Res Function(AuthStateCubit) then) =
      _$AuthStateCubitCopyWithImpl<$Res, AuthStateCubit>;
}

/// @nodoc
class _$AuthStateCubitCopyWithImpl<$Res, $Val extends AuthStateCubit>
    implements $AuthStateCubitCopyWith<$Res> {
  _$AuthStateCubitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCubitCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthStateCubit.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(dynamic isPhoneAvailable) isPhoneAvailable,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(dynamic isPhoneAvailable)? isPhoneAvailable,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(dynamic isPhoneAvailable)? isPhoneAvailable,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(IsPhoneAvailable value) isPhoneAvailable,
    required TResult Function(ErrorAuthStateCubit value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult? Function(ErrorAuthStateCubit value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult Function(ErrorAuthStateCubit value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthStateCubit {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$loading_searchCopyWith<$Res> {
  factory _$$loading_searchCopyWith(
          _$loading_search value, $Res Function(_$loading_search) then) =
      __$$loading_searchCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFirstFetch});
}

/// @nodoc
class __$$loading_searchCopyWithImpl<$Res>
    extends _$AuthStateCubitCopyWithImpl<$Res, _$loading_search>
    implements _$$loading_searchCopyWith<$Res> {
  __$$loading_searchCopyWithImpl(
      _$loading_search _value, $Res Function(_$loading_search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstFetch = null,
  }) {
    return _then(_$loading_search(
      isFirstFetch: null == isFirstFetch
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$loading_search implements loading_search {
  const _$loading_search({this.isFirstFetch = false});

  @override
  @JsonKey()
  final bool isFirstFetch;

  @override
  String toString() {
    return 'AuthStateCubit.loading(isFirstFetch: $isFirstFetch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loading_search &&
            (identical(other.isFirstFetch, isFirstFetch) ||
                other.isFirstFetch == isFirstFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstFetch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loading_searchCopyWith<_$loading_search> get copyWith =>
      __$$loading_searchCopyWithImpl<_$loading_search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(dynamic isPhoneAvailable) isPhoneAvailable,
    required TResult Function(String message) error,
  }) {
    return loading(isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(dynamic isPhoneAvailable)? isPhoneAvailable,
    TResult? Function(String message)? error,
  }) {
    return loading?.call(isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(dynamic isPhoneAvailable)? isPhoneAvailable,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isFirstFetch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(IsPhoneAvailable value) isPhoneAvailable,
    required TResult Function(ErrorAuthStateCubit value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult? Function(ErrorAuthStateCubit value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult Function(ErrorAuthStateCubit value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class loading_search implements AuthStateCubit {
  const factory loading_search({final bool isFirstFetch}) = _$loading_search;

  bool get isFirstFetch;
  @JsonKey(ignore: true)
  _$$loading_searchCopyWith<_$loading_search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsPhoneAvailableCopyWith<$Res> {
  factory _$$IsPhoneAvailableCopyWith(
          _$IsPhoneAvailable value, $Res Function(_$IsPhoneAvailable) then) =
      __$$IsPhoneAvailableCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic isPhoneAvailable});
}

/// @nodoc
class __$$IsPhoneAvailableCopyWithImpl<$Res>
    extends _$AuthStateCubitCopyWithImpl<$Res, _$IsPhoneAvailable>
    implements _$$IsPhoneAvailableCopyWith<$Res> {
  __$$IsPhoneAvailableCopyWithImpl(
      _$IsPhoneAvailable _value, $Res Function(_$IsPhoneAvailable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPhoneAvailable = freezed,
  }) {
    return _then(_$IsPhoneAvailable(
      freezed == isPhoneAvailable
          ? _value.isPhoneAvailable
          : isPhoneAvailable // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$IsPhoneAvailable implements IsPhoneAvailable {
  const _$IsPhoneAvailable(this.isPhoneAvailable);

  @override
  final dynamic isPhoneAvailable;

  @override
  String toString() {
    return 'AuthStateCubit.isPhoneAvailable(isPhoneAvailable: $isPhoneAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsPhoneAvailable &&
            const DeepCollectionEquality()
                .equals(other.isPhoneAvailable, isPhoneAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isPhoneAvailable));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsPhoneAvailableCopyWith<_$IsPhoneAvailable> get copyWith =>
      __$$IsPhoneAvailableCopyWithImpl<_$IsPhoneAvailable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(dynamic isPhoneAvailable) isPhoneAvailable,
    required TResult Function(String message) error,
  }) {
    return isPhoneAvailable(this.isPhoneAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(dynamic isPhoneAvailable)? isPhoneAvailable,
    TResult? Function(String message)? error,
  }) {
    return isPhoneAvailable?.call(this.isPhoneAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(dynamic isPhoneAvailable)? isPhoneAvailable,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (isPhoneAvailable != null) {
      return isPhoneAvailable(this.isPhoneAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(IsPhoneAvailable value) isPhoneAvailable,
    required TResult Function(ErrorAuthStateCubit value) error,
  }) {
    return isPhoneAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult? Function(ErrorAuthStateCubit value)? error,
  }) {
    return isPhoneAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult Function(ErrorAuthStateCubit value)? error,
    required TResult orElse(),
  }) {
    if (isPhoneAvailable != null) {
      return isPhoneAvailable(this);
    }
    return orElse();
  }
}

abstract class IsPhoneAvailable implements AuthStateCubit {
  const factory IsPhoneAvailable(final dynamic isPhoneAvailable) =
      _$IsPhoneAvailable;

  dynamic get isPhoneAvailable;
  @JsonKey(ignore: true)
  _$$IsPhoneAvailableCopyWith<_$IsPhoneAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAuthStateCubitCopyWith<$Res> {
  factory _$$ErrorAuthStateCubitCopyWith(_$ErrorAuthStateCubit value,
          $Res Function(_$ErrorAuthStateCubit) then) =
      __$$ErrorAuthStateCubitCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorAuthStateCubitCopyWithImpl<$Res>
    extends _$AuthStateCubitCopyWithImpl<$Res, _$ErrorAuthStateCubit>
    implements _$$ErrorAuthStateCubitCopyWith<$Res> {
  __$$ErrorAuthStateCubitCopyWithImpl(
      _$ErrorAuthStateCubit _value, $Res Function(_$ErrorAuthStateCubit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorAuthStateCubit(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAuthStateCubit implements ErrorAuthStateCubit {
  _$ErrorAuthStateCubit(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthStateCubit.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthStateCubit &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAuthStateCubitCopyWith<_$ErrorAuthStateCubit> get copyWith =>
      __$$ErrorAuthStateCubitCopyWithImpl<_$ErrorAuthStateCubit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(dynamic isPhoneAvailable) isPhoneAvailable,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(dynamic isPhoneAvailable)? isPhoneAvailable,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(dynamic isPhoneAvailable)? isPhoneAvailable,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(loading_search value) loading,
    required TResult Function(IsPhoneAvailable value) isPhoneAvailable,
    required TResult Function(ErrorAuthStateCubit value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(loading_search value)? loading,
    TResult? Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult? Function(ErrorAuthStateCubit value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(loading_search value)? loading,
    TResult Function(IsPhoneAvailable value)? isPhoneAvailable,
    TResult Function(ErrorAuthStateCubit value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAuthStateCubit implements AuthStateCubit {
  factory ErrorAuthStateCubit(final String message) = _$ErrorAuthStateCubit;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorAuthStateCubitCopyWith<_$ErrorAuthStateCubit> get copyWith =>
      throw _privateConstructorUsedError;
}
