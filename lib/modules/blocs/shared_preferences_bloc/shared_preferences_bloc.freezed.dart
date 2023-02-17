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
  SharedPreferenceModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SharedPreferenceModel model) setPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SharedPreferenceModel model)? setPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SharedPreferenceModel model)? setPreference,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetPreference value) setPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetPreference value)? setPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetPreference value)? setPreference,
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
  $Res call({SharedPreferenceModel model});

  $SharedPreferenceModelCopyWith<$Res> get model;
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
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SharedPreferenceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SharedPreferenceModelCopyWith<$Res> get model {
    return $SharedPreferenceModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetPreferenceCopyWith<$Res>
    implements $SharedPreferencesEventCopyWith<$Res> {
  factory _$$SetPreferenceCopyWith(
          _$SetPreference value, $Res Function(_$SetPreference) then) =
      __$$SetPreferenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SharedPreferenceModel model});

  @override
  $SharedPreferenceModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$SetPreferenceCopyWithImpl<$Res>
    extends _$SharedPreferencesEventCopyWithImpl<$Res, _$SetPreference>
    implements _$$SetPreferenceCopyWith<$Res> {
  __$$SetPreferenceCopyWithImpl(
      _$SetPreference _value, $Res Function(_$SetPreference) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$SetPreference(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SharedPreferenceModel,
    ));
  }
}

/// @nodoc

class _$SetPreference implements SetPreference {
  const _$SetPreference(this.model);

  @override
  final SharedPreferenceModel model;

  @override
  String toString() {
    return 'SharedPreferencesEvent.setPreference(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPreference &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPreferenceCopyWith<_$SetPreference> get copyWith =>
      __$$SetPreferenceCopyWithImpl<_$SetPreference>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SharedPreferenceModel model) setPreference,
  }) {
    return setPreference(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SharedPreferenceModel model)? setPreference,
  }) {
    return setPreference?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SharedPreferenceModel model)? setPreference,
    required TResult orElse(),
  }) {
    if (setPreference != null) {
      return setPreference(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetPreference value) setPreference,
  }) {
    return setPreference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetPreference value)? setPreference,
  }) {
    return setPreference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetPreference value)? setPreference,
    required TResult orElse(),
  }) {
    if (setPreference != null) {
      return setPreference(this);
    }
    return orElse();
  }
}

abstract class SetPreference implements SharedPreferencesEvent {
  const factory SetPreference(final SharedPreferenceModel model) =
      _$SetPreference;

  @override
  SharedPreferenceModel get model;
  @override
  @JsonKey(ignore: true)
  _$$SetPreferenceCopyWith<_$SetPreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SharedPreferencesState {
  SharedPreferenceModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SharedPreferenceModel model) setPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SharedPreferenceModel model)? setPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SharedPreferenceModel model)? setPreference,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPreference value) setPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPreference value)? setPreference,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPreference value)? setPreference,
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
  $Res call({SharedPreferenceModel model});

  $SharedPreferenceModelCopyWith<$Res> get model;
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
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SharedPreferenceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SharedPreferenceModelCopyWith<$Res> get model {
    return $SharedPreferenceModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SetPreferenceCopyWith<$Res>
    implements $SharedPreferencesStateCopyWith<$Res> {
  factory _$$_SetPreferenceCopyWith(
          _$_SetPreference value, $Res Function(_$_SetPreference) then) =
      __$$_SetPreferenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SharedPreferenceModel model});

  @override
  $SharedPreferenceModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_SetPreferenceCopyWithImpl<$Res>
    extends _$SharedPreferencesStateCopyWithImpl<$Res, _$_SetPreference>
    implements _$$_SetPreferenceCopyWith<$Res> {
  __$$_SetPreferenceCopyWithImpl(
      _$_SetPreference _value, $Res Function(_$_SetPreference) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_SetPreference(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SharedPreferenceModel,
    ));
  }
}

/// @nodoc

class _$_SetPreference implements _SetPreference {
  const _$_SetPreference(this.model);

  @override
  final SharedPreferenceModel model;

  @override
  String toString() {
    return 'SharedPreferencesState.setPreference(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPreference &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetPreferenceCopyWith<_$_SetPreference> get copyWith =>
      __$$_SetPreferenceCopyWithImpl<_$_SetPreference>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SharedPreferenceModel model) setPreference,
  }) {
    return setPreference(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SharedPreferenceModel model)? setPreference,
  }) {
    return setPreference?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SharedPreferenceModel model)? setPreference,
    required TResult orElse(),
  }) {
    if (setPreference != null) {
      return setPreference(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPreference value) setPreference,
  }) {
    return setPreference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetPreference value)? setPreference,
  }) {
    return setPreference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPreference value)? setPreference,
    required TResult orElse(),
  }) {
    if (setPreference != null) {
      return setPreference(this);
    }
    return orElse();
  }
}

abstract class _SetPreference implements SharedPreferencesState {
  const factory _SetPreference(final SharedPreferenceModel model) =
      _$_SetPreference;

  @override
  SharedPreferenceModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_SetPreferenceCopyWith<_$_SetPreference> get copyWith =>
      throw _privateConstructorUsedError;
}
