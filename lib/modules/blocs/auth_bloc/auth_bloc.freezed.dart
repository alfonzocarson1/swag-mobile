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
    required TResult Function(CreateAccountPayloadModel model) createAccount,
    required TResult Function(String email, String password) authenticate,
    required TResult Function() logout,
    required TResult Function(String email) sendEmail,
    required TResult Function(String code) validCode,
    required TResult Function(
            String changeCode, String newPassword, String deviceId)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreateAccountPayloadModel model)? createAccount,
    TResult? Function(String email, String password)? authenticate,
    TResult? Function()? logout,
    TResult? Function(String email)? sendEmail,
    TResult? Function(String code)? validCode,
    TResult? Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreateAccountPayloadModel model)? createAccount,
    TResult Function(String email, String password)? authenticate,
    TResult Function()? logout,
    TResult Function(String email)? sendEmail,
    TResult Function(String code)? validCode,
    TResult Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(LogoutAuth value) logout,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_ValidCode value) validCode,
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(LogoutAuth value)? logout,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_ValidCode value)? validCode,
    TResult? Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(Authenticate value)? authenticate,
    TResult Function(LogoutAuth value)? logout,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_ValidCode value)? validCode,
    TResult Function(_ChangePassword value)? changePassword,
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
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'AuthEvent.init()';
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
    required TResult Function(CreateAccountPayloadModel model) createAccount,
    required TResult Function(String email, String password) authenticate,
    required TResult Function() logout,
    required TResult Function(String email) sendEmail,
    required TResult Function(String code) validCode,
    required TResult Function(
            String changeCode, String newPassword, String deviceId)
        changePassword,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreateAccountPayloadModel model)? createAccount,
    TResult? Function(String email, String password)? authenticate,
    TResult? Function()? logout,
    TResult? Function(String email)? sendEmail,
    TResult? Function(String code)? validCode,
    TResult? Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreateAccountPayloadModel model)? createAccount,
    TResult Function(String email, String password)? authenticate,
    TResult Function()? logout,
    TResult Function(String email)? sendEmail,
    TResult Function(String code)? validCode,
    TResult Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
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
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(LogoutAuth value) logout,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_ValidCode value) validCode,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(LogoutAuth value)? logout,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_ValidCode value)? validCode,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(Authenticate value)? authenticate,
    TResult Function(LogoutAuth value)? logout,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_ValidCode value)? validCode,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements AuthEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$CreateAccountCopyWith<$Res> {
  factory _$$CreateAccountCopyWith(
          _$CreateAccount value, $Res Function(_$CreateAccount) then) =
      __$$CreateAccountCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAccountPayloadModel model});

  $CreateAccountPayloadModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$CreateAccountCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateAccount>
    implements _$$CreateAccountCopyWith<$Res> {
  __$$CreateAccountCopyWithImpl(
      _$CreateAccount _value, $Res Function(_$CreateAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$CreateAccount(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CreateAccountPayloadModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateAccountPayloadModelCopyWith<$Res> get model {
    return $CreateAccountPayloadModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$CreateAccount implements CreateAccount {
  const _$CreateAccount(this.model);

  @override
  final CreateAccountPayloadModel model;

  @override
  String toString() {
    return 'AuthEvent.createAccount(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAccount &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountCopyWith<_$CreateAccount> get copyWith =>
      __$$CreateAccountCopyWithImpl<_$CreateAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreateAccountPayloadModel model) createAccount,
    required TResult Function(String email, String password) authenticate,
    required TResult Function() logout,
    required TResult Function(String email) sendEmail,
    required TResult Function(String code) validCode,
    required TResult Function(
            String changeCode, String newPassword, String deviceId)
        changePassword,
  }) {
    return createAccount(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreateAccountPayloadModel model)? createAccount,
    TResult? Function(String email, String password)? authenticate,
    TResult? Function()? logout,
    TResult? Function(String email)? sendEmail,
    TResult? Function(String code)? validCode,
    TResult? Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
  }) {
    return createAccount?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreateAccountPayloadModel model)? createAccount,
    TResult Function(String email, String password)? authenticate,
    TResult Function()? logout,
    TResult Function(String email)? sendEmail,
    TResult Function(String code)? validCode,
    TResult Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(LogoutAuth value) logout,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_ValidCode value) validCode,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(LogoutAuth value)? logout,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_ValidCode value)? validCode,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(Authenticate value)? authenticate,
    TResult Function(LogoutAuth value)? logout,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_ValidCode value)? validCode,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class CreateAccount implements AuthEvent {
  const factory CreateAccount(final CreateAccountPayloadModel model) =
      _$CreateAccount;

  CreateAccountPayloadModel get model;
  @JsonKey(ignore: true)
  _$$CreateAccountCopyWith<_$CreateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticateCopyWith<$Res> {
  factory _$$AuthenticateCopyWith(
          _$Authenticate value, $Res Function(_$Authenticate) then) =
      __$$AuthenticateCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthenticateCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$Authenticate>
    implements _$$AuthenticateCopyWith<$Res> {
  __$$AuthenticateCopyWithImpl(
      _$Authenticate _value, $Res Function(_$Authenticate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$Authenticate(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Authenticate implements Authenticate {
  const _$Authenticate(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.authenticate(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticate &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateCopyWith<_$Authenticate> get copyWith =>
      __$$AuthenticateCopyWithImpl<_$Authenticate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreateAccountPayloadModel model) createAccount,
    required TResult Function(String email, String password) authenticate,
    required TResult Function() logout,
    required TResult Function(String email) sendEmail,
    required TResult Function(String code) validCode,
    required TResult Function(
            String changeCode, String newPassword, String deviceId)
        changePassword,
  }) {
    return authenticate(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreateAccountPayloadModel model)? createAccount,
    TResult? Function(String email, String password)? authenticate,
    TResult? Function()? logout,
    TResult? Function(String email)? sendEmail,
    TResult? Function(String code)? validCode,
    TResult? Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
  }) {
    return authenticate?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreateAccountPayloadModel model)? createAccount,
    TResult Function(String email, String password)? authenticate,
    TResult Function()? logout,
    TResult Function(String email)? sendEmail,
    TResult Function(String code)? validCode,
    TResult Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(LogoutAuth value) logout,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_ValidCode value) validCode,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(LogoutAuth value)? logout,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_ValidCode value)? validCode,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(Authenticate value)? authenticate,
    TResult Function(LogoutAuth value)? logout,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_ValidCode value)? validCode,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class Authenticate implements AuthEvent {
  const factory Authenticate(final String email, final String password) =
      _$Authenticate;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$AuthenticateCopyWith<_$Authenticate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutAuthCopyWith<$Res> {
  factory _$$LogoutAuthCopyWith(
          _$LogoutAuth value, $Res Function(_$LogoutAuth) then) =
      __$$LogoutAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutAuth>
    implements _$$LogoutAuthCopyWith<$Res> {
  __$$LogoutAuthCopyWithImpl(
      _$LogoutAuth _value, $Res Function(_$LogoutAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutAuth implements LogoutAuth {
  const _$LogoutAuth();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreateAccountPayloadModel model) createAccount,
    required TResult Function(String email, String password) authenticate,
    required TResult Function() logout,
    required TResult Function(String email) sendEmail,
    required TResult Function(String code) validCode,
    required TResult Function(
            String changeCode, String newPassword, String deviceId)
        changePassword,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreateAccountPayloadModel model)? createAccount,
    TResult? Function(String email, String password)? authenticate,
    TResult? Function()? logout,
    TResult? Function(String email)? sendEmail,
    TResult? Function(String code)? validCode,
    TResult? Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreateAccountPayloadModel model)? createAccount,
    TResult Function(String email, String password)? authenticate,
    TResult Function()? logout,
    TResult Function(String email)? sendEmail,
    TResult Function(String code)? validCode,
    TResult Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
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
    required TResult Function(Init value) init,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(LogoutAuth value) logout,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_ValidCode value) validCode,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(LogoutAuth value)? logout,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_ValidCode value)? validCode,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(Authenticate value)? authenticate,
    TResult Function(LogoutAuth value)? logout,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_ValidCode value)? validCode,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutAuth implements AuthEvent {
  const factory LogoutAuth() = _$LogoutAuth;
}

/// @nodoc
abstract class _$$_SendEmailCopyWith<$Res> {
  factory _$$_SendEmailCopyWith(
          _$_SendEmail value, $Res Function(_$_SendEmail) then) =
      __$$_SendEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_SendEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SendEmail>
    implements _$$_SendEmailCopyWith<$Res> {
  __$$_SendEmailCopyWithImpl(
      _$_SendEmail _value, $Res Function(_$_SendEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_SendEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendEmail implements _SendEmail {
  const _$_SendEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.sendEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendEmailCopyWith<_$_SendEmail> get copyWith =>
      __$$_SendEmailCopyWithImpl<_$_SendEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreateAccountPayloadModel model) createAccount,
    required TResult Function(String email, String password) authenticate,
    required TResult Function() logout,
    required TResult Function(String email) sendEmail,
    required TResult Function(String code) validCode,
    required TResult Function(
            String changeCode, String newPassword, String deviceId)
        changePassword,
  }) {
    return sendEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreateAccountPayloadModel model)? createAccount,
    TResult? Function(String email, String password)? authenticate,
    TResult? Function()? logout,
    TResult? Function(String email)? sendEmail,
    TResult? Function(String code)? validCode,
    TResult? Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
  }) {
    return sendEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreateAccountPayloadModel model)? createAccount,
    TResult Function(String email, String password)? authenticate,
    TResult Function()? logout,
    TResult Function(String email)? sendEmail,
    TResult Function(String code)? validCode,
    TResult Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(LogoutAuth value) logout,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_ValidCode value) validCode,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return sendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(LogoutAuth value)? logout,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_ValidCode value)? validCode,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return sendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(Authenticate value)? authenticate,
    TResult Function(LogoutAuth value)? logout,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_ValidCode value)? validCode,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (sendEmail != null) {
      return sendEmail(this);
    }
    return orElse();
  }
}

