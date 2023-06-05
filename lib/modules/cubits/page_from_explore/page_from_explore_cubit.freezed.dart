// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_from_explore_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageFromExploreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tabPage) changeTabPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tabPage)? changeTabPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tabPage)? changeTabPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabPage value) changeTabPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabPage value)? changeTabPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabPage value)? changeTabPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageFromExploreStateCopyWith<$Res> {
  factory $PageFromExploreStateCopyWith(PageFromExploreState value,
          $Res Function(PageFromExploreState) then) =
      _$PageFromExploreStateCopyWithImpl<$Res, PageFromExploreState>;
}

/// @nodoc
class _$PageFromExploreStateCopyWithImpl<$Res,
        $Val extends PageFromExploreState>
    implements $PageFromExploreStateCopyWith<$Res> {
  _$PageFromExploreStateCopyWithImpl(this._value, this._then);

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
    extends _$PageFromExploreStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PageFromExploreState.initial()';
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
    required TResult Function(int tabPage) changeTabPage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tabPage)? changeTabPage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tabPage)? changeTabPage,
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
    required TResult Function(_TabPage value) changeTabPage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabPage value)? changeTabPage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabPage value)? changeTabPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PageFromExploreState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_TabPageCopyWith<$Res> {
  factory _$$_TabPageCopyWith(
          _$_TabPage value, $Res Function(_$_TabPage) then) =
      __$$_TabPageCopyWithImpl<$Res>;
  @useResult
  $Res call({int tabPage});
}

/// @nodoc
class __$$_TabPageCopyWithImpl<$Res>
    extends _$PageFromExploreStateCopyWithImpl<$Res, _$_TabPage>
    implements _$$_TabPageCopyWith<$Res> {
  __$$_TabPageCopyWithImpl(_$_TabPage _value, $Res Function(_$_TabPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabPage = null,
  }) {
    return _then(_$_TabPage(
      null == tabPage
          ? _value.tabPage
          : tabPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TabPage implements _TabPage {
  const _$_TabPage(this.tabPage);

  @override
  final int tabPage;

  @override
  String toString() {
    return 'PageFromExploreState.changeTabPage(tabPage: $tabPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabPage &&
            (identical(other.tabPage, tabPage) || other.tabPage == tabPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabPageCopyWith<_$_TabPage> get copyWith =>
      __$$_TabPageCopyWithImpl<_$_TabPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tabPage) changeTabPage,
  }) {
    return changeTabPage(tabPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tabPage)? changeTabPage,
  }) {
    return changeTabPage?.call(tabPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tabPage)? changeTabPage,
    required TResult orElse(),
  }) {
    if (changeTabPage != null) {
      return changeTabPage(tabPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TabPage value) changeTabPage,
  }) {
    return changeTabPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TabPage value)? changeTabPage,
  }) {
    return changeTabPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TabPage value)? changeTabPage,
    required TResult orElse(),
  }) {
    if (changeTabPage != null) {
      return changeTabPage(this);
    }
    return orElse();
  }
}

abstract class _TabPage implements PageFromExploreState {
  const factory _TabPage(final int tabPage) = _$_TabPage;

  int get tabPage;
  @JsonKey(ignore: true)
  _$$_TabPageCopyWith<_$_TabPage> get copyWith =>
      throw _privateConstructorUsedError;
}
