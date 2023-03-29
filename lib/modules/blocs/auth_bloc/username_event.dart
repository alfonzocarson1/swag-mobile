part of 'username_bloc.dart';

@freezed
class UsernameEvent with _$UsernameEvent {
  const factory UsernameEvent.init() = Init;
  const factory UsernameEvent.checkUsernameAvailavility(String username) =
      CheckUsernameAvailability;
}
