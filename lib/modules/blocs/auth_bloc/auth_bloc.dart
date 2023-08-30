import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/auth/create_account_response_model.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/models/update_profile/addresses_payload_model.dart';

import '../../../main.dart';
import '../../common/utils/handling_errors.dart';
import '../../common/utils/utils.dart';
import '../../constants/constants.dart';
import '../../cubits/profile/get_profile_cubit.dart';
import '../../data/auth/i_auth_service.dart';
import '../../data/firebase/firebase_service.dart';
import '../../data/secure_storage/storage_repository_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/auth/change_password_response_model.dart';
import '../../models/auth/create_account_payload_model.dart';
import '../../models/auth/forgot_password_code_model.dart';
import '../../services/internet_connectivity_service.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;
  final PreferenceRepositoryService preferenceService;
  final StorageRepositoryService storageService;
  late StreamSubscription<String?> _userStreamSubscription;
  bool isInternet = false;

  AuthBloc(this.authService, this.preferenceService, this.storageService)
      : super(const AuthState.initial()) {
    _userStreamSubscription = authService
        .subscribeToAuthChanges()
        .distinct()
        .listen((user) async => add(const AuthEvent.init()));

    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      isInternet = false;

      print("No internet connectivity auth bloc");
      InternetConnectivityBloc(true).emit(InternetConnectivityState.offline);
    } else {
      isInternet = true;
    }
  }

  void logout() => add(const AuthEvent.logout());

  Future<void> storeFirebaseToken() async {
    final firebase = getIt<FirebaseService>();
    final prefs = getIt<PreferenceRepositoryService>();

    if (prefs.isLogged()) {
      final accountId = prefs.profileData().accountId;
      final token = await FirebaseMessaging.instance.getToken();
      if (token == null) return;
      firebase.storeFirebaseToken(token, accountId);
    }
  }

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
        finishedOnboarding: _finishedOnboarding,
        delete: _delete);
  }

  Stream<AuthState> _logout() async* {
    yield const AuthState.logging();
    try {
      dynamic response = await authService.logOut();
      bool isLogout = response["response"];
      print("RESPONSEEE  $response");
      if (isLogout) {
        getIt<PreferenceRepositoryService>().saveIsLogged(false);
        debugPrint(
            'isLogged: ${getIt<PreferenceRepositoryService>().isLogged().toString()}');
        yield const AuthState.unauthenticated();
      }
    } catch (e) {
      print("ERROR");
      print(e);
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  Stream<AuthState> _delete() async* {
    yield const AuthState.logging();
    try {
      dynamic response = await authService.deleteAccount();
      bool isDeleted = response["response"];
      String message = response["shortMessage"];

      print("RESPONSEEE  $response");
      yield AuthState.deleted(message, isDeleted);
    } catch (e) {
      print("ERROR");
      print(e);
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  Stream<AuthState> _init() async* {
    if (preferenceService.isLogged()) {
      // Create a 5-second delay using Future.delayed
      Future.delayed(const Duration(seconds: 25), () async* {
        logger.e("TimeOutIssue : AuthBloc 25 Sec delay");
        yield const AuthState.initial();
      });
      if (isTokenValid(await storageService.getToken())) {
        add(
          AuthEvent.authenticate(
              await storageService.getEmail() ?? defaultString,
              await storageService.getPassword() ?? defaultString),
        );
      }
    } else if (preferenceService.shouldShowOnboarding()) {
      yield const AuthState.onboarding();
    } else {
      yield const AuthState.unauthenticated();
    }
  }

  Stream<AuthState> _finishedOnboarding() async* {
    preferenceService.saveShouldShowOnboarding(false);
    add(const AuthEvent.init());
  }

  Stream<AuthState> _createAccount(CreateAccountPayloadModel model) async* {
    yield const AuthState.logging();
    try {
      CreateAccountResponseModel response =
          await authService.createAccount(model);
      List<AddressesPayloadModel>? addresses = response.addresses;

      storageService.saveToken(response.token);

      if (response.hasImportableData && addresses!.isNotEmpty) {
        storageService.saveFirstName(addresses[0].firstName ?? '');
        storageService.saveLastName(addresses[0].lastName ?? '');
        storageService.saveCity(addresses[0].city ?? '');
        storageService.saveCountry(addresses[0].country ?? 'United States');
        storageService.saveState(addresses[0].state ?? '');
        storageService.saveZip(addresses[0].postalCode ?? '');
        storageService.saveAddresses(
            [addresses[0].address1 ?? '', addresses[0].address2 ?? '']);
      }

      preferenceService.savehasImportableData(response.hasImportableData);
      preferenceService.saveAccountId(response.accountId);
      preferenceService.saveUserSendBirdId(response.accountId);

      if (response.errorCode == successResponse) {
        storeFirebaseToken();
        yield const AuthState.authenticated();
      } else {
        yield AuthState.error(response.errorCode);
      }
    } catch (e) {
      if (e.toString().contains("Failed host lookup")) {
        logger.e("Contain");
        yield const AuthState.isInternetAvailable(false);
        //InternetConnectivityBloc().emit(InternetConnectivityState.offline);
      } else {
        // yield const UsernameState.isInternetAvailable(true);
        yield AuthState.error(HandlingErrors().getError(e));
      }
    }
  }

  Stream<AuthState> _authenticate(String email, String password) async* {
    yield const AuthState.logging();
    try {
      String deviceId = preferenceService.getFirebaseDeviceToken();
      CreateAccountResponseModel response =
          await authService.authenticate(email, password, deviceId);
      storageService.saveToken(response.token);

      if (response.errorCode == successResponse ||
          response.errorCode == defaultString) {
        await getIt<ProfileCubit>().loadProfileResults();
        ProfileModel profileData = preferenceService.profileData();
        preferenceService.saveUserSendBirdId(profileData.accountId);

        storeFirebaseToken();
        yield const AuthState.authenticated();
      } else {
        yield AuthState.error(HandlingErrors().getError(response.errorCode));
      }
    } catch (e, stk) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: stk,
      );
      if (e.toString().contains("Failed host lookup")) {
        logger.e("Contain");
        yield const AuthState.isInternetAvailable(false);
        //InternetConnectivityBloc().emit(InternetConnectivityState.offline);
      } else {
        // yield const UsernameState.isInternetAvailable(true);
        yield AuthState.error(HandlingErrors().getError(e));
      }
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
      changeCode = await preferenceService.validCode();
      ChangePasswordResponseModel response =
          await authService.changePassword(changeCode, newPassword, deviceId);

      storageService.saveToken(response.token);

      yield const AuthState.passwordChanged();
      storeFirebaseToken();
      yield const AuthState.authenticated();
    } catch (e) {
      yield AuthState.error(HandlingErrors().getError(e));
    }
  }

  Future<bool> _isAccountInformationMissing() async {
    final profileData = await authService.privateProfile();
    return profileData.firstName == null ||
        profileData.lastName == null ||
        (profileData.addresses?.isEmpty ?? true);
  }

  @override
  Future<void> close() async {
    await _userStreamSubscription.cancel();
    return super.close();
  }
}
