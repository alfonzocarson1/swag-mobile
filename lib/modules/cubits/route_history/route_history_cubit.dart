import 'package:bloc/bloc.dart';

class RouteHistoryCubit extends Cubit<bool> {
  RouteHistoryCubit() : super(false);

  final List<String> _routes = ['', ''];
  List<String> get routes => _routes;

  void toggleRoute(String route) {
    _routes.remove(_routes[0]);
    _routes.add(route);
  }
}
