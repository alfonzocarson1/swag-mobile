import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../common/utils/handling_errors.dart';
import '../../data/favorite/i_favorite_service.dart';
import '../../models/favorite/favorite_model.dart';

part 'favorite_item_bloc.freezed.dart';
part 'favorite_item_event.dart';
part 'favorite_item_state.dart';

class FavoriteItemBloc extends Bloc<FavoriteItemEvent, FavoriteItemState> {
  final IFavoriteService favoriteService;

  FavoriteItemBloc(this.favoriteService) : super(FavoriteItemState.initial());

  Stream<FavoriteItemState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<FavoriteItemState> mapEventToState(FavoriteItemEvent event) async* {
    yield* event.when(
        addFavoriteItem: _addFavorite, removeFavoriteItem: _removeFavorite);
  }

  Stream<FavoriteItemState> _addFavorite(FavoriteModel param) async* {
    yield FavoriteItemState.initial();
    try {
      FavoriteModel responseBody = await favoriteService.addFavorite(param);
      yield FavoriteItemState.loadedFavoriteItem(responseBody);
    } catch (e) {
      yield FavoriteItemState.error(HandlingErrors().getError(e));
    }
  }

  Stream<FavoriteItemState> _removeFavorite(FavoriteModel param) async* {
    yield FavoriteItemState.initial();
    try {
      FavoriteModel responseBody = await favoriteService.removeFavorite(param);
      yield FavoriteItemState.removedFavoriteItem(responseBody);
    } catch (e) {
      yield FavoriteItemState.error(HandlingErrors().getError(e));
    }
  }
}
