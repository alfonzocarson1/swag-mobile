// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedSearchResult _$SavedSearchResultFromJson(Map<String, dynamic> json) {
  return _SavedSearchResult.fromJson(json);
}

/// @nodoc
mixin _$SavedSearchResult {
  List<SavedSearch>? get savedSearchResult =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedSearchResultCopyWith<SavedSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedSearchResultCopyWith<$Res> {
  factory $SavedSearchResultCopyWith(
          SavedSearchResult value, $Res Function(SavedSearchResult) then) =
      _$SavedSearchResultCopyWithImpl<$Res, SavedSearchResult>;
  @useResult
  $Res call({List<SavedSearch>? savedSearchResult});
}

/// @nodoc
class _$SavedSearchResultCopyWithImpl<$Res, $Val extends SavedSearchResult>
    implements $SavedSearchResultCopyWith<$Res> {
  _$SavedSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedSearchResult = freezed,
  }) {
    return _then(_value.copyWith(
      savedSearchResult: freezed == savedSearchResult
          ? _value.savedSearchResult
          : savedSearchResult // ignore: cast_nullable_to_non_nullable
              as List<SavedSearch>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedSearchResultCopyWith<$Res>
    implements $SavedSearchResultCopyWith<$Res> {
  factory _$$_SavedSearchResultCopyWith(_$_SavedSearchResult value,
          $Res Function(_$_SavedSearchResult) then) =
      __$$_SavedSearchResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SavedSearch>? savedSearchResult});
}

/// @nodoc
class __$$_SavedSearchResultCopyWithImpl<$Res>
    extends _$SavedSearchResultCopyWithImpl<$Res, _$_SavedSearchResult>
    implements _$$_SavedSearchResultCopyWith<$Res> {
  __$$_SavedSearchResultCopyWithImpl(
      _$_SavedSearchResult _value, $Res Function(_$_SavedSearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedSearchResult = freezed,
  }) {
    return _then(_$_SavedSearchResult(
      savedSearchResult: freezed == savedSearchResult
          ? _value._savedSearchResult
          : savedSearchResult // ignore: cast_nullable_to_non_nullable
              as List<SavedSearch>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedSearchResult implements _SavedSearchResult {
  const _$_SavedSearchResult({final List<SavedSearch>? savedSearchResult})
      : _savedSearchResult = savedSearchResult;

  factory _$_SavedSearchResult.fromJson(Map<String, dynamic> json) =>
      _$$_SavedSearchResultFromJson(json);

  final List<SavedSearch>? _savedSearchResult;
  @override
  List<SavedSearch>? get savedSearchResult {
    final value = _savedSearchResult;
    if (value == null) return null;
    if (_savedSearchResult is EqualUnmodifiableListView)
      return _savedSearchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SavedSearchResult(savedSearchResult: $savedSearchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedSearchResult &&
            const DeepCollectionEquality()
                .equals(other._savedSearchResult, _savedSearchResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_savedSearchResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedSearchResultCopyWith<_$_SavedSearchResult> get copyWith =>
      __$$_SavedSearchResultCopyWithImpl<_$_SavedSearchResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedSearchResultToJson(
      this,
    );
  }
}

abstract class _SavedSearchResult implements SavedSearchResult {
  const factory _SavedSearchResult(
      {final List<SavedSearch>? savedSearchResult}) = _$_SavedSearchResult;

  factory _SavedSearchResult.fromJson(Map<String, dynamic> json) =
      _$_SavedSearchResult.fromJson;

  @override
  List<SavedSearch>? get savedSearchResult;
  @override
  @JsonKey(ignore: true)
  _$$_SavedSearchResultCopyWith<_$_SavedSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
