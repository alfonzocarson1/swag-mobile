import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/i_auth_service.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthService authService;
  late StreamSubscription<String?> _userStreamSubscription;

  AuthBloc(this.authService) : super(const AuthState.initial()) {
    _userStreamSubscription =
        authService.subscribeToAuthChanges().distinct().listen((user) async => {
              // await Future.delayed(const Duration(milliseconds: 2000), () {}),
              emit(const AuthState.unauthenticated()),
            });
  }

  Stream<AuthState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  void logout() => add(const AuthEvent.logout());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(
      logout: _logout,
      authenticate: _authenticate,
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

  Stream<AuthState> _authenticate() async* {
    try {
      await authService.authenticate();
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
