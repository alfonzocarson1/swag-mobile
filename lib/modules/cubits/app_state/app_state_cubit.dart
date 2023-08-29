import 'package:bloc/bloc.dart';

class AppState {
  final bool overlayDetected;

  AppState(this.overlayDetected);
}

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(false));

  void setOverlayDetected() {
    emit(AppState(true));
  }

  void clearOverlayDetected() {
    emit(AppState(false));
  }
}