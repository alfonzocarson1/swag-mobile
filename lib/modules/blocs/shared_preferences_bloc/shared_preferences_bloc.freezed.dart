// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_preferences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SharedPreferencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isListView) setIsListView,
    required TResult Function(int sortBy) setSortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? setIsListView,
    TResult? Function(int sortBy)? setSortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? setIsListView,
    TResult Function(int sortBy)? setSortBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetIsListView value) setIsListView,
    required TResult Function(SetSortBy value) setSortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIsListView value)? setIsListView,
    TResult? Function(SetSortBy value)? setSortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIsListView value)? setIsListView,
    TResult Function(SetSortBy value)? setSortBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPreferencesEventCopyWith<$Res> {
  factory $SharedPreferencesEventCopyWith(SharedPreferencesEvent value,
          $Res Function(SharedPreferencesEvent) then) =
      _$SharedPreferencesEventCopyWithImpl<$Res, SharedPreferencesEvent>;
}

/// @nodoc
class _$SharedPreferencesEventCopyWithImpl<$Res,
        $Val extends SharedPreferencesEvent>
    implements $SharedPreferencesEventCopyWith<$Res> {
  _$SharedPreferencesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetIsListViewCopyWith<$Res> {
  factory _$$SetIsListViewCopyWith(
          _$SetIsListView value, $Res Function(_$SetIsListView) then) =
      __$$SetIsListViewCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isListView});
}

/// @nodoc
class __$$SetIsListViewCopyWithImpl<$Res>
    extends _$SharedPreferencesEventCopyWithImpl<$Res, _$SetIsListView>
    implements _$$SetIsListViewCopyWith<$Res> {
  __$$SetIsListViewCopyWithImpl(
      _$SetIsListView _value, $Res Function(_$SetIsListView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
  }) {
    return _then(_$SetIsListView(
      null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetIsListView implements SetIsListView {
  const _$SetIsListView(this.isListView);

  @override
  final bool isListView;

  @override
  String toString() {
    return 'SharedPreferencesEvent.setIsListView(isListView: $isListView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIsListView &&
            (identical(other.isListView, isListView) ||
                other.isListView == isListView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isListView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIsListViewCopyWith<_$SetIsListView> get copyWith =>
      __$$SetIsListViewCopyWithImpl<_$SetIsListView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isListView) setIsListView,
    required TResult Function(int sortBy) setSortBy,
  }) {
    return setIsListView(isListView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? setIsListView,
    TResult? Function(int sortBy)? setSortBy,
  }) {
    return setIsListView?.call(isListView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? setIsListView,
    TResult Function(int sortBy)? setSortBy,
    required TResult orElse(),
  }) {
    if (setIsListView != null) {
      return setIsListView(isListView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetIsListView value) setIsListView,
    required TResult Function(SetSortBy value) setSortBy,
  }) {
    return setIsListView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIsListView value)? setIsListView,
    TResult? Function(SetSortBy value)? setSortBy,
  }) {
    return setIsListView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIsListView value)? setIsListView,
    TResult Function(SetSortBy value)? setSortBy,
    required TResult orElse(),
  }) {
    if (setIsListView != null) {
      return setIsListView(this);
    }
    return orElse();
  }
}

abstract class SetIsListView implements SharedPreferencesEvent {
  const factory SetIsListView(final bool isListView) = _$SetIsListView;

