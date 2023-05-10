import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/auth/generic_response_model.dart';

import '../../common/utils/handling_errors.dart';
import '../../common/utils/utils.dart';
import '../../constants/constants.dart';
import '../../data/auth/i_auth_service.dart';
import '../../data/secure_storage/storage_repository_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/auth/change_password_response_model.dart';
import '../../models/auth/create_account_payload_model.dart';
import '../../models/auth/forgot_password_code_model.dart';
import '../../models/profile/profile_model.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;
  late StreamSubscription<String?> _userStreamSubscription;

  AuthBloc(this.authService) : super(const AuthState.initial()) {

    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();

    _userStreamSubscription = authService.subscribeToAuthChanges().distinct().listen((user) async => {
      
      emit(isLogged ? const AuthState.initial() : const AuthState.unauthenticated()),

      if(isLogged && isTokenValid(await getIt<StorageRepositoryService>().getToken())) {
        
        add(AuthEvent.authenticate( 
          await getIt<StorageRepositoryService>().getEmail() ?? defaultString,
          await getIt<StorageRepositoryService>().getPassword() ?? defaultString,
        )),
      }
    });
  }

  void logout()=> add(const AuthEvent.logout());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(
      logout: _logout,
      authenticate: _authenticate,
      createAccount: _createAccount,
      sendEmail: _sendEmail,
      validCode: _validCode,
      changePassword: _changePassword,
      privateProfile: _privateProfile,
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

      GenericResponseModel response = await authService.createAccount(model);

      getIt<StorageRepositoryService>().saveToken(response.token);
      getIt<PreferenceRepositoryService>().savehasImportableData(response.hasImportableData);
      getIt<PreferenceRepositoryService>().saveAccountId(response.accountId);

      getIt<PreferenceRepositoryService>().saveUserSendBirdId('cristian_tabares_id');
      getIt<PreferenceRepositoryService>().saveUserSendBirdToken('9d76f66cbbe8be88dd8c4cf55333020b306e7217');

      if (response.errorCode == successResponse) {
        yield const AuthState.authenticated();
      } else {
        yield AuthState.error(HandlingErrors().getError(response.errorCode));
      }
    } catch (e) {
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  Stream<AuthState> _authenticate(String email, String password) async* {

    yield const AuthState.logging();
    try {

      GenericResponseModel response = await authService.authenticate(email, password);

      getIt<StorageRepositoryService>().saveToken(response.token);
      getIt<PreferenceRepositoryService>().saveUserSendBirdId('cristian_tabares_id');
      getIt<PreferenceRepositoryService>().saveUserSendBirdToken('9d76f66cbbe8be88dd8c4cf55333020b306e7217');

      // getIt<StorageRepositoryService>().saveToken('eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJmZWUxN2RlNC1iNmE4LTRhMWYtOWQzMi00OGY5NTNlZmFhZGEiLCJpYXQiOjE2ODM2NTc0NzYsImV4cCI6MTY4NDY3Nzg2OX0.vMH04L1Px7APnERqDPCBn8RK7Re0fI1YWhXzr4oMdL8');
      // getIt<PreferenceRepositoryService>().saveUserSendBirdId('sendbird_desk_agent_id_fbabbaff-4837-4758-93a1-e50c5b957033');
      // getIt<PreferenceRepositoryService>().saveUserSendBirdToken('d9f5b2d32f614583ffacf0331324db6e7350fe01');

      if (response.errorCode == successResponse ||
          response.errorCode == defaultString) {
        add(const AuthEvent.privateProfile());
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

  Stream<AuthState> _privateProfile() async* {
    try {
      ProfileModel response = await authService.privateProfile();
      getIt<PreferenceRepositoryService>().saveProfileData(response);
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