abstract class _SendEmail implements AuthEvent {
  const factory _SendEmail(final String email) = _$_SendEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$_SendEmailCopyWith<_$_SendEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidCodeCopyWith<$Res> {
  factory _$$_ValidCodeCopyWith(
          _$_ValidCode value, $Res Function(_$_ValidCode) then) =
      __$$_ValidCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_ValidCodeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ValidCode>
    implements _$$_ValidCodeCopyWith<$Res> {
  __$$_ValidCodeCopyWithImpl(
      _$_ValidCode _value, $Res Function(_$_ValidCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_ValidCode(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ValidCode implements _ValidCode {
  const _$_ValidCode(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.validCode(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidCode &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidCodeCopyWith<_$_ValidCode> get copyWith =>
      __$$_ValidCodeCopyWithImpl<_$_ValidCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreateAccountPayloadModel model) createAccount,
    required TResult Function(String email, String password) authenticate,
    required TResult Function() logout,
    required TResult Function(String email) sendEmail,
    required TResult Function(String code) validCode,
    required TResult Function(
            String changeCode, String newPassword, String deviceId)
        changePassword,
  }) {
    return validCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreateAccountPayloadModel model)? createAccount,
    TResult? Function(String email, String password)? authenticate,
    TResult? Function()? logout,
    TResult? Function(String email)? sendEmail,
    TResult? Function(String code)? validCode,
    TResult? Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
  }) {
    return validCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreateAccountPayloadModel model)? createAccount,
    TResult Function(String email, String password)? authenticate,
    TResult Function()? logout,
    TResult Function(String email)? sendEmail,
    TResult Function(String code)? validCode,
    TResult Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
    required TResult orElse(),
  }) {
    if (validCode != null) {
      return validCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(LogoutAuth value) logout,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_ValidCode value) validCode,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return validCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(LogoutAuth value)? logout,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_ValidCode value)? validCode,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return validCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(Authenticate value)? authenticate,
    TResult Function(LogoutAuth value)? logout,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_ValidCode value)? validCode,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (validCode != null) {
      return validCode(this);
    }
    return orElse();
  }
}

