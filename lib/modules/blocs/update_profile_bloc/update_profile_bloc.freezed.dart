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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileEventCopyWith<$Res> {
  factory $UpdateProfileEventCopyWith(
          UpdateProfileEvent value, $Res Function(UpdateProfileEvent) then) =
      _$UpdateProfileEventCopyWithImpl<$Res, UpdateProfileEvent>;
}

/// @nodoc
class _$UpdateProfileEventCopyWithImpl<$Res, $Val extends UpdateProfileEvent>
    implements $UpdateProfileEventCopyWith<$Res> {
  _$UpdateProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateProfileEventCopyWith<$Res> {
  factory _$$_UpdateProfileEventCopyWith(_$_UpdateProfileEvent value,
          $Res Function(_$_UpdateProfileEvent) then) =
      __$$_UpdateProfileEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfilePayloadModel model});

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

  @override
  @pragma('vm:prefer-inline')
  $UpdateProfilePayloadModelCopyWith<$Res> get model {
    return $UpdateProfilePayloadModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
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
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return update(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return update?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
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
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
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

  UpdateProfilePayloadModel get model;
  @JsonKey(ignore: true)
  _$$_UpdateProfileEventCopyWith<_$_UpdateProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAvatarEventCopyWith<$Res> {
  factory _$$_UpdateAvatarEventCopyWith(_$_UpdateAvatarEvent value,
          $Res Function(_$_UpdateAvatarEvent) then) =
      __$$_UpdateAvatarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List bytes, String imageTopic, String topicId});
}

