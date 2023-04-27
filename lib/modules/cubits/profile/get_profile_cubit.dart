import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/auth/i_auth_service.dart';

import '../../models/profile/profile_model.dart';

part 'get_profile_state.dart';
part 'get_profile_cubit.freezed.dart';

class CollectionProfileCubit extends Cubit<ProfileCubitState> {
  final IAuthService profileService;
  CollectionProfileCubit(this.profileService)
      : super(const ProfileCubitState.initial());

  Future<void> loadResults() async {
    emit(
      const _Initial(),
    );
    try {
      ProfileModel responseBody = await profileService.privateProfile();

      emit(LoadedProfileDataState(responseBody));
    } catch (error) {
      emit(
        ErrorProfileState(HandlingErrors().getError(error)),
      );
    }
  }
}
