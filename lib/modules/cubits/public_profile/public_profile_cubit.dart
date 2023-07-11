import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:swagapp/modules/models/profile/public_profile.dart';
import 'package:swagapp/modules/models/ui_models/async_value.dart';

import '../../data/profile/i_profile_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';

typedef PublicProfileState = AsyncValue<PublicProfile>;

class PublicProfileCubit extends Cubit<PublicProfileState> {
  final IProfileService _profileService;
  final PreferenceRepositoryService _preferenceRepositoryService;
  PublicProfileCubit(this._profileService, this._preferenceRepositoryService)
      : super(const AsyncValue.loading());

  final Map<String, PublicProfile> _cache = {};

  Future<void> loadProfile(
    String profileId, {
    bool prefillFromCurrentUser = false,
  }) async {
    final previousData = prefillFromCurrentUser
        ? PublicProfile.fromProfileModel(
            _preferenceRepositoryService.profileData())
        : null;
    if (profileId == "" &&
        previousData != null &&
        previousData.accountId != null) {
      profileId = previousData.accountId!;
    }
    emit(AsyncValue.loading(previousData ?? _cache[profileId]));
    try {
      final profile = await _profileService.getProfile(profileId);
      _cache[profileId] = profile;
      emit(AsyncValue.loaded(profile));
    } catch (e, stk) {
      debugPrintStack(
        stackTrace: stk,
        label: e.toString(),
      );
      emit(AsyncValue.error(e));
    }
  }
}
