import 'package:intl/intl.dart';

bool isValidEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool isValidPassword(String password) {
  return RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{8,}$")
      .hasMatch(password);
}

bool isValidUsername(String username) {
  return RegExp(r"^.{4,20}$").hasMatch(username);
}

String formatDate(String dateTime) {
  final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  final DateFormat serverFormater = DateFormat('MM/dd/yyyy');
  final DateTime displayDate = displayFormater.parse(dateTime);
  final String formatted = serverFormater.format(displayDate);
  return formatted;
}
