import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



enum InternetConnectivityState { online, offline }



class InternetConnectivityBloc extends Cubit<InternetConnectivityState> {

  static final InternetConnectivityBloc _internetConnectivityBloc =
  InternetConnectivityBloc();

  static InternetConnectivityBloc get internetConnectivityBloc =>
      _internetConnectivityBloc;

  final Connectivity _connectivity = Connectivity();

  InternetConnectivityBloc() : super(InternetConnectivityState.online) {
    _init();
    print("Message Internet connectivity init");
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

  void _showOfflineToast(String message) {
    print("Message :$message");
    // Fluttertoast.showToast(
    //   msg: message,
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.CENTER,
    // );
  }
}




enum VPNConnectivityState { online, offline }



// class VPNConnectivityBloc extends Cubit<VPNConnectivityState> {
//
//   static final VPNConnectivityBloc _vpnConnectivityBloc =
//   VPNConnectivityBloc();
//
//   static VPNConnectivityBloc get  vpnConnectivityBloc  =>
//       _vpnConnectivityBloc ;
//
//
//
//   VPNConnectivityBloc() : super(VPNConnectivityState.online) {
//     print("VPN connectivity init");
//   }
//
//
//
// }


class VPNConnectivityBloc extends Cubit<VPNConnectivityState> {
  VPNConnectivityBloc() : super(VPNConnectivityState.online) {
    print("VPN connectivity init");
  }

  // Add a method to change the VPN state
  void setVPNState(VPNConnectivityState state) {

    print("State :$state");
    emit(state);
  }
}