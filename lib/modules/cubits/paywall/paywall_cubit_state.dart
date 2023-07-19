part of 'paywall_cubit.dart';

@freezed
class PaywallCubitState with _$PaywallCubitState {
  const factory PaywallCubitState.initial() = PaywallCubitStateInitial;
  const factory PaywallCubitState.progress() = PaywallCubitStateProgress;
  const factory PaywallCubitState.success() = PaywallCubitStateSuccess;
  const factory PaywallCubitState.cancelled() = PaywallCubitStateCancelled;
  const factory PaywallCubitState.error(String errorMessage) = PaywallCubitStateError;
}