  bool get isListView;
  @JsonKey(ignore: true)
  _$$SetIsListViewCopyWith<_$SetIsListView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSortByCopyWith<$Res> {
  factory _$$SetSortByCopyWith(
          _$SetSortBy value, $Res Function(_$SetSortBy) then) =
      __$$SetSortByCopyWithImpl<$Res>;
  @useResult
  $Res call({int sortBy});
}

/// @nodoc
class __$$SetSortByCopyWithImpl<$Res>
    extends _$SharedPreferencesEventCopyWithImpl<$Res, _$SetSortBy>
    implements _$$SetSortByCopyWith<$Res> {
  __$$SetSortByCopyWithImpl(
      _$SetSortBy _value, $Res Function(_$SetSortBy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
  }) {
    return _then(_$SetSortBy(
      null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetSortBy implements SetSortBy {
  const _$SetSortBy(this.sortBy);

  @override
  final int sortBy;

  @override
  String toString() {
    return 'SharedPreferencesEvent.setSortBy(sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSortBy &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSortByCopyWith<_$SetSortBy> get copyWith =>
      __$$SetSortByCopyWithImpl<_$SetSortBy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isListView) setIsListView,
    required TResult Function(int sortBy) setSortBy,
  }) {
    return setSortBy(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? setIsListView,
    TResult? Function(int sortBy)? setSortBy,
  }) {
    return setSortBy?.call(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? setIsListView,
    TResult Function(int sortBy)? setSortBy,
    required TResult orElse(),
  }) {
    if (setSortBy != null) {
      return setSortBy(sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetIsListView value) setIsListView,
    required TResult Function(SetSortBy value) setSortBy,
  }) {
    return setSortBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetIsListView value)? setIsListView,
    TResult? Function(SetSortBy value)? setSortBy,
  }) {
    return setSortBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetIsListView value)? setIsListView,
    TResult Function(SetSortBy value)? setSortBy,
    required TResult orElse(),
  }) {
    if (setSortBy != null) {
      return setSortBy(this);
    }
    return orElse();
  }
}

abstract class SetSortBy implements SharedPreferencesEvent {
  const factory SetSortBy(final int sortBy) = _$SetSortBy;

  int get sortBy;
  @JsonKey(ignore: true)
  _$$SetSortByCopyWith<_$SetSortBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SharedPreferencesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) initial,
    required TResult Function(bool isListView) setIsListView,
    required TResult Function(int sortBy) initialSortBy,
    required TResult Function(int sortBy) setSortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? initial,
    TResult? Function(bool isListView)? setIsListView,
    TResult? Function(int sortBy)? initialSortBy,
    TResult? Function(int sortBy)? setSortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? initial,
    TResult Function(bool isListView)? setIsListView,
    TResult Function(int sortBy)? initialSortBy,
    TResult Function(int sortBy)? setSortBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIsListView value) setIsListView,
    required TResult Function(_InitialSortBy value) initialSortBy,
    required TResult Function(_SetSortBy value) setSortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIsListView value)? setIsListView,
    TResult? Function(_InitialSortBy value)? initialSortBy,
    TResult? Function(_SetSortBy value)? setSortBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIsListView value)? setIsListView,
    TResult Function(_InitialSortBy value)? initialSortBy,
    TResult Function(_SetSortBy value)? setSortBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPreferencesStateCopyWith<$Res> {
  factory $SharedPreferencesStateCopyWith(SharedPreferencesState value,
          $Res Function(SharedPreferencesState) then) =
      _$SharedPreferencesStateCopyWithImpl<$Res, SharedPreferencesState>;
}

/// @nodoc
class _$SharedPreferencesStateCopyWithImpl<$Res,
        $Val extends SharedPreferencesState>
    implements $SharedPreferencesStateCopyWith<$Res> {
  _$SharedPreferencesStateCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SharedPreferencesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_Initial(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'SharedPreferencesState.initial(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) initial,
    required TResult Function(bool isListView) setIsListView,
    required TResult Function(int sortBy) initialSortBy,
    required TResult Function(int sortBy) setSortBy,
  }) {
    return initial(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? initial,
    TResult? Function(bool isListView)? setIsListView,
    TResult? Function(int sortBy)? initialSortBy,
    TResult? Function(int sortBy)? setSortBy,
  }) {
    return initial?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? initial,
    TResult Function(bool isListView)? setIsListView,
    TResult Function(int sortBy)? initialSortBy,
    TResult Function(int sortBy)? setSortBy,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIsListView value) setIsListView,
    required TResult Function(_InitialSortBy value) initialSortBy,
    required TResult Function(_SetSortBy value) setSortBy,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIsListView value)? setIsListView,
    TResult? Function(_InitialSortBy value)? initialSortBy,
    TResult? Function(_SetSortBy value)? setSortBy,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIsListView value)? setIsListView,
    TResult Function(_InitialSortBy value)? initialSortBy,
    TResult Function(_SetSortBy value)? setSortBy,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SharedPreferencesState {
  const factory _Initial(final bool value) = _$_Initial;

  bool get value;
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetIsListViewCopyWith<$Res> {
  factory _$$_SetIsListViewCopyWith(
          _$_SetIsListView value, $Res Function(_$_SetIsListView) then) =
      __$$_SetIsListViewCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isListView});
}