/// @nodoc
class __$$_UpdateAvatarEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$_UpdateAvatarEvent>
    implements _$$_UpdateAvatarEventCopyWith<$Res> {
  __$$_UpdateAvatarEventCopyWithImpl(
      _$_UpdateAvatarEvent _value, $Res Function(_$_UpdateAvatarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bytes = null,
    Object? imageTopic = null,
    Object? topicId = null,
  }) {
    return _then(_$_UpdateAvatarEvent(
      null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      null == imageTopic
          ? _value.imageTopic
          : imageTopic // ignore: cast_nullable_to_non_nullable
              as String,
      null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateAvatarEvent implements _UpdateAvatarEvent {
  const _$_UpdateAvatarEvent(this.bytes, this.imageTopic, this.topicId);

  @override
  final Uint8List bytes;
  @override
  final String imageTopic;
  @override
  final String topicId;

  @override
  String toString() {
    return 'UpdateProfileEvent.updateAvatar(bytes: $bytes, imageTopic: $imageTopic, topicId: $topicId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAvatarEvent &&
            const DeepCollectionEquality().equals(other.bytes, bytes) &&
            (identical(other.imageTopic, imageTopic) ||
                other.imageTopic == imageTopic) &&
            (identical(other.topicId, topicId) || other.topicId == topicId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(bytes), imageTopic, topicId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAvatarEventCopyWith<_$_UpdateAvatarEvent> get copyWith =>
      __$$_UpdateAvatarEventCopyWithImpl<_$_UpdateAvatarEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return updateAvatar(bytes, imageTopic, topicId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return updateAvatar?.call(bytes, imageTopic, topicId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (updateAvatar != null) {
      return updateAvatar(bytes, imageTopic, topicId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return updateAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return updateAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) {
    if (updateAvatar != null) {
      return updateAvatar(this);
    }
    return orElse();
  }
}

abstract class _UpdateAvatarEvent implements UpdateProfileEvent {
  const factory _UpdateAvatarEvent(final Uint8List bytes,
      final String imageTopic, final String topicId) = _$_UpdateAvatarEvent;

  Uint8List get bytes;
  String get imageTopic;
  String get topicId;
  @JsonKey(ignore: true)
  _$$_UpdateAvatarEventCopyWith<_$_UpdateAvatarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_importDataEventCopyWith<$Res> {
  factory _$$_importDataEventCopyWith(
          _$_importDataEvent value, $Res Function(_$_importDataEvent) then) =
      __$$_importDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_importDataEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$_importDataEvent>
    implements _$$_importDataEventCopyWith<$Res> {
  __$$_importDataEventCopyWithImpl(
      _$_importDataEvent _value, $Res Function(_$_importDataEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_importDataEvent implements _importDataEvent {
  const _$_importDataEvent();

  @override
  String toString() {
    return 'UpdateProfileEvent.importData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_importDataEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return importData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return importData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (importData != null) {
      return importData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return importData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return importData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) {
    if (importData != null) {
      return importData(this);
    }
    return orElse();
  }
}

abstract class _importDataEvent implements UpdateProfileEvent {
  const factory _importDataEvent() = _$_importDataEvent;
}

/// @nodoc
abstract class _$$_AskEmailVerificationCopyWith<$Res> {
  factory _$$_AskEmailVerificationCopyWith(_$_AskEmailVerification value,
          $Res Function(_$_AskEmailVerification) then) =
      __$$_AskEmailVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AskEmailVerificationCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$_AskEmailVerification>
    implements _$$_AskEmailVerificationCopyWith<$Res> {
  __$$_AskEmailVerificationCopyWithImpl(_$_AskEmailVerification _value,
      $Res Function(_$_AskEmailVerification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AskEmailVerification implements _AskEmailVerification {
  const _$_AskEmailVerification();

  @override
  String toString() {
    return 'UpdateProfileEvent.askEmailVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AskEmailVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return askEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return askEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (askEmailVerification != null) {
      return askEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return askEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return askEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) {
    if (askEmailVerification != null) {
      return askEmailVerification(this);
    }
    return orElse();
  }
}

abstract class _AskEmailVerification implements UpdateProfileEvent {
  const factory _AskEmailVerification() = _$_AskEmailVerification;
}

/// @nodoc
abstract class _$$_CloseVerifyEmailModalCopyWith<$Res> {
  factory _$$_CloseVerifyEmailModalCopyWith(_$_CloseVerifyEmailModal value,
          $Res Function(_$_CloseVerifyEmailModal) then) =
      __$$_CloseVerifyEmailModalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseVerifyEmailModalCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$_CloseVerifyEmailModal>
    implements _$$_CloseVerifyEmailModalCopyWith<$Res> {
  __$$_CloseVerifyEmailModalCopyWithImpl(_$_CloseVerifyEmailModal _value,
      $Res Function(_$_CloseVerifyEmailModal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CloseVerifyEmailModal implements _CloseVerifyEmailModal {
  const _$_CloseVerifyEmailModal();

  @override
  String toString() {
    return 'UpdateProfileEvent.closeVerifyEmailModal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseVerifyEmailModal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return closeVerifyEmailModal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return closeVerifyEmailModal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (closeVerifyEmailModal != null) {
      return closeVerifyEmailModal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return closeVerifyEmailModal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return closeVerifyEmailModal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) {
    if (closeVerifyEmailModal != null) {
      return closeVerifyEmailModal(this);
    }
    return orElse();
  }
}

abstract class _CloseVerifyEmailModal implements UpdateProfileEvent {
  const factory _CloseVerifyEmailModal() = _$_CloseVerifyEmailModal;
}

/// @nodoc
abstract class _$$_UpdateProfileNameEventCopyWith<$Res> {
  factory _$$_UpdateProfileNameEventCopyWith(_$_UpdateProfileNameEvent value,
          $Res Function(_$_UpdateProfileNameEvent) then) =
      __$$_UpdateProfileNameEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfilePayloadModel model});

  $UpdateProfilePayloadModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateProfileNameEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$_UpdateProfileNameEvent>
    implements _$$_UpdateProfileNameEventCopyWith<$Res> {
  __$$_UpdateProfileNameEventCopyWithImpl(_$_UpdateProfileNameEvent _value,
      $Res Function(_$_UpdateProfileNameEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_UpdateProfileNameEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UpdateProfilePayloadModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateProfilePayloadModelCopyWith<$Res> get model {
    return $UpdateProfilePayloadModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_UpdateProfileNameEvent implements _UpdateProfileNameEvent {
  const _$_UpdateProfileNameEvent(this.model);

  @override
  final UpdateProfilePayloadModel model;

  @override
  String toString() {
    return 'UpdateProfileEvent.updateName(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileNameEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileNameEventCopyWith<_$_UpdateProfileNameEvent> get copyWith =>
      __$$_UpdateProfileNameEventCopyWithImpl<_$_UpdateProfileNameEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return updateName(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return updateName?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileNameEvent implements UpdateProfileEvent {
  const factory _UpdateProfileNameEvent(final UpdateProfilePayloadModel model) =
      _$_UpdateProfileNameEvent;

  UpdateProfilePayloadModel get model;
  @JsonKey(ignore: true)
  _$$_UpdateProfileNameEventCopyWith<_$_UpdateProfileNameEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateEmailEventCopyWith<$Res> {
  factory _$$_UpdateEmailEventCopyWith(
          _$_UpdateEmailEvent value, $Res Function(_$_UpdateEmailEvent) then) =
      __$$_UpdateEmailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfilePayloadModel model});

  $UpdateProfilePayloadModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateEmailEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$_UpdateEmailEvent>
    implements _$$_UpdateEmailEventCopyWith<$Res> {
  __$$_UpdateEmailEventCopyWithImpl(
      _$_UpdateEmailEvent _value, $Res Function(_$_UpdateEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_UpdateEmailEvent(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as UpdateProfilePayloadModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateProfilePayloadModelCopyWith<$Res> get model {
    return $UpdateProfilePayloadModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_UpdateEmailEvent implements _UpdateEmailEvent {
  const _$_UpdateEmailEvent(this.model);

  @override
  final UpdateProfilePayloadModel model;

  @override
  String toString() {
    return 'UpdateProfileEvent.updateEmail(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEmailEvent &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateEmailEventCopyWith<_$_UpdateEmailEvent> get copyWith =>
      __$$_UpdateEmailEventCopyWithImpl<_$_UpdateEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return updateEmail(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return updateEmail?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmailEvent implements UpdateProfileEvent {
  const factory _UpdateEmailEvent(final UpdateProfilePayloadModel model) =
      _$_UpdateEmailEvent;

  UpdateProfilePayloadModel get model;
  @JsonKey(ignore: true)
  _$$_UpdateEmailEventCopyWith<_$_UpdateEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveAddressEventCopyWith<$Res> {
  factory _$$_RemoveAddressEventCopyWith(_$_RemoveAddressEvent value,
          $Res Function(_$_RemoveAddressEvent) then) =
      __$$_RemoveAddressEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String addressId});
}

/// @nodoc
class __$$_RemoveAddressEventCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$_RemoveAddressEvent>
    implements _$$_RemoveAddressEventCopyWith<$Res> {
  __$$_RemoveAddressEventCopyWithImpl(
      _$_RemoveAddressEvent _value, $Res Function(_$_RemoveAddressEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
  }) {
    return _then(_$_RemoveAddressEvent(
      null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveAddressEvent implements _RemoveAddressEvent {
  const _$_RemoveAddressEvent(this.addressId);

  @override
  final String addressId;

  @override
  String toString() {
    return 'UpdateProfileEvent.removeAddress(addressId: $addressId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveAddressEvent &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveAddressEventCopyWith<_$_RemoveAddressEvent> get copyWith =>
      __$$_RemoveAddressEventCopyWithImpl<_$_RemoveAddressEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return removeAddress(addressId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return removeAddress?.call(addressId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (removeAddress != null) {
      return removeAddress(addressId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return removeAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return removeAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) {
    if (removeAddress != null) {
      return removeAddress(this);
    }
    return orElse();
  }
}

abstract class _RemoveAddressEvent implements UpdateProfileEvent {
  const factory _RemoveAddressEvent(final String addressId) =
      _$_RemoveAddressEvent;

  String get addressId;
  @JsonKey(ignore: true)
  _$$_RemoveAddressEventCopyWith<_$_RemoveAddressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAccountCopyWith<$Res> {
  factory _$$DeleteAccountCopyWith(
          _$DeleteAccount value, $Res Function(_$DeleteAccount) then) =
      __$$DeleteAccountCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAccountCopyWithImpl<$Res>
    extends _$UpdateProfileEventCopyWithImpl<$Res, _$DeleteAccount>
    implements _$$DeleteAccountCopyWith<$Res> {
  __$$DeleteAccountCopyWithImpl(
      _$DeleteAccount _value, $Res Function(_$DeleteAccount) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAccount implements DeleteAccount {
  const _$DeleteAccount();

  @override
  String toString() {
    return 'UpdateProfileEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteAccount);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UpdateProfilePayloadModel model) update,
    required TResult Function(
            Uint8List bytes, String imageTopic, String topicId)
        updateAvatar,
    required TResult Function() importData,
    required TResult Function() askEmailVerification,
    required TResult Function() closeVerifyEmailModal,
    required TResult Function(UpdateProfilePayloadModel model) updateName,
    required TResult Function(UpdateProfilePayloadModel model) updateEmail,
    required TResult Function(String addressId) removeAddress,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UpdateProfilePayloadModel model)? update,
    TResult? Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult? Function()? importData,
    TResult? Function()? askEmailVerification,
    TResult? Function()? closeVerifyEmailModal,
    TResult? Function(UpdateProfilePayloadModel model)? updateName,
    TResult? Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult? Function(String addressId)? removeAddress,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UpdateProfilePayloadModel model)? update,
    TResult Function(Uint8List bytes, String imageTopic, String topicId)?
        updateAvatar,
    TResult Function()? importData,
    TResult Function()? askEmailVerification,
    TResult Function()? closeVerifyEmailModal,
    TResult Function(UpdateProfilePayloadModel model)? updateName,
    TResult Function(UpdateProfilePayloadModel model)? updateEmail,
    TResult Function(String addressId)? removeAddress,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileEvent value) update,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
    required TResult Function(_importDataEvent value) importData,
    required TResult Function(_AskEmailVerification value) askEmailVerification,
    required TResult Function(_CloseVerifyEmailModal value)
        closeVerifyEmailModal,
    required TResult Function(_UpdateProfileNameEvent value) updateName,
    required TResult Function(_UpdateEmailEvent value) updateEmail,
    required TResult Function(_RemoveAddressEvent value) removeAddress,
    required TResult Function(DeleteAccount value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileEvent value)? update,
    TResult? Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult? Function(_importDataEvent value)? importData,
    TResult? Function(_AskEmailVerification value)? askEmailVerification,
    TResult? Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult? Function(_UpdateProfileNameEvent value)? updateName,
    TResult? Function(_UpdateEmailEvent value)? updateEmail,
    TResult? Function(_RemoveAddressEvent value)? removeAddress,
    TResult? Function(DeleteAccount value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileEvent value)? update,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    TResult Function(_importDataEvent value)? importData,
    TResult Function(_AskEmailVerification value)? askEmailVerification,
    TResult Function(_CloseVerifyEmailModal value)? closeVerifyEmailModal,
    TResult Function(_UpdateProfileNameEvent value)? updateName,
    TResult Function(_UpdateEmailEvent value)? updateEmail,
    TResult Function(_RemoveAddressEvent value)? removeAddress,
    TResult Function(DeleteAccount value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteAccount implements UpdateProfileEvent {
  const factory DeleteAccount() = _$DeleteAccount;
}

/// @nodoc
mixin _$UpdateProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
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
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
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
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
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
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
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
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
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
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return loadedSuccess(successList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return loadedSuccess?.call(successList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
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
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return loadedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return loadedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
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
abstract class _$$LoadedAvatarSuccessCopyWith<$Res> {
  factory _$$LoadedAvatarSuccessCopyWith(_$LoadedAvatarSuccess value,
          $Res Function(_$LoadedAvatarSuccess) then) =
      __$$LoadedAvatarSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateAvatarModel successAvatarList});

  $UpdateAvatarModelCopyWith<$Res> get successAvatarList;
}

/// @nodoc
class __$$LoadedAvatarSuccessCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$LoadedAvatarSuccess>
    implements _$$LoadedAvatarSuccessCopyWith<$Res> {
  __$$LoadedAvatarSuccessCopyWithImpl(
      _$LoadedAvatarSuccess _value, $Res Function(_$LoadedAvatarSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successAvatarList = null,
  }) {
    return _then(_$LoadedAvatarSuccess(
      null == successAvatarList
          ? _value.successAvatarList
          : successAvatarList // ignore: cast_nullable_to_non_nullable
              as UpdateAvatarModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateAvatarModelCopyWith<$Res> get successAvatarList {
    return $UpdateAvatarModelCopyWith<$Res>(_value.successAvatarList, (value) {
      return _then(_value.copyWith(successAvatarList: value));
    });
  }
}

/// @nodoc

class _$LoadedAvatarSuccess extends LoadedAvatarSuccess {
  _$LoadedAvatarSuccess(this.successAvatarList) : super._();

  @override
  final UpdateAvatarModel successAvatarList;

  @override
  String toString() {
    return 'UpdateProfileState.loadedAvatarSuccess(successAvatarList: $successAvatarList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAvatarSuccess &&
            (identical(other.successAvatarList, successAvatarList) ||
                other.successAvatarList == successAvatarList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successAvatarList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAvatarSuccessCopyWith<_$LoadedAvatarSuccess> get copyWith =>
      __$$LoadedAvatarSuccessCopyWithImpl<_$LoadedAvatarSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return loadedAvatarSuccess(successAvatarList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return loadedAvatarSuccess?.call(successAvatarList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
    required TResult orElse(),
  }) {
    if (loadedAvatarSuccess != null) {
      return loadedAvatarSuccess(successAvatarList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return loadedAvatarSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return loadedAvatarSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loadedAvatarSuccess != null) {
      return loadedAvatarSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadedAvatarSuccess extends UpdateProfileState {
  factory LoadedAvatarSuccess(final UpdateAvatarModel successAvatarList) =
      _$LoadedAvatarSuccess;
  LoadedAvatarSuccess._() : super._();

  UpdateAvatarModel get successAvatarList;
  @JsonKey(ignore: true)
  _$$LoadedAvatarSuccessCopyWith<_$LoadedAvatarSuccess> get copyWith =>
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
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
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
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
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

/// @nodoc
abstract class _$$VerificationEmailSentCopyWith<$Res> {
  factory _$$VerificationEmailSentCopyWith(_$VerificationEmailSent value,
          $Res Function(_$VerificationEmailSent) then) =
      __$$VerificationEmailSentCopyWithImpl<$Res>;
  @useResult
  $Res call({bool verificationSent});
}

/// @nodoc
class __$$VerificationEmailSentCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$VerificationEmailSent>
    implements _$$VerificationEmailSentCopyWith<$Res> {
  __$$VerificationEmailSentCopyWithImpl(_$VerificationEmailSent _value,
      $Res Function(_$VerificationEmailSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationSent = null,
  }) {
    return _then(_$VerificationEmailSent(
      null == verificationSent
          ? _value.verificationSent
          : verificationSent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VerificationEmailSent extends VerificationEmailSent {
  _$VerificationEmailSent(this.verificationSent) : super._();

  @override
  final bool verificationSent;

  @override
  String toString() {
    return 'UpdateProfileState.verificationEmailSent(verificationSent: $verificationSent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationEmailSent &&
            (identical(other.verificationSent, verificationSent) ||
                other.verificationSent == verificationSent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationSent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationEmailSentCopyWith<_$VerificationEmailSent> get copyWith =>
      __$$VerificationEmailSentCopyWithImpl<_$VerificationEmailSent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return verificationEmailSent(verificationSent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return verificationEmailSent?.call(verificationSent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
    required TResult orElse(),
  }) {
    if (verificationEmailSent != null) {
      return verificationEmailSent(verificationSent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return verificationEmailSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return verificationEmailSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (verificationEmailSent != null) {
      return verificationEmailSent(this);
    }
    return orElse();
  }
}

abstract class VerificationEmailSent extends UpdateProfileState {
  factory VerificationEmailSent(final bool verificationSent) =
      _$VerificationEmailSent;
  VerificationEmailSent._() : super._();

  bool get verificationSent;
  @JsonKey(ignore: true)
  _$$VerificationEmailSentCopyWith<_$VerificationEmailSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyEmailModalClosedCopyWith<$Res> {
  factory _$$VerifyEmailModalClosedCopyWith(_$VerifyEmailModalClosed value,
          $Res Function(_$VerifyEmailModalClosed) then) =
      __$$VerifyEmailModalClosedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool modalClosed});
}

/// @nodoc
class __$$VerifyEmailModalClosedCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$VerifyEmailModalClosed>
    implements _$$VerifyEmailModalClosedCopyWith<$Res> {
  __$$VerifyEmailModalClosedCopyWithImpl(_$VerifyEmailModalClosed _value,
      $Res Function(_$VerifyEmailModalClosed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modalClosed = null,
  }) {
    return _then(_$VerifyEmailModalClosed(
      null == modalClosed
          ? _value.modalClosed
          : modalClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VerifyEmailModalClosed extends VerifyEmailModalClosed {
  _$VerifyEmailModalClosed(this.modalClosed) : super._();

  @override
  final bool modalClosed;

  @override
  String toString() {
    return 'UpdateProfileState.verifyEmailModalClosed(modalClosed: $modalClosed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailModalClosed &&
            (identical(other.modalClosed, modalClosed) ||
                other.modalClosed == modalClosed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modalClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailModalClosedCopyWith<_$VerifyEmailModalClosed> get copyWith =>
      __$$VerifyEmailModalClosedCopyWithImpl<_$VerifyEmailModalClosed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return verifyEmailModalClosed(modalClosed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return verifyEmailModalClosed?.call(modalClosed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
    required TResult orElse(),
  }) {
    if (verifyEmailModalClosed != null) {
      return verifyEmailModalClosed(modalClosed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return verifyEmailModalClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return verifyEmailModalClosed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (verifyEmailModalClosed != null) {
      return verifyEmailModalClosed(this);
    }
    return orElse();
  }
}

abstract class VerifyEmailModalClosed extends UpdateProfileState {
  factory VerifyEmailModalClosed(final bool modalClosed) =
      _$VerifyEmailModalClosed;
  VerifyEmailModalClosed._() : super._();

  bool get modalClosed;
  @JsonKey(ignore: true)
  _$$VerifyEmailModalClosedCopyWith<_$VerifyEmailModalClosed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataImportedCopyWith<$Res> {
  factory _$$DataImportedCopyWith(
          _$DataImported value, $Res Function(_$DataImported) then) =
      __$$DataImportedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool emailVerified});
}

/// @nodoc
class __$$DataImportedCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$DataImported>
    implements _$$DataImportedCopyWith<$Res> {
  __$$DataImportedCopyWithImpl(
      _$DataImported _value, $Res Function(_$DataImported) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailVerified = null,
  }) {
    return _then(_$DataImported(
      null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataImported extends DataImported {
  _$DataImported(this.emailVerified) : super._();

  @override
  final bool emailVerified;

  @override
  String toString() {
    return 'UpdateProfileState.dataImported(emailVerified: $emailVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImported &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImportedCopyWith<_$DataImported> get copyWith =>
      __$$DataImportedCopyWithImpl<_$DataImported>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return dataImported(emailVerified);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return dataImported?.call(emailVerified);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
    required TResult orElse(),
  }) {
    if (dataImported != null) {
      return dataImported(emailVerified);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return dataImported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return dataImported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (dataImported != null) {
      return dataImported(this);
    }
    return orElse();
  }
}

abstract class DataImported extends UpdateProfileState {
  factory DataImported(final bool emailVerified) = _$DataImported;
  DataImported._() : super._();

  bool get emailVerified;
  @JsonKey(ignore: true)
  _$$DataImportedCopyWith<_$DataImported> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedCopyWith<$Res> {
  factory _$$DeletedCopyWith(_$Deleted value, $Res Function(_$Deleted) then) =
      __$$DeletedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, bool status});
}

/// @nodoc
class __$$DeletedCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$Deleted>
    implements _$$DeletedCopyWith<$Res> {
  __$$DeletedCopyWithImpl(_$Deleted _value, $Res Function(_$Deleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$Deleted(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Deleted extends Deleted {
  _$Deleted(this.message, this.status) : super._();

  @override
  final String message;
  @override
  final bool status;

  @override
  String toString() {
    return 'UpdateProfileState.deleted(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Deleted &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      __$$DeletedCopyWithImpl<_$Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(UpdateProfileModel successList) loadedSuccess,
    required TResult Function(UpdateAvatarModel successAvatarList)
        loadedAvatarSuccess,
    required TResult Function() updated,
    required TResult Function(bool verificationSent) verificationEmailSent,
    required TResult Function(bool modalClosed) verifyEmailModalClosed,
    required TResult Function(bool emailVerified) dataImported,
    required TResult Function(String message, bool status) deleted,
  }) {
    return deleted(message, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(UpdateProfileModel successList)? loadedSuccess,
    TResult? Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult? Function()? updated,
    TResult? Function(bool verificationSent)? verificationEmailSent,
    TResult? Function(bool modalClosed)? verifyEmailModalClosed,
    TResult? Function(bool emailVerified)? dataImported,
    TResult? Function(String message, bool status)? deleted,
  }) {
    return deleted?.call(message, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(UpdateProfileModel successList)? loadedSuccess,
    TResult Function(UpdateAvatarModel successAvatarList)? loadedAvatarSuccess,
    TResult Function()? updated,
    TResult Function(bool verificationSent)? verificationEmailSent,
    TResult Function(bool modalClosed)? verifyEmailModalClosed,
    TResult Function(bool emailVerified)? dataImported,
    TResult Function(String message, bool status)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(message, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialUpdateProfileState value) initial,
    required TResult Function(_ErrorUpdateProfileState value) error,
    required TResult Function(LoadedSuccess value) loadedSuccess,
    required TResult Function(LoadedAvatarSuccess value) loadedAvatarSuccess,
    required TResult Function(Updated value) updated,
    required TResult Function(VerificationEmailSent value)
        verificationEmailSent,
    required TResult Function(VerifyEmailModalClosed value)
        verifyEmailModalClosed,
    required TResult Function(DataImported value) dataImported,
    required TResult Function(Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialUpdateProfileState value)? initial,
    TResult? Function(_ErrorUpdateProfileState value)? error,
    TResult? Function(LoadedSuccess value)? loadedSuccess,
    TResult? Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult? Function(Updated value)? updated,
    TResult? Function(VerificationEmailSent value)? verificationEmailSent,
    TResult? Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult? Function(DataImported value)? dataImported,
    TResult? Function(Deleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialUpdateProfileState value)? initial,
    TResult Function(_ErrorUpdateProfileState value)? error,
    TResult Function(LoadedSuccess value)? loadedSuccess,
    TResult Function(LoadedAvatarSuccess value)? loadedAvatarSuccess,
    TResult Function(Updated value)? updated,
    TResult Function(VerificationEmailSent value)? verificationEmailSent,
    TResult Function(VerifyEmailModalClosed value)? verifyEmailModalClosed,
    TResult Function(DataImported value)? dataImported,
    TResult Function(Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted extends UpdateProfileState {
  factory Deleted(final String message, final bool status) = _$Deleted;
  Deleted._() : super._();

  String get message;
  bool get status;
  @JsonKey(ignore: true)
  _$$DeletedCopyWith<_$Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}
