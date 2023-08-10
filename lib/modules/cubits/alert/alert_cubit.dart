import 'package:bloc/bloc.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/alerts/i_alerts_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/alerts/alert_response_model.dart';
import '../../models/alerts/alerts_model.dart';

part 'alert_state.dart';
part 'alert_cubit.freezed.dart';

class AlertCubit extends Cubit<AlertStateCubit> {
  final IAlertService alertService;
  AlertCubit(this.alertService) : super(const AlertStateCubit.initial());

  Future<void> getAlertList() async {
    emit(
      const Initial(),
    );
    try {
      AlertResponseModel response = await alertService.getAlertsList();
      int unread = 0;
      for (var alert in response.alertList) {
        if (alert.read == false) {
          unread++;
        }
      }
      FlutterAppBadger.updateBadgeCount(unread);
      if (unread > 0) {
        getIt<PreferenceRepositoryService>().saveIsUnreadAlert(true);
      } else {
        getIt<PreferenceRepositoryService>().saveIsUnreadAlert(false);
      }
      emit(LoadedAlertListState(response));
    } catch (error) {
      emit(
        ErrorAlertStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> updateAletBadget() async {
    try {
      AlertResponseModel response = await alertService.getAlertsList();
      int unread = 0;
      for (var alert in response.alertList) {
        if (alert.read == false) {
          unread++;
        }       
      }
       FlutterAppBadger.updateBadgeCount(unread);
      if (unread > 0) {
        getIt<PreferenceRepositoryService>().saveIsUnreadAlert(true);
      } else {
        getIt<PreferenceRepositoryService>().saveIsUnreadAlert(false);
      }
    } catch (error) {
      emit(
        ErrorAlertStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> readAlert(String notificationAlertId) async {
    try {
      await alertService.readAlert(notificationAlertId);
      await getIt<AlertCubit>().getAlertList();
    } catch (error) {
      emit(
        ErrorAlertStateCubit(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> saveAlert(AlertModel alert) async {
    try {
      await alertService.saveAlert(alert);
      await getAlertList(); 
    } catch (error) {
      emit(
        ErrorAlertStateCubit(HandlingErrors().getError(error)),
      );
    }
  }
}