/// @nodoc
class __$$_SetIsListViewCopyWithImpl<$Res>
    extends _$SharedPreferencesStateCopyWithImpl<$Res, _$_SetIsListView>
    implements _$$_SetIsListViewCopyWith<$Res> {
  __$$_SetIsListViewCopyWithImpl(
      _$_SetIsListView _value, $Res Function(_$_SetIsListView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
  }) {
    return _then(_$_SetIsListView(
      null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetIsListView implements _SetIsListView {
  const _$_SetIsListView(this.isListView);

  @override
  final bool isListView;

  @override
  String toString() {
    return 'SharedPreferencesState.setIsListView(isListView: $isListView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetIsListView &&
            (identical(other.isListView, isListView) ||
                other.isListView == isListView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isListView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetIsListViewCopyWith<_$_SetIsListView> get copyWith =>
      __$$_SetIsListViewCopyWithImpl<_$_SetIsListView>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) initial,
    required TResult Function(bool isListView) setIsListView,
    required TResult Function(int sortBy) initialSortBy,
    required TResult Function(int sortBy) setSortBy,
  }) {
    return setIsListView(isListView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? initial,
    TResult? Function(bool isListView)? setIsListView,
    TResult? Function(int sortBy)? initialSortBy,
    TResult? Function(int sortBy)? setSortBy,
  }) {
    return setIsListView?.call(isListView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? initial,
    TResult Function(bool isListView)? setIsListView,
    TResult Function(int sortBy)? initialSortBy,
    TResult Function(int sortBy)? setSortBy,
    required TResult orElse(),
  }) {
    if (setIsListView != null) {
      return setIsListView(isListView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIsListView value) setIsListView,
    required TResult Function(_InitialSortBy value) initialSortBy,
    required TResult Function(_SetSortBy value) setSortBy,
  }) {
    return setIsListView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIsListView value)? setIsListView,
    TResult? Function(_InitialSortBy value)? initialSortBy,
    TResult? Function(_SetSortBy value)? setSortBy,
  }) {
    return setIsListView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIsListView value)? setIsListView,
    TResult Function(_InitialSortBy value)? initialSortBy,
    TResult Function(_SetSortBy value)? setSortBy,
    required TResult orElse(),
  }) {
    if (setIsListView != null) {
      return setIsListView(this);
    }
    return orElse();
  }
}

abstract class _SetIsListView implements SharedPreferencesState {
  const factory _SetIsListView(final bool isListView) = _$_SetIsListView;

  bool get isListView;
  @JsonKey(ignore: true)
  _$$_SetIsListViewCopyWith<_$_SetIsListView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitialSortByCopyWith<$Res> {
  factory _$$_InitialSortByCopyWith(
          _$_InitialSortBy value, $Res Function(_$_InitialSortBy) then) =
      __$$_InitialSortByCopyWithImpl<$Res>;
  @useResult
  $Res call({int sortBy});
}

/// @nodoc
class __$$_InitialSortByCopyWithImpl<$Res>
    extends _$SharedPreferencesStateCopyWithImpl<$Res, _$_InitialSortBy>
    implements _$$_InitialSortByCopyWith<$Res> {
  __$$_InitialSortByCopyWithImpl(
      _$_InitialSortBy _value, $Res Function(_$_InitialSortBy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
  }) {
    return _then(_$_InitialSortBy(
      null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_InitialSortBy implements _InitialSortBy {
  const _$_InitialSortBy(this.sortBy);

  @override
  final int sortBy;

  @override
  String toString() {
    return 'SharedPreferencesState.initialSortBy(sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialSortBy &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialSortByCopyWith<_$_InitialSortBy> get copyWith =>
      __$$_InitialSortByCopyWithImpl<_$_InitialSortBy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) initial,
    required TResult Function(bool isListView) setIsListView,
    required TResult Function(int sortBy) initialSortBy,
    required TResult Function(int sortBy) setSortBy,
  }) {
    return initialSortBy(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? initial,
    TResult? Function(bool isListView)? setIsListView,
    TResult? Function(int sortBy)? initialSortBy,
    TResult? Function(int sortBy)? setSortBy,
  }) {
    return initialSortBy?.call(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? initial,
    TResult Function(bool isListView)? setIsListView,
    TResult Function(int sortBy)? initialSortBy,
    TResult Function(int sortBy)? setSortBy,
    required TResult orElse(),
  }) {
    if (initialSortBy != null) {
      return initialSortBy(sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIsListView value) setIsListView,
    required TResult Function(_InitialSortBy value) initialSortBy,
    required TResult Function(_SetSortBy value) setSortBy,
  }) {
    return initialSortBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIsListView value)? setIsListView,
    TResult? Function(_InitialSortBy value)? initialSortBy,
    TResult? Function(_SetSortBy value)? setSortBy,
  }) {
    return initialSortBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIsListView value)? setIsListView,
    TResult Function(_InitialSortBy value)? initialSortBy,
    TResult Function(_SetSortBy value)? setSortBy,
    required TResult orElse(),
  }) {
    if (initialSortBy != null) {
      return initialSortBy(this);
    }
    return orElse();
  }
}

abstract class _InitialSortBy implements SharedPreferencesState {
  const factory _InitialSortBy(final int sortBy) = _$_InitialSortBy;

  int get sortBy;
  @JsonKey(ignore: true)
  _$$_InitialSortByCopyWith<_$_InitialSortBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetSortByCopyWith<$Res> {
  factory _$$_SetSortByCopyWith(
          _$_SetSortBy value, $Res Function(_$_SetSortBy) then) =
      __$$_SetSortByCopyWithImpl<$Res>;
  @useResult
  $Res call({int sortBy});
}

/// @nodoc
class __$$_SetSortByCopyWithImpl<$Res>
    extends _$SharedPreferencesStateCopyWithImpl<$Res, _$_SetSortBy>
    implements _$$_SetSortByCopyWith<$Res> {
  __$$_SetSortByCopyWithImpl(
      _$_SetSortBy _value, $Res Function(_$_SetSortBy) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
  }) {
    return _then(_$_SetSortBy(
      null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetSortBy implements _SetSortBy {
  const _$_SetSortBy(this.sortBy);

  @override
  final int sortBy;

  @override
  String toString() {
    return 'SharedPreferencesState.setSortBy(sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetSortBy &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetSortByCopyWith<_$_SetSortBy> get copyWith =>
      __$$_SetSortByCopyWithImpl<_$_SetSortBy>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool value) initial,
    required TResult Function(bool isListView) setIsListView,
    required TResult Function(int sortBy) initialSortBy,
    required TResult Function(int sortBy) setSortBy,
  }) {
    return setSortBy(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool value)? initial,
    TResult? Function(bool isListView)? setIsListView,
    TResult? Function(int sortBy)? initialSortBy,
    TResult? Function(int sortBy)? setSortBy,
  }) {
    return setSortBy?.call(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool value)? initial,
    TResult Function(bool isListView)? setIsListView,
    TResult Function(int sortBy)? initialSortBy,
    TResult Function(int sortBy)? setSortBy,
    required TResult orElse(),
  }) {
    if (setSortBy != null) {
      return setSortBy(sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIsListView value) setIsListView,
    required TResult Function(_InitialSortBy value) initialSortBy,
    required TResult Function(_SetSortBy value) setSortBy,
  }) {
    return setSortBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIsListView value)? setIsListView,
    TResult? Function(_InitialSortBy value)? initialSortBy,
    TResult? Function(_SetSortBy value)? setSortBy,
  }) {
    return setSortBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIsListView value)? setIsListView,
    TResult Function(_InitialSortBy value)? initialSortBy,
    TResult Function(_SetSortBy value)? setSortBy,
    required TResult orElse(),
  }) {
    if (setSortBy != null) {
      return setSortBy(this);
    }
    return orElse();
  }
}

abstract class _SetSortBy implements SharedPreferencesState {
  const factory _SetSortBy(final int sortBy) = _$_SetSortBy;

  int get sortBy;
  @JsonKey(ignore: true)
  _$$_SetSortByCopyWith<_$_SetSortBy> get copyWith =>
      throw _privateConstructorUsedError;
}
