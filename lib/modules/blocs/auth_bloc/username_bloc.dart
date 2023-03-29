import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/auth/i_auth_service.dart';

part 'username_bloc.freezed.dart';
part 'username_event.dart';
part 'username_state.dart';

class UsernameBloc extends Bloc<UsernameEvent, UsernameState> {
  final IAuthService authService;

  UsernameBloc(this.authService) : super(const UsernameState.initial());

  Stream<UsernameState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<UsernameState> mapEventToState(UsernameEvent event) async* {
    yield* event.when(
        init: _init, checkUsernameAvailavility: _checkUsernameAvailavility);
  }

  Stream<UsernameState> _init() async* {
    yield const UsernameState.initial();
  }

  Stream<UsernameState> _checkUsernameAvailavility(String username) async* {
    try {
      bool response = await authService.isUsernameAvailable(username);
      yield UsernameState.isUsernameAvailable(response);
    } catch (e) {
      yield UsernameState.error(HandlingErrors().getError(e));
    }
  }
}
