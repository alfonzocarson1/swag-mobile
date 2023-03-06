// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateProfileEvent {
  UpdateProfilePayloadModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateProfileEventCopyWith<UpdateProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res, UpdateProfileEvent>;
  @useResult
  $Res call({UpdateProfilePayloadModel model});

  $UpdateProfilePayloadModelCopyWith<$Res> get model;
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res, $Val extends UpdateProfileEvent>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(this._value, this._then);

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
              as UpdateProfilePayloadModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateProfilePayloadModelCopyWith<$Res> get model {
    return $UpdateProfilePayloadModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateProfileEventCopyWith<$Res>
    implements $UpdateProfileEventCopyWith<$Res> {
  factory _$$_UpdateProfileEventCopyWith(_$_UpdateProfileEvent value,
          $Res Function(_$_UpdateProfileEvent) then) =
      __$$_UpdateProfileEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateProfilePayloadModel model});

  @override
  $UpdateProfilePayloadModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateProfileEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$_UpdateProfileEvent>
    implements _$$_UpdateProfileEventCopyWith<$Res> {
  __$$_UpdateProfileEventCopyWithImpl(
      _$_UpdateProfileEvent _value, $Res Function(_$_UpdateProfileEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_UpdateProfileEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UpdateProfilePayloadModel,
    ));
  }
}

/// @nodoc

class _$_UpdateProfileEvent implements _UpdateProfileEvent {
  const _$_UpdateProfileEvent(this.model);

  @override
  final UpdateProfilePayloadModel model;

  @override
  String toString() {
    return 'UpdateProfileEvent.update(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileEventCopyWith<_$_UpdateProfileEvent> get copyWith =>
      __$$_UpdateProfileEventCopyWithImpl<_$_UpdateProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
  }) {
    return update(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
  }) {
    return update?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileEvent implements UpdateProfileEvent {
  const factory _UpdateProfileEvent(final UpdateProfilePayloadModel model) =
      _$_UpdateProfileEvent;

  @override
  UpdateProfilePayloadModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProfileEventCopyWith<_$_UpdateProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function() updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function()? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function()? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Updated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(Updated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialUpdateProfileStateCopyWith<$Res> {
  factory _$$_InitialUpdateProfileStateCopyWith(
          _$_InitialUpdateProfileState value,
          $Res Function(_$_InitialUpdateProfileState) then) =
      __$$_InitialUpdateProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialUpdateProfileStateCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$_InitialUpdateProfileState>
    implements _$$_InitialUpdateProfileStateCopyWith<$Res> {
  __$$_InitialUpdateProfileStateCopyWithImpl(
      _$_InitialUpdateProfileState _value,
      $Res Function(_$_InitialUpdateProfileState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialUpdateProfileState extends _InitialUpdateProfileState {
  _$_InitialUpdateProfileState() : super._();

  @override
  String toString() {
    return 'UpdateProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialUpdateProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function() updated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function()? updated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function()? updated,
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
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Updated value) updated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(Updated value)? updated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialUpdateProfileState extends UpdateProfileState {
  factory _InitialUpdateProfileState() = _$_InitialUpdateProfileState;
  _InitialUpdateProfileState._() : super._();
}

/// @nodoc
abstract class _$$_ErrorUpdateProfileStateCopyWith<$Res> {
  factory _$$_ErrorUpdateProfileStateCopyWith(_$_ErrorUpdateProfileState value,
          $Res Function(_$_ErrorUpdateProfileState) then) =
      __$$_ErrorUpdateProfileStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorUpdateProfileStateCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$_ErrorUpdateProfileState>
    implements _$$_ErrorUpdateProfileStateCopyWith<$Res> {
  __$$_ErrorUpdateProfileStateCopyWithImpl(_$_ErrorUpdateProfileState _value,
      $Res Function(_$_ErrorUpdateProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorUpdateProfileState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorUpdateProfileState extends _ErrorUpdateProfileState {
  _$_ErrorUpdateProfileState(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'UpdateProfileState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorUpdateProfileState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorUpdateProfileStateCopyWith<_$_ErrorUpdateProfileState>
      get copyWith =>
          __$$_ErrorUpdateProfileStateCopyWithImpl<_$_ErrorUpdateProfileState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function() updated,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function()? updated,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function()? updated,
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
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Updated value) updated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(Updated value)? updated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorUpdateProfileState extends UpdateProfileState {
  factory _ErrorUpdateProfileState(final String message) =
      _$_ErrorUpdateProfileState;
  _ErrorUpdateProfileState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorUpdateProfileStateCopyWith<_$_ErrorUpdateProfileState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedSuccessCopyWith<$Res> {
  factory _$$LoadedSuccessCopyWith(
          _$LoadedSuccess value, $Res Function(_$LoadedSuccess) then) =
      __$$LoadedSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfileModel successList});

  $UpdateProfileModelCopyWith<$Res> get successList;
}

/// @nodoc
class __$$LoadedSuccessCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$LoadedSuccess>
    implements _$$LoadedSuccessCopyWith<$Res> {
  __$$LoadedSuccessCopyWithImpl(
      _$LoadedSuccess _value, $Res Function(_$LoadedSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successList = null,
  }) {
    return _then(_$LoadedSuccess(
      null == successList
          ? _value.successList
          : successList // ignore: cast_nullable_to_non_nullable
              as UpdateProfileModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateProfileModelCopyWith<$Res> get successList {
    return $UpdateProfileModelCopyWith<$Res>(_value.successList, (value) {
      return _then(_value.copyWith(successList: value));
    });
  }
}

/// @nodoc

class _$LoadedSuccess extends LoadedSuccess {
  _$LoadedSuccess(this.successList) : super._();

  @override
  final UpdateProfileModel successList;

  @override
  String toString() {
    return 'UpdateProfileState.loadedSuccess(successList: $successList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSuccess &&
            (identical(other.successList, successList) ||
                other.successList == successList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSuccessCopyWith<_$LoadedSuccess> get copyWith =>
      __$$LoadedSuccessCopyWithImpl<_$LoadedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function() updated,
  }) {
    return loadedSuccess(successList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function()? updated,
  }) {
    return loadedSuccess?.call(successList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(successList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Updated value) updated,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(Updated value)? updated,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) {
    if (loadedSuccess != null) {
      return loadedSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadedSuccess extends UpdateProfileState {
  factory LoadedSuccess(final UpdateProfileModel successList) = _$LoadedSuccess;
  LoadedSuccess._() : super._();

  UpdateProfileModel get successList;
  @JsonKey(ignore: true)
  _$$LoadedSuccessCopyWith<_$LoadedSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedCopyWith<$Res> {
  factory _$$UpdatedCopyWith(_$Updated value, $Res Function(_$Updated) then) =
      __$$UpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$Updated>
    implements _$$UpdatedCopyWith<$Res> {
  __$$UpdatedCopyWithImpl(_$Updated _value, $Res Function(_$Updated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Updated extends Updated {
  _$Updated() : super._();

  @override
  String toString() {
    return 'UpdateProfileState.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Updated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function() updated,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function()? updated,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function()? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(Updated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(Updated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(Updated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class Updated extends UpdateProfileState {
  factory Updated() = _$Updated;
  Updated._() : super._();
}
