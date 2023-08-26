import 'dart:io';

import '../../../main.dart';
import '../../services/internet_connectivity_service.dart';

class HandlingErrors {
  String getError(dynamic error) {
    if (error is SocketException) {
      logger.e("SocketException");
      return 'No Internet connection';
    } else if (error is HttpException) {
      logger.e("Http");
      return 'Couldn\'t find the request';
    } else if (error is FormatException) {
      logger.e("Format");
      return 'Bad response';
    } else if (error is String &&
        error.isNotEmpty &&
        error.contains('Error - ')) {
      logger.e("String error");
      return error.split('Error - ')[1];
    } else {
      logger.e("Else  ");
      // InternetConnectivityBloc(true).emit(InternetConnectivityState.offline);
      InternetConnectivityBloc(true).showDummyInternetIssueToast();
      return 'error in the request, please try again.';
    }
  }
}
