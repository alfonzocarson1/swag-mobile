import 'dart:io';

class HandlingErrors {
  String getError(dynamic error) {
    if (error is SocketException) {
      return 'No Internet connection';
    } else if (error is HttpException) {
      return 'Couldn\'t find the request';
    } else if (error is FormatException) {
      return 'Bad response';
    } else if (error is String &&
        error.isNotEmpty &&
        error.contains('Error - ')) {
      return error.split('Error - ')[1];
    } else if (error.toString().contains("Failed host lookup")) {
      //logger.e(" Exception :Host failed");
      return 'Host Failed';
    }else {
      return 'error in the request, please try again.';
    }
  }
}
