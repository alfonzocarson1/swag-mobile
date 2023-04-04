// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedSearch _$SavedSearchFromJson(Map<String, dynamic> json) {
  return _SavedSearch.fromJson(json);
}

/// @nodoc
mixin _$SavedSearch {
  String? get searchId => throw _privateConstructorUsedError;
  String? get searchName => throw _privateConstructorUsedError;
  SearchValues? get searchValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedSearchCopyWith<SavedSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedSearchCopyWith<$Res> {
  factory $SavedSearchCopyWith(
          SavedSearch value, $Res Function(SavedSearch) then) =
      _$SavedSearchCopyWithImpl<$Res, SavedSearch>;
  @useResult
  $Res call({String? searchId, String? searchName, SearchValues? searchValues});

  $SearchValuesCopyWith<$Res>? get searchValues;
}

/// @nodoc
class _$SavedSearchCopyWithImpl<$Res, $Val extends SavedSearch>
    implements $SavedSearchCopyWith<$Res> {
  _$SavedSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchId = freezed,
    Object? searchName = freezed,
    Object? searchValues = freezed,
  }) {
    return _then(_value.copyWith(
      searchId: freezed == searchId
          ? _value.searchId
          : searchId // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchValues: freezed == searchValues
          ? _value.searchValues
          : searchValues // ignore: cast_nullable_to_non_nullable
              as SearchValues?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchValuesCopyWith<$Res>? get searchValues {
    if (_value.searchValues == null) {
      return null;
    }

    return $SearchValuesCopyWith<$Res>(_value.searchValues!, (value) {
      return _then(_value.copyWith(searchValues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SavedSearchCopyWith<$Res>
    implements $SavedSearchCopyWith<$Res> {
  factory _$$_SavedSearchCopyWith(
          _$_SavedSearch value, $Res Function(_$_SavedSearch) then) =
      __$$_SavedSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchId, String? searchName, SearchValues? searchValues});

  @override
  $SearchValuesCopyWith<$Res>? get searchValues;
}

/// @nodoc
class __$$_SavedSearchCopyWithImpl<$Res>
    extends _$SavedSearchCopyWithImpl<$Res, _$_SavedSearch>
    implements _$$_SavedSearchCopyWith<$Res> {
  __$$_SavedSearchCopyWithImpl(
      _$_SavedSearch _value, $Res Function(_$_SavedSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchId = freezed,
    Object? searchName = freezed,
    Object? searchValues = freezed,
  }) {
    return _then(_$_SavedSearch(
      searchId: freezed == searchId
          ? _value.searchId
          : searchId // ignore: cast_nullable_to_non_nullable
              as String?,
      searchName: freezed == searchName
          ? _value.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchValues: freezed == searchValues
          ? _value.searchValues
          : searchValues // ignore: cast_nullable_to_non_nullable
              as SearchValues?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedSearch implements _SavedSearch {
  const _$_SavedSearch({this.searchId, this.searchName, this.searchValues});

  factory _$_SavedSearch.fromJson(Map<String, dynamic> json) =>
      _$$_SavedSearchFromJson(json);

  @override
  final String? searchId;
  @override
  final String? searchName;
  @override
  final SearchValues? searchValues;

  @override
  String toString() {
    return 'SavedSearch(searchId: $searchId, searchName: $searchName, searchValues: $searchValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedSearch &&
            (identical(other.searchId, searchId) ||
                other.searchId == searchId) &&
            (identical(other.searchName, searchName) ||
                other.searchName == searchName) &&
            (identical(other.searchValues, searchValues) ||
                other.searchValues == searchValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, searchId, searchName, searchValues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedSearchCopyWith<_$_SavedSearch> get copyWith =>
      __$$_SavedSearchCopyWithImpl<_$_SavedSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedSearchToJson(
      this,
    );
  }
}

abstract class _SavedSearch implements SavedSearch {
  const factory _SavedSearch(
      {final String? searchId,
      final String? searchName,
      final SearchValues? searchValues}) = _$_SavedSearch;

  factory _SavedSearch.fromJson(Map<String, dynamic> json) =
      _$_SavedSearch.fromJson;

  @override
  String? get searchId;
  @override
  String? get searchName;
  @override
  SearchValues? get searchValues;
  @override
  @JsonKey(ignore: true)
  _$$_SavedSearchCopyWith<_$_SavedSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
