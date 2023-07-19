import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:swagapp/modules/data/favorite/i_favorite_service.dart';
import 'package:swagapp/modules/models/profile/public_profile.dart';
import 'package:swagapp/modules/models/ui_models/async_value.dart';

import '../../models/detail/detail_item_model.dart';

typedef PublicProfileFavoritesState = AsyncValue<List<DetailItemModel>>;

class PublicProfileFavoritesCubit extends Cubit<PublicProfileFavoritesState> {
  final IFavoriteService _favoriteService;
  PublicProfileFavoritesCubit(this._favoriteService)
      : super(const AsyncValue.loading());

  final Map<String, List<DetailItemModel>> _cache = {};

  Future<void> loadProfileFavorites(String profileId) async {
    emit(AsyncValue.loading(_cache[profileId]));
    try {
      final wrapper = await _favoriteService.getFavoritesForProfile(profileId);
      _cache[profileId] = wrapper.favoriteList;
      emit(AsyncValue.loaded(wrapper.favoriteList));
    } catch (e, stk) {
      debugPrintStack(
        stackTrace: stk,
        label: e.toString(),
      );
      emit(AsyncValue.error(e));
    }
  }
}
