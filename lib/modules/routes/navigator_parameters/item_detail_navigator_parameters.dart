import 'package:swagapp/modules/common/utils/tab_wrapper.dart';

class ItemDetailNavigatorParameters {

  final String catalogItemId;
  final void Function(bool) addFavorite;
  final SearchTab? tab;

  ItemDetailNavigatorParameters({
    required this.catalogItemId, 
    required this.addFavorite, 
    this.tab,
  });
}


