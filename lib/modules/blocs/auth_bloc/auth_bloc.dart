import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/auth/create_account_response_model.dart';
import 'package:swagapp/modules/models/update_profile/addresses_payload_model.dart';

import '../../common/utils/handling_errors.dart';
import '../../common/utils/utils.dart';
import '../../constants/constants.dart';
import '../../cubits/profile/get_profile_cubit.dart';
import '../../data/auth/i_auth_service.dart';
import '../../data/secure_storage/storage_repository_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/auth/change_password_response_model.dart';
import '../../models/auth/create_account_payload_model.dart';
import '../../models/auth/forgot_password_code_model.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;
  late StreamSubscription<String?> _userStreamSubscription;

  AuthBloc(this.authService) : super(const AuthState.initial()) {
    _userStreamSubscription =
        authService.subscribeToAuthChanges().distinct().listen((user) async => {
              emit(getIt<PreferenceRepositoryService>().isLogged()
                  ? const AuthState.initial()
                  : const AuthState.unauthenticated()),
              if (getIt<PreferenceRepositoryService>().isLogged() &&
                  isTokenValid(
                      await getIt<StorageRepositoryService>().getToken()))
                {
                  add(AuthEvent.authenticate(
                      await getIt<StorageRepositoryService>().getEmail() ??
                          defaultString,
                      await getIt<StorageRepositoryService>().getPassword() ??
                          defaultString))
                }
            });
  }

  void logout() => add(const AuthEvent.logout());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(
      logout: _logout,
      authenticate: _authenticate,
      createAccount: _createAccount,
      sendEmail: _sendEmail,
      validCode: _validCode,
      changePassword: _changePassword,
      init: _init,
    );
  }

  Stream<AuthState> _logout() async* {
    await authService.logOut();
    yield const AuthState.unauthenticated();
  }

  Stream<AuthState> _init() async* {
    yield const AuthState.initial();
  }

  Stream<AuthState> _createAccount(CreateAccountPayloadModel model) async* {
    yield const AuthState.logging();
    try {
      CreateAccountResponseModel response =
          await authService.createAccount(model);
      List<AddressesPayloadModel>? addresses = response.addresses;

      getIt<StorageRepositoryService>().saveToken(response.token);

      if (response.hasImportableData && addresses!.isNotEmpty) {
        getIt<StorageRepositoryService>()
            .saveFirstName(addresses[0].firstName ?? '');
        getIt<StorageRepositoryService>()
            .saveLastName(addresses[0].lastName ?? '');
        getIt<StorageRepositoryService>().saveAddresses(
            [addresses[0].address1 ?? '', addresses[0].address2 ?? '']);
      }

      getIt<PreferenceRepositoryService>()
          .savehasImportableData(response.hasImportableData);
      getIt<PreferenceRepositoryService>().saveAccountId(response.accountId);

      if (response.errorCode == successResponse) {
        yield const AuthState.authenticated();
      } else {
        yield AuthState.error(response.errorCode);
      }
    } catch (e) {
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  Stream<AuthState> _authenticate(String email, String password) async* {
    yield const AuthState.logging();
    try {
      var response = await authService.authenticate(email, password);
      getIt<StorageRepositoryService>().saveToken(response.token);
      if (response.errorCode == successResponse ||
          response.errorCode == defaultString) {
        getIt<ProfileCubit>().loadProfileResults();
        yield const AuthState.authenticated();
      } else {
        yield AuthState.error(HandlingErrors().getError(response.errorCode));
      }
    } catch (e) {
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  Stream<AuthState> _sendEmail(String email) async* {
    yield const AuthState.initial();

    try {
      var response = await authService.validEmail(email);

      if (response.response ?? false) {
        await authService.requestPasswordResetCode(email);
        yield AuthState.codeSent();
      } else {
        yield const AuthState.emailIsNotValid();
      }
    } catch (e) {
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  Stream<AuthState> _validCode(String code) async* {
    yield const AuthState.initial();

    try {
      ForgotPasswordCodeModel responseBody = await authService.sendCode(code);

      yield AuthState.validCodeSuccess(responseBody);
    } catch (e) {
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  Stream<AuthState> _changePassword(
      String changeCode, String newPassword, String deviceId) async* {
    yield const AuthState.logging();
    try {
      changeCode = await getIt<PreferenceRepositoryService>().validCode();
      ChangePasswordResponseModel response =
          await authService.changePassword(changeCode, newPassword, deviceId);

      getIt<StorageRepositoryService>().saveToken(response.token);

      yield const AuthState.passwordChanged();
      yield const AuthState.authenticated();
    } catch (e) {
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription.cancel();
    return super.close();
  }
}
