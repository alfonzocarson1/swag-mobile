import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../blocs/search_bloc.dart/search_bloc.dart';
import '../../constants/constants.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/filter_model.dart';
import '../../models/search/search_request_payload_model.dart';

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

bool isValidNumberDot(String number) {
  return RegExp(r"^[0-9]+\.[0-9][0-9]$").hasMatch(number);
}

bool isValidNumberComa(String number) {
  return RegExp(r"^[0-9]+\,[0-9][0-9]$").hasMatch(number);
}

String formatDate(String dateTime) {
  final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  final DateFormat serverFormater = DateFormat('MM/dd/yyyy');
  final DateTime displayDate = displayFormater.parse(dateTime);
  final String formatted = serverFormater.format(displayDate);
  return formatted;
}

bool isTokenValid(String? token) {
  return token != null && token != defaultString;
}

Future<void> performSearch(BuildContext context,
    {String? searchParam, SearchTab? tab}) async {
  final sharedPref = getIt<PreferenceRepositoryService>();

  context.read<SearchBloc>().add(SearchEvent.performSearch(
      SearchRequestPayloadModel(
          searchParams: searchParam != null ? [searchParam] : null,
          categoryId:
              tab != null ? await SearchTabWrapper(tab).toStringCustom() : null,
          filters: FilterModel(sortBy: sharedPref.getSortBy(), conditions: [
            ConditionWrapper(
                    Condition.values.elementAt(sharedPref.getCondition()))
                .toString()
          ])),
      tab ?? SearchTab.all));
}
