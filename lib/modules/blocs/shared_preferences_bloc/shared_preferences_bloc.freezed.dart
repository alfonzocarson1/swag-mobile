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
  bool get isListView => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isListView) init,
    required TResult Function(bool isListView) setIsListView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? init,
    TResult? Function(bool isListView)? setIsListView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? init,
    TResult Function(bool isListView)? setIsListView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SetIsListView value) setIsListView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(SetIsListView value)? setIsListView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SetIsListView value)? setIsListView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SharedPreferencesEventCopyWith<SharedPreferencesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPreferencesEventCopyWith<$Res> {
  factory $SharedPreferencesEventCopyWith(SharedPreferencesEvent value,
          $Res Function(SharedPreferencesEvent) then) =
      _$SharedPreferencesEventCopyWithImpl<$Res, SharedPreferencesEvent>;
  @useResult
  $Res call({bool isListView});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
  }) {
    return _then(_value.copyWith(
      isListView: null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitCopyWith<$Res>
    implements $SharedPreferencesEventCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isListView});
}

/// @nodoc
class __$$InitCopyWithImpl<$Res>
    extends _$SharedPreferencesEventCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
  }) {
    return _then(_$Init(
      null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Init implements Init {
  const _$Init(this.isListView);

  @override
  final bool isListView;

  @override
  String toString() {
    return 'SharedPreferencesEvent.init(isListView: $isListView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Init &&
            (identical(other.isListView, isListView) ||
                other.isListView == isListView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isListView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitCopyWith<_$Init> get copyWith =>
      __$$InitCopyWithImpl<_$Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isListView) init,
    required TResult Function(bool isListView) setIsListView,
  }) {
    return init(isListView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? init,
    TResult? Function(bool isListView)? setIsListView,
  }) {
    return init?.call(isListView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? init,
    TResult Function(bool isListView)? setIsListView,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(isListView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(SetIsListView value) setIsListView,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(SetIsListView value)? setIsListView,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SetIsListView value)? setIsListView,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SharedPreferencesEvent {
  const factory Init(final bool isListView) = _$Init;

  @override
  bool get isListView;
  @override
  @JsonKey(ignore: true)
  _$$InitCopyWith<_$Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetIsListViewCopyWith<$Res>
    implements $SharedPreferencesEventCopyWith<$Res> {
  factory _$$SetIsListViewCopyWith(
          _$SetIsListView value, $Res Function(_$SetIsListView) then) =
      __$$SetIsListViewCopyWithImpl<$Res>;
  @override
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
    required TResult Function(bool isListView) init,
    required TResult Function(bool isListView) setIsListView,
  }) {
    return setIsListView(isListView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? init,
    TResult? Function(bool isListView)? setIsListView,
  }) {
    return setIsListView?.call(isListView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? init,
    TResult Function(bool isListView)? setIsListView,
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
    required TResult Function(Init value) init,
    required TResult Function(SetIsListView value) setIsListView,
  }) {
    return setIsListView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(SetIsListView value)? setIsListView,
  }) {
    return setIsListView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(SetIsListView value)? setIsListView,
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

  @override
  bool get isListView;
  @override
  @JsonKey(ignore: true)
  _$$SetIsListViewCopyWith<_$SetIsListView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SharedPreferencesState {
  bool get isListView => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isListView) initial,
    required TResult Function(bool isListView) setIsListView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? initial,
    TResult? Function(bool isListView)? setIsListView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? initial,
    TResult Function(bool isListView)? setIsListView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIsListView value) setIsListView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIsListView value)? setIsListView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIsListView value)? setIsListView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SharedPreferencesStateCopyWith<SharedPreferencesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedPreferencesStateCopyWith<$Res> {
  factory $SharedPreferencesStateCopyWith(SharedPreferencesState value,
          $Res Function(SharedPreferencesState) then) =
      _$SharedPreferencesStateCopyWithImpl<$Res, SharedPreferencesState>;
  @useResult
  $Res call({bool isListView});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
  }) {
    return _then(_value.copyWith(
      isListView: null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SharedPreferencesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isListView});
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
    Object? isListView = null,
  }) {
    return _then(_$_Initial(
      null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.isListView);

  @override
  final bool isListView;

  @override
  String toString() {
    return 'SharedPreferencesState.initial(isListView: $isListView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isListView, isListView) ||
                other.isListView == isListView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isListView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isListView) initial,
    required TResult Function(bool isListView) setIsListView,
  }) {
    return initial(isListView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? initial,
    TResult? Function(bool isListView)? setIsListView,
  }) {
    return initial?.call(isListView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? initial,
    TResult Function(bool isListView)? setIsListView,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isListView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIsListView value) setIsListView,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIsListView value)? setIsListView,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIsListView value)? setIsListView,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SharedPreferencesState {
  const factory _Initial(final bool isListView) = _$_Initial;

  @override
  bool get isListView;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetIsListViewCopyWith<$Res>
    implements $SharedPreferencesStateCopyWith<$Res> {
  factory _$$_SetIsListViewCopyWith(
          _$_SetIsListView value, $Res Function(_$_SetIsListView) then) =
      __$$_SetIsListViewCopyWithImpl<$Res>;
  @override
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
    required TResult Function(bool isListView) initial,
    required TResult Function(bool isListView) setIsListView,
  }) {
    return setIsListView(isListView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isListView)? initial,
    TResult? Function(bool isListView)? setIsListView,
  }) {
    return setIsListView?.call(isListView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isListView)? initial,
    TResult Function(bool isListView)? setIsListView,
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
  }) {
    return setIsListView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIsListView value)? setIsListView,
  }) {
    return setIsListView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIsListView value)? setIsListView,
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

  @override
  bool get isListView;
  @override
  @JsonKey(ignore: true)
  _$$_SetIsListViewCopyWith<_$_SetIsListView> get copyWith =>
      throw _privateConstructorUsedError;
}
