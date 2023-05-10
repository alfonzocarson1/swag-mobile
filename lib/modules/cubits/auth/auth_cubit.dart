import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/auth/i_auth_service.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthStateCubit> {
  final IAuthService authService;
  AuthCubit(this.authService) : super(const AuthStateCubit.initial());

  Future<void> loadResultsPhoneAvailable(String phone) async {
    emit(
      const _Initial(),
    );
    try {
      bool responseBody = await authService.isPhoneAvailable(phone);
      emit(AuthStateCubit.isPhoneAvailable(responseBody));
    } catch (error) {
      emit(
        ErrorAuthStateCubit(HandlingErrors().getError(error)),
      );
    }
  }
}