abstract class _ValidCode implements AuthEvent {
  const factory _ValidCode(final String code) = _$_ValidCode;

  String get code;
  @JsonKey(ignore: true)
  _$$_ValidCodeCopyWith<_$_ValidCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordCopyWith<$Res> {
  factory _$$_ChangePasswordCopyWith(
          _$_ChangePassword value, $Res Function(_$_ChangePassword) then) =
      __$$_ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String changeCode, String newPassword, String deviceId});
}

/// @nodoc
class __$$_ChangePasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ChangePassword>
    implements _$$_ChangePasswordCopyWith<$Res> {
  __$$_ChangePasswordCopyWithImpl(
      _$_ChangePassword _value, $Res Function(_$_ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changeCode = null,
    Object? newPassword = null,
    Object? deviceId = null,
  }) {
    return _then(_$_ChangePassword(
      null == changeCode
          ? _value.changeCode
          : changeCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.changeCode, this.newPassword, this.deviceId);

  @override
  final String changeCode;
  @override
  final String newPassword;
  @override
  final String deviceId;

  @override
  String toString() {
    return 'AuthEvent.changePassword(changeCode: $changeCode, newPassword: $newPassword, deviceId: $deviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassword &&
            (identical(other.changeCode, changeCode) ||
                other.changeCode == changeCode) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, changeCode, newPassword, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      __$$_ChangePasswordCopyWithImpl<_$_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(CreateAccountPayloadModel model) createAccount,
    required TResult Function(String email, String password) authenticate,
    required TResult Function() logout,
    required TResult Function(String email) sendEmail,
    required TResult Function(String code) validCode,
    required TResult Function(
            String changeCode, String newPassword, String deviceId)
        changePassword,
  }) {
    return changePassword(changeCode, newPassword, deviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(CreateAccountPayloadModel model)? createAccount,
    TResult? Function(String email, String password)? authenticate,
    TResult? Function()? logout,
    TResult? Function(String email)? sendEmail,
    TResult? Function(String code)? validCode,
    TResult? Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
  }) {
    return changePassword?.call(changeCode, newPassword, deviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(CreateAccountPayloadModel model)? createAccount,
    TResult Function(String email, String password)? authenticate,
    TResult Function()? logout,
    TResult Function(String email)? sendEmail,
    TResult Function(String code)? validCode,
    TResult Function(String changeCode, String newPassword, String deviceId)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(changeCode, newPassword, deviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(LogoutAuth value) logout,
    required TResult Function(_SendEmail value) sendEmail,
    required TResult Function(_ValidCode value) validCode,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(LogoutAuth value)? logout,
    TResult? Function(_SendEmail value)? sendEmail,
    TResult? Function(_ValidCode value)? validCode,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(Authenticate value)? authenticate,
    TResult Function(LogoutAuth value)? logout,
    TResult Function(_SendEmail value)? sendEmail,
    TResult Function(_ValidCode value)? validCode,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements AuthEvent {
  const factory _ChangePassword(final String changeCode,
      final String newPassword, final String deviceId) = _$_ChangePassword;

  String get changeCode;
  String get newPassword;
  String get deviceId;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
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

/// @nodoc
abstract class _$$SendEmailCopyWith<$Res> {
  factory _$$SendEmailCopyWith(
          _$SendEmail value, $Res Function(_$SendEmail) then) =
      __$$SendEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendEmailCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SendEmail>
    implements _$$SendEmailCopyWith<$Res> {
  __$$SendEmailCopyWithImpl(
      _$SendEmail _value, $Res Function(_$SendEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendEmail implements SendEmail {
  const _$SendEmail();

  @override
  String toString() {
    return 'AuthState.sendEmailSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendEmail);
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
  }) {
    return sendEmailSuccess();
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
  }) {
    return sendEmailSuccess?.call();
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
    required TResult orElse(),
  }) {
    if (sendEmailSuccess != null) {
      return sendEmailSuccess();
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
  }) {
    return sendEmailSuccess(this);
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
  }) {
    return sendEmailSuccess?.call(this);
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
    required TResult orElse(),
  }) {
    if (sendEmailSuccess != null) {
      return sendEmailSuccess(this);
    }
    return orElse();
  }
}

abstract class SendEmail implements AuthState {
  const factory SendEmail() = _$SendEmail;
}

/// @nodoc
abstract class _$$CodeStatusCopyWith<$Res> {
  factory _$$CodeStatusCopyWith(
          _$CodeStatus value, $Res Function(_$CodeStatus) then) =
      __$$CodeStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeStatusCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CodeStatus>
    implements _$$CodeStatusCopyWith<$Res> {
  __$$CodeStatusCopyWithImpl(
      _$CodeStatus _value, $Res Function(_$CodeStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CodeStatus implements CodeStatus {
  _$CodeStatus();

  @override
  String toString() {
    return 'AuthState.codeSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CodeStatus);
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
  }) {
    return codeSent();
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
  }) {
    return codeSent?.call();
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent();
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
  }) {
    return codeSent(this);
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
  }) {
    return codeSent?.call(this);
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class CodeStatus implements AuthState {
  factory CodeStatus() = _$CodeStatus;
}

/// @nodoc
abstract class _$$LoadedvalidCodeSuccessCopyWith<$Res> {
  factory _$$LoadedvalidCodeSuccessCopyWith(_$LoadedvalidCodeSuccess value,
          $Res Function(_$LoadedvalidCodeSuccess) then) =
      __$$LoadedvalidCodeSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ForgotPasswordCodeModel successValidCode});

  $ForgotPasswordCodeModelCopyWith<$Res> get successValidCode;
}

/// @nodoc
class __$$LoadedvalidCodeSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadedvalidCodeSuccess>
    implements _$$LoadedvalidCodeSuccessCopyWith<$Res> {
  __$$LoadedvalidCodeSuccessCopyWithImpl(_$LoadedvalidCodeSuccess _value,
      $Res Function(_$LoadedvalidCodeSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successValidCode = null,
  }) {
    return _then(_$LoadedvalidCodeSuccess(
      null == successValidCode
          ? _value.successValidCode
          : successValidCode // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordCodeModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgotPasswordCodeModelCopyWith<$Res> get successValidCode {
    return $ForgotPasswordCodeModelCopyWith<$Res>(_value.successValidCode,
        (value) {
      return _then(_value.copyWith(successValidCode: value));
    });
  }
}

/// @nodoc

class _$LoadedvalidCodeSuccess implements LoadedvalidCodeSuccess {
  _$LoadedvalidCodeSuccess(this.successValidCode);

  @override
  final ForgotPasswordCodeModel successValidCode;

  @override
  String toString() {
    return 'AuthState.validCodeSuccess(successValidCode: $successValidCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedvalidCodeSuccess &&
            (identical(other.successValidCode, successValidCode) ||
                other.successValidCode == successValidCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successValidCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedvalidCodeSuccessCopyWith<_$LoadedvalidCodeSuccess> get copyWith =>
      __$$LoadedvalidCodeSuccessCopyWithImpl<_$LoadedvalidCodeSuccess>(
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
    required TResult Function() sendEmailSuccess,
    required TResult Function() codeSent,
    required TResult Function(ForgotPasswordCodeModel successValidCode)
        validCodeSuccess,
  }) {
    return validCodeSuccess(successValidCode);
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
    TResult? Function()? sendEmailSuccess,
    TResult? Function()? codeSent,
    TResult? Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
  }) {
    return validCodeSuccess?.call(successValidCode);
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
    TResult Function()? sendEmailSuccess,
    TResult Function()? codeSent,
    TResult Function(ForgotPasswordCodeModel successValidCode)?
        validCodeSuccess,
    required TResult orElse(),
  }) {
    if (validCodeSuccess != null) {
      return validCodeSuccess(successValidCode);
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
    required TResult Function(SendEmail value) sendEmailSuccess,
    required TResult Function(CodeStatus value) codeSent,
    required TResult Function(LoadedvalidCodeSuccess value) validCodeSuccess,
  }) {
    return validCodeSuccess(this);
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
    TResult? Function(SendEmail value)? sendEmailSuccess,
    TResult? Function(CodeStatus value)? codeSent,
    TResult? Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
  }) {
    return validCodeSuccess?.call(this);
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
    TResult Function(SendEmail value)? sendEmailSuccess,
    TResult Function(CodeStatus value)? codeSent,
    TResult Function(LoadedvalidCodeSuccess value)? validCodeSuccess,
    required TResult orElse(),
  }) {
    if (validCodeSuccess != null) {
      return validCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadedvalidCodeSuccess implements AuthState {
  factory LoadedvalidCodeSuccess(
          final ForgotPasswordCodeModel successValidCode) =
      _$LoadedvalidCodeSuccess;

  ForgotPasswordCodeModel get successValidCode;
  @JsonKey(ignore: true)
  _$$LoadedvalidCodeSuccessCopyWith<_$LoadedvalidCodeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
