// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlertStateCubit {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(AlertResponseModel listAlert) loadedAlertList,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(AlertResponseModel listAlert)? loadedAlertList,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(AlertResponseModel listAlert)? loadedAlertList,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(loading_page value) loading,
    required TResult Function(LoadedAlertListState value) loadedAlertList,
    required TResult Function(ErrorAlertStateCubit value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(loading_page value)? loading,
    TResult? Function(LoadedAlertListState value)? loadedAlertList,
    TResult? Function(ErrorAlertStateCubit value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(loading_page value)? loading,
    TResult Function(LoadedAlertListState value)? loadedAlertList,
    TResult Function(ErrorAlertStateCubit value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertStateCubitCopyWith<$Res> {
  factory $AlertStateCubitCopyWith(
          AlertStateCubit value, $Res Function(AlertStateCubit) then) =
      _$AlertStateCubitCopyWithImpl<$Res, AlertStateCubit>;
}

/// @nodoc
class _$AlertStateCubitCopyWithImpl<$Res, $Val extends AlertStateCubit>
    implements $AlertStateCubitCopyWith<$Res> {
  _$AlertStateCubitCopyWithImpl(this._value, this._then);

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
    extends _$AlertStateCubitCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AlertStateCubit.initial()';
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
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(AlertResponseModel listAlert) loadedAlertList,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(AlertResponseModel listAlert)? loadedAlertList,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(AlertResponseModel listAlert)? loadedAlertList,
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
    required TResult Function(loading_page value) loading,
    required TResult Function(LoadedAlertListState value) loadedAlertList,
    required TResult Function(ErrorAlertStateCubit value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(loading_page value)? loading,
    TResult? Function(LoadedAlertListState value)? loadedAlertList,
    TResult? Function(ErrorAlertStateCubit value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(loading_page value)? loading,
    TResult Function(LoadedAlertListState value)? loadedAlertList,
    TResult Function(ErrorAlertStateCubit value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AlertStateCubit {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$loading_pageCopyWith<$Res> {
  factory _$$loading_pageCopyWith(
          _$loading_page value, $Res Function(_$loading_page) then) =
      __$$loading_pageCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFirstFetch});
}

/// @nodoc
class __$$loading_pageCopyWithImpl<$Res>
    extends _$AlertStateCubitCopyWithImpl<$Res, _$loading_page>
    implements _$$loading_pageCopyWith<$Res> {
  __$$loading_pageCopyWithImpl(
      _$loading_page _value, $Res Function(_$loading_page) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstFetch = null,
  }) {
    return _then(_$loading_page(
      isFirstFetch: null == isFirstFetch
          ? _value.isFirstFetch
          : isFirstFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$loading_page implements loading_page {
  const _$loading_page({this.isFirstFetch = false});

  @override
  @JsonKey()
  final bool isFirstFetch;

  @override
  String toString() {
    return 'AlertStateCubit.loading(isFirstFetch: $isFirstFetch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loading_page &&
            (identical(other.isFirstFetch, isFirstFetch) ||
                other.isFirstFetch == isFirstFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstFetch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loading_pageCopyWith<_$loading_page> get copyWith =>
      __$$loading_pageCopyWithImpl<_$loading_page>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(AlertResponseModel listAlert) loadedAlertList,
    required TResult Function(String message) error,
  }) {
    return loading(isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(AlertResponseModel listAlert)? loadedAlertList,
    TResult? Function(String message)? error,
  }) {
    return loading?.call(isFirstFetch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(AlertResponseModel listAlert)? loadedAlertList,
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
    required TResult Function(Initial value) initial,
    required TResult Function(loading_page value) loading,
    required TResult Function(LoadedAlertListState value) loadedAlertList,
    required TResult Function(ErrorAlertStateCubit value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(loading_page value)? loading,
    TResult? Function(LoadedAlertListState value)? loadedAlertList,
    TResult? Function(ErrorAlertStateCubit value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(loading_page value)? loading,
    TResult Function(LoadedAlertListState value)? loadedAlertList,
    TResult Function(ErrorAlertStateCubit value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class loading_page implements AlertStateCubit {
  const factory loading_page({final bool isFirstFetch}) = _$loading_page;

  bool get isFirstFetch;
  @JsonKey(ignore: true)
  _$$loading_pageCopyWith<_$loading_page> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedAlertListStateCopyWith<$Res> {
  factory _$$LoadedAlertListStateCopyWith(_$LoadedAlertListState value,
          $Res Function(_$LoadedAlertListState) then) =
      __$$LoadedAlertListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertResponseModel listAlert});

  $AlertResponseModelCopyWith<$Res> get listAlert;
}

/// @nodoc
class __$$LoadedAlertListStateCopyWithImpl<$Res>
    extends _$AlertStateCubitCopyWithImpl<$Res, _$LoadedAlertListState>
    implements _$$LoadedAlertListStateCopyWith<$Res> {
  __$$LoadedAlertListStateCopyWithImpl(_$LoadedAlertListState _value,
      $Res Function(_$LoadedAlertListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listAlert = null,
  }) {
    return _then(_$LoadedAlertListState(
      listAlert: null == listAlert
          ? _value.listAlert
          : listAlert // ignore: cast_nullable_to_non_nullable
              as AlertResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AlertResponseModelCopyWith<$Res> get listAlert {
    return $AlertResponseModelCopyWith<$Res>(_value.listAlert, (value) {
      return _then(_value.copyWith(listAlert: value));
    });
  }
}

/// @nodoc

class _$LoadedAlertListState implements LoadedAlertListState {
  _$LoadedAlertListState({required this.listAlert});

  @override
  final AlertResponseModel listAlert;

  @override
  String toString() {
    return 'AlertStateCubit.loadedAlertList(listAlert: $listAlert)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAlertListState &&
            (identical(other.listAlert, listAlert) ||
                other.listAlert == listAlert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listAlert);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAlertListStateCopyWith<_$LoadedAlertListState> get copyWith =>
      __$$LoadedAlertListStateCopyWithImpl<_$LoadedAlertListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(AlertResponseModel listAlert) loadedAlertList,
    required TResult Function(String message) error,
  }) {
    return loadedAlertList(listAlert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(AlertResponseModel listAlert)? loadedAlertList,
    TResult? Function(String message)? error,
  }) {
    return loadedAlertList?.call(listAlert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(AlertResponseModel listAlert)? loadedAlertList,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedAlertList != null) {
      return loadedAlertList(listAlert);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(loading_page value) loading,
    required TResult Function(LoadedAlertListState value) loadedAlertList,
    required TResult Function(ErrorAlertStateCubit value) error,
  }) {
    return loadedAlertList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(loading_page value)? loading,
    TResult? Function(LoadedAlertListState value)? loadedAlertList,
    TResult? Function(ErrorAlertStateCubit value)? error,
  }) {
    return loadedAlertList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(loading_page value)? loading,
    TResult Function(LoadedAlertListState value)? loadedAlertList,
    TResult Function(ErrorAlertStateCubit value)? error,
    required TResult orElse(),
  }) {
    if (loadedAlertList != null) {
      return loadedAlertList(this);
    }
    return orElse();
  }
}

abstract class LoadedAlertListState implements AlertStateCubit {
  factory LoadedAlertListState({required final AlertResponseModel listAlert}) =
      _$LoadedAlertListState;

  AlertResponseModel get listAlert;
  @JsonKey(ignore: true)
  _$$LoadedAlertListStateCopyWith<_$LoadedAlertListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAlertStateCubitCopyWith<$Res> {
  factory _$$ErrorAlertStateCubitCopyWith(_$ErrorAlertStateCubit value,
          $Res Function(_$ErrorAlertStateCubit) then) =
      __$$ErrorAlertStateCubitCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorAlertStateCubitCopyWithImpl<$Res>
    extends _$AlertStateCubitCopyWithImpl<$Res, _$ErrorAlertStateCubit>
    implements _$$ErrorAlertStateCubitCopyWith<$Res> {
  __$$ErrorAlertStateCubitCopyWithImpl(_$ErrorAlertStateCubit _value,
      $Res Function(_$ErrorAlertStateCubit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorAlertStateCubit(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAlertStateCubit implements ErrorAlertStateCubit {
  _$ErrorAlertStateCubit(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AlertStateCubit.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAlertStateCubit &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAlertStateCubitCopyWith<_$ErrorAlertStateCubit> get copyWith =>
      __$$ErrorAlertStateCubitCopyWithImpl<_$ErrorAlertStateCubit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFirstFetch) loading,
    required TResult Function(AlertResponseModel listAlert) loadedAlertList,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFirstFetch)? loading,
    TResult? Function(AlertResponseModel listAlert)? loadedAlertList,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFirstFetch)? loading,
    TResult Function(AlertResponseModel listAlert)? loadedAlertList,
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
    required TResult Function(loading_page value) loading,
    required TResult Function(LoadedAlertListState value) loadedAlertList,
    required TResult Function(ErrorAlertStateCubit value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(loading_page value)? loading,
    TResult? Function(LoadedAlertListState value)? loadedAlertList,
    TResult? Function(ErrorAlertStateCubit value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(loading_page value)? loading,
    TResult Function(LoadedAlertListState value)? loadedAlertList,
    TResult Function(ErrorAlertStateCubit value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAlertStateCubit implements AlertStateCubit {
  factory ErrorAlertStateCubit(final String message) = _$ErrorAlertStateCubit;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorAlertStateCubitCopyWith<_$ErrorAlertStateCubit> get copyWith =>
      throw _privateConstructorUsedError;
}
