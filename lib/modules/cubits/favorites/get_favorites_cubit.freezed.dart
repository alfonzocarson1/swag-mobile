// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_favorites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesState {
  /// The list of favored ids, this can be used to optimistically change state until full data is fetched
  List<String> get favoredIds => throw _privateConstructorUsedError;

  /// model used for UI
  ListFavoriteProfileResponseModel get model =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call({List<String> favoredIds, ListFavoriteProfileResponseModel model});

  $ListFavoriteProfileResponseModelCopyWith<$Res> get model;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoredIds = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      favoredIds: null == favoredIds
          ? _value.favoredIds
          : favoredIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ListFavoriteProfileResponseModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListFavoriteProfileResponseModelCopyWith<$Res> get model {
    return $ListFavoriteProfileResponseModelCopyWith<$Res>(_value.model,
        (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FavoritesStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$_FavoritesStateCopyWith(
          _$_FavoritesState value, $Res Function(_$_FavoritesState) then) =
      __$$_FavoritesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> favoredIds, ListFavoriteProfileResponseModel model});

  @override
  $ListFavoriteProfileResponseModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_FavoritesStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$_FavoritesState>
    implements _$$_FavoritesStateCopyWith<$Res> {
  __$$_FavoritesStateCopyWithImpl(
      _$_FavoritesState _value, $Res Function(_$_FavoritesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoredIds = null,
    Object? model = null,
  }) {
    return _then(_$_FavoritesState(
      favoredIds: null == favoredIds
          ? _value._favoredIds
          : favoredIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ListFavoriteProfileResponseModel,
    ));
  }
}

/// @nodoc

class _$_FavoritesState implements _FavoritesState {
  const _$_FavoritesState(
      {required final List<String> favoredIds, required this.model})
      : _favoredIds = favoredIds;

  /// The list of favored ids, this can be used to optimistically change state until full data is fetched
  final List<String> _favoredIds;

  /// The list of favored ids, this can be used to optimistically change state until full data is fetched
  @override
  List<String> get favoredIds {
    if (_favoredIds is EqualUnmodifiableListView) return _favoredIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoredIds);
  }

  /// model used for UI
  @override
  final ListFavoriteProfileResponseModel model;

  @override
  String toString() {
    return 'FavoritesState(favoredIds: $favoredIds, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesState &&
            const DeepCollectionEquality()
                .equals(other._favoredIds, _favoredIds) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoredIds), model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesStateCopyWith<_$_FavoritesState> get copyWith =>
      __$$_FavoritesStateCopyWithImpl<_$_FavoritesState>(this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState(
          {required final List<String> favoredIds,
          required final ListFavoriteProfileResponseModel model}) =
      _$_FavoritesState;

  @override

  /// The list of favored ids, this can be used to optimistically change state until full data is fetched
  List<String> get favoredIds;
  @override

  /// model used for UI
  ListFavoriteProfileResponseModel get model;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritesStateCopyWith<_$_FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}
