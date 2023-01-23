import 'package:bloc/bloc.dart';

class FavoriteBloc extends Cubit<bool> {
  FavoriteBloc() : super(false);

  final List<String> _words = [];
  List<String> get words => _words;

  void toggleFavorite(String word) {
    final isExist = _words.contains(word);
    if (isExist) {
      _words.remove(word);
      const newState = false;
      emit(newState);
    } else {
      _words.add(word);
      const newState = true;
      emit(newState);
    }
  }

  bool isExist(String word) {
    final isExist = _words.contains(word);
    return isExist;
  }
}
