import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../common/utils/handling_errors.dart';
import '../../data/favorite/i_favorite_service.dart';
import '../../models/detail/detail_item_model.dart';
import '../../models/favorite/profile_favorite_list.dart';
import '../../models/ui_models/async_value.dart';
import '../../models/ui_models/pair.dart';

part 'get_favorites_cubit.freezed.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    /// The list of favored ids, this can be used to optimistically change state until full data is fetched
    required List<String> favoredIds,

    /// model used for UI
    required ListFavoriteProfileResponseModel model,
  }) = _FavoritesState;
}

typedef FavoriteProfileState = AsyncValue<FavoritesState>;

extension FavoriteProfileStateX on FavoriteProfileState {
  Pair<bool, DetailItemModel?> getItem(String catalogItemId) {
    final items = this
        .dataOrPreviousData
        ?.model
        .favoriteList
        .where(
          (e) => e.catalogItemId == catalogItemId,
        )
        .toList();

    return Pair(
      this.dataOrPreviousData?.favoredIds.contains(catalogItemId) == true,
      items?.isNotEmpty == true ? items![0] : null,
    );
  }
}

class FavoriteProfileCubit extends Cubit<FavoriteProfileState> {
  final IFavoriteService favoriteService;
  FavoriteProfileCubit(
    this.favoriteService,
  ) : super(const FavoriteProfileState.loading());

  Future<void> loadResults() async {
    emit(FavoriteProfileState.loading(state.dataOrPreviousData));
    try {
      ListFavoriteProfileResponseModel response =
          await favoriteService.getFavorites();

      emit(FavoriteProfileState.loaded(FavoritesState(
        favoredIds: response.favoriteList.map((e) => e.catalogItemId).toList(),
        model: response,
      )));
    } catch (error, stk) {
      debugPrintStack(
        label: error.toString(),
        stackTrace: stk,
      );
      emit(FavoriteProfileState.error(HandlingErrors().getError(error)));
    }
  }

  void optimisticallyUpdateItem(
    String catalogItemId,
    bool shouldBeInFavorites,
  ) {
    emit(state.tryCopyWithDataOrPreviousData((data) {
      final newFavoredIds = [...data.favoredIds];
      var newModel = data.model;
      if (shouldBeInFavorites) {
        newFavoredIds.add(catalogItemId);
      } else {
        newFavoredIds.remove(catalogItemId);

        final newModelList = [...data.model.favoriteList];
        newModelList.removeWhere(
          (element) => element.catalogItemId == catalogItemId,
        );
        newModel = data.model.copyWith(
          favoriteList: newModelList,
        );
      }

      return data.copyWith(
        favoredIds: newFavoredIds,
        model: newModel,
      );
    }));
  }
}
