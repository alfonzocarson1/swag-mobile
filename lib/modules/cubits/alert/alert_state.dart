part of 'alert_cubit.dart';

@freezed
class AlertStateCubit with _$AlertStateCubit {
  const factory AlertStateCubit.initial() = Initial;
  const factory AlertStateCubit.loading({@Default(false) bool isFirstFetch}) =
      loading_page;

  factory AlertStateCubit.loadedAlertList({
    required final AlertResponseModel listAlert,
  }) = LoadedAlertListState;

  factory AlertStateCubit.error(final String message) = ErrorAlertStateCubit;
}
