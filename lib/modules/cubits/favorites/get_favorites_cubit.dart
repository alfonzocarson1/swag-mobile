import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/favorite/i_favorite_service.dart';
import '../../models/favorite/favorite_model.dart';
import '../../models/favorite/profile_favorite_list.dart';

part 'get_favorites_state.dart';
part 'get_favorites_cubit.freezed.dart';

class FavoriteProfileCubit extends Cubit<FavoriteCubitState> {
  final IFavoriteService favoriteService;
  FavoriteProfileCubit(this.favoriteService)
      : super(const FavoriteCubitState.initial());

  Future<void> loadResults() async {
    emit(
      const _Initial(),
    );
    try {
      ListFavoriteProfileResponseModel response =
          await favoriteService.getFavorites();

      emit(LoadedFavoritesState(profileFavoriteList: response));
    } catch (error) {
      emit(
        ErrorFavoriteState(HandlingErrors().getError(error)),
      );
    }
  }
}
