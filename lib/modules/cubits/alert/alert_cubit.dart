import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/alerts/i_alerts_service.dart';
import '../../models/alerts/alert_response_model.dart';

part 'alert_state.dart';
part 'alert_cubit.freezed.dart';

class AlertCubit extends Cubit<AlertStateCubit> {
  final IAlertService alertService;
  AlertCubit(this.alertService) : super(const AlertStateCubit.initial());

  Future<void> getAlertList() async {
    try {
      AlertResponseModel response = await alertService.getAlertsList();

      emit(LoadedAlertListState(listAlert: response));
    } catch (error) {
      emit(
        ErrorAlertStateCubit(HandlingErrors().getError(error)),
      );
    }
  }
}
