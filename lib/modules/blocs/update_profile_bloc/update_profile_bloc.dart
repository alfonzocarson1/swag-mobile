import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/update_profile/i_update_profile_service.dart';
import '../../di/injector.dart';
import '../../models/update_profile/update_avatar_model.dart';
import '../../models/update_profile/update_profile_model.dart';
import '../../models/update_profile/update_profile_payload_model.dart';
import 'dart:typed_data';

import '../auth_bloc/auth_bloc.dart';

part 'update_profile_bloc.freezed.dart';
part 'update_profile_event.dart';
part 'update_profile_state.dart';

class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final IUpdateProfileService updateProfileService;

  UpdateProfileBloc(this.updateProfileService)
      : super(UpdateProfileState.initial());

  Stream<UpdateProfileState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<UpdateProfileState> mapEventToState(UpdateProfileEvent event) async* {
    yield* event.when(update: _update, updateAvatar: _updateAvatar, importData: importData);
  }

  Stream<UpdateProfileState> _update(UpdateProfilePayloadModel param) async* {
    yield UpdateProfileState.initial();
    try {
      UpdateProfileModel responseBody =
          await updateProfileService.updateProfile(param);

      yield UpdateProfileState.updated();
      yield UpdateProfileState.loadedSuccess(responseBody);
    } catch (e) {
      yield UpdateProfileState.error(HandlingErrors().getError(e));
    }
  }

  Stream<UpdateProfileState> _updateAvatar(
      Uint8List bytes, String imageTopic, String topicId) async* {
    yield UpdateProfileState.initial();

    try {
      UpdateAvatarModel responseBody =
          await updateProfileService.updateAvatar(bytes, imageTopic, topicId);

      yield UpdateProfileState.updated();

      add(const UpdateProfileEvent.update(
          UpdateProfilePayloadModel(useAvatar: "CUSTOM")));

      yield UpdateProfileState.loadedAvatarSuccess(responseBody);
    } catch (e) {
      yield UpdateProfileState.error(HandlingErrors().getError(e));
    }
  }

  Stream<UpdateProfileState> importData() async* {
   ProfileModel profileModel  = await getIt<AuthBloc>().authService.privateProfile();
   bool emailVerified = profileModel.emailVerified;
    yield UpdateProfileState.dataImported(emailVerified);
  }
}