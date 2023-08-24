import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/ui_models/pair.dart';

import 'async_value.dart';

part 'async_operation.freezed.dart';

@freezed
class AsyncOperation<T> with _$AsyncOperation<T> {
  const AsyncOperation._();

  const factory AsyncOperation.idle() = _Idle<T>;

  const factory AsyncOperation.initiated(AsyncValue<T> state) = _Initiated<T>;

  factory AsyncOperation.loaded(T data) =>
      AsyncOperation.initiated(AsyncValue.loaded(data));

  factory AsyncOperation.loading([T? previousData]) =>
      AsyncOperation.initiated(AsyncValue.loading(previousData));

  factory AsyncOperation.error(Object e, [T? previousData]) =>
      AsyncOperation.initiated(AsyncValue.error(e, previousData));

  bool get isIdle => this is _Idle;

  bool get isInitiated => this is _Initiated;

  bool get isLoading => isInitiated && (this as _Initiated).state.isLoading;

  bool get isLoaded => isInitiated && (this as _Initiated).state.isLoaded;

  bool get isError => isInitiated && (this as _Initiated).state.isError;

  T? get dataOrPreviousData => this.when(
        idle: () => null,
        initiated: (state) => state.when(
          loaded: (data) => data,
          loading: (previousData) => previousData,
          error: (e, previousData) => previousData,
        ),
      );
}

extension AsyncOperationX<T> on AsyncOperation<T> {
  U whenWithValue<U>({
    required U Function() idle,
    required U Function(T data) loaded,
    required U Function(T? previousData) loading,
    required U Function(Object e, T? previousData) error,
  }) {
    return when(
      idle: () => idle(),
      initiated: (state) => state.when(
        loaded: (data) => loaded(data),
        loading: (previousData) => loading(previousData),
        error: (e, previousData) => error(e, previousData),
      ),
    );
  }

  U maybeWhenWithValue<U>({
    U Function()? idle,
    U Function(T data)? loaded,
    U Function(T? previousDat)? loading,
    U Function(Object e, T? previousData)? error,
    required U Function() orElse,
  }) {
    return when(
      idle: () => idle != null ? idle() : orElse(),
      initiated: (state) => state.when(
        loaded: (data) => loaded != null ? loaded(data) : orElse(),
        loading: (previousData) =>
            loading != null ? loading(previousData) : orElse(),
        error: (e, previousData) =>
            error != null ? error(e, previousData) : orElse(),
      ),
    );
  }

  U? maybeWhenWithValueOrNull<U>({
    U Function()? idle,
    U Function(T data)? loaded,
    U Function(T? previousDat)? loading,
    U Function(Object e, T? previousData)? error,
  }) {
    return maybeWhenWithValue(
      orElse: () => null,
      idle: idle,
      loaded: loaded,
      loading: loading,
      error: error,
    );
  }
}
