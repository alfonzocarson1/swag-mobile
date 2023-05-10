part of 'auth_cubit.dart';

@freezed
class AuthStateCubit with _$AuthStateCubit {
  const factory AuthStateCubit.initial() = _Initial;
  const factory AuthStateCubit.loading({@Default(false) bool isFirstFetch}) =
      loading_search;

  const factory AuthStateCubit.isPhoneAvailable(bool isPhoneAvailable) =
      IsPhoneAvailable;

  factory AuthStateCubit.error(final String message) = ErrorAuthStateCubit;
}
