import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetConnectivityState { online, offline }

class InternetConnectivityBloc extends Cubit<InternetConnectivityState> {
  final Connectivity _connectivity = Connectivity();
  final isDummyMessage = false;

  InternetConnectivityBloc(isDummyMessage)
      : super(InternetConnectivityState.online) {
    if (isDummyMessage == false) {
      _init();
      print("Message Internet connectivity init");
    }
  }

  void _init() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      emit(InternetConnectivityState.offline);
      //_showOfflineToast("Active internet connection required.");
    } else {
      //_showOfflineToast("Active internet connection required.");
      emit(InternetConnectivityState.online);
    }
    _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        emit(InternetConnectivityState.offline);
        //_showOfflineToast("Active internet connection required.");
      } else {
        //_showOfflineToast("Active internet connection required.");
        emit(InternetConnectivityState.online);
      }
    });
  }

  void showDummyInternetIssueToast() {
    emit(InternetConnectivityState.offline);
  }
}