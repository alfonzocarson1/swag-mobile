import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_value.freezed.dart';

@freezed
class AsyncValue<T> with _$AsyncValue<T> {
  const AsyncValue._();

  const factory AsyncValue.loaded(T data) = _Loaded<T>;
  const factory AsyncValue.loading([T? previousData]) = _Loading<T>;
  const factory AsyncValue.error(Object e, [T? previousData]) = _Error<T>;

  bool get isLoading => this is _Loading;
  bool get isLoadingWithoutPreviousData => this is _Loading && (this as _Loading).previousData == null;
  bool get isLoaded => this is _Loaded;
  bool get isError => this is _Error;
}
