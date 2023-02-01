import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:swagapp/modules/api/api_service.dart';
import 'package:swagapp/modules/blocs/search_bloc.dart/search_bloc.dart';
import 'package:swagapp/modules/common/utils/context_service.dart';
import 'package:swagapp/modules/data/auth/i_auth_service.dart';
import 'package:swagapp/modules/data/search/i_search_service.dart';
import 'package:swagapp/modules/data/search/search_service.dart';

import '../blocs/auth_bloc/auth_bloc.dart';
import '../blocs/collection_bloc/collection_bloc.dart';
import '../blocs/detail_bloc/detail_bloc.dart';
import '../blocs/explore_bloc/explore_bloc.dart';
import '../blocs/favorite_bloc/favorite_bloc.dart';
import '../blocs/listing_bloc/listing_bloc.dart';
import '../blocs/profile_favorite_bloc/profile_favorite_bloc.dart';
import '../data/auth/auth_service.dart';
import '../data/collection/collection_service.dart';
import '../data/collection/i_collection_service.dart';
import '../data/detail/detail_service.dart';
import '../data/detail/i_detail_service.dart';
import '../data/explore/explore_service.dart';
import '../data/explore/i_explore_service.dart';
import '../data/favorite/favorite_service.dart';
import '../data/favorite/i_favorite_service.dart';
import '../data/listing/i_listing_service.dart';
import '../data/listing/listing_service.dart';
import '../data/shared_preferences/shared_preferences_service.dart';

final getIt = GetIt.instance;

const baseScope = 'baseScope';
const unauthorizedScope = 'unauthorizedScope';
const authorizedScope = 'authorizedScope';

Future<void> setupAppScope() {
  getIt.registerLazySingleton(() => PreferenceRepositoryService());
  getIt.registerLazySingleton(() => ContextService());
  getIt.registerLazySingleton<IAuthService>(() => AuthService(APIService()));
  getIt.registerLazySingleton<AuthBloc>(() => AuthBloc(getIt<IAuthService>()));
  getIt
      .registerLazySingleton<ISearchService>(() => SearchService(APIService()));
  getIt.registerLazySingleton<SearchBloc>(
      () => SearchBloc(getIt<ISearchService>()));

  getIt.registerLazySingleton<IExploreService>(
      () => ExploreService(APIService()));
  getIt.registerLazySingleton<ExploreBloc>(
      () => ExploreBloc(getIt<IExploreService>()));

  getIt.registerLazySingleton<FavoriteBloc>(() => FavoriteBloc());

  getIt
      .registerLazySingleton<IDetailService>(() => DetailService(APIService()));
  getIt.registerLazySingleton<DetailBloc>(
      () => DetailBloc(getIt<IDetailService>()));

  getIt.registerLazySingleton<ICollectionService>(
      () => CollectionService(APIService()));
  getIt.registerLazySingleton<CollectionBloc>(
      () => CollectionBloc(getIt<ICollectionService>()));

  getIt.registerLazySingleton<IListingService>(
      () => ListingService(APIService()));
  getIt.registerLazySingleton<ListingBloc>(
      () => ListingBloc(getIt<IListingService>()));

  getIt.registerLazySingleton<IFavoriteService>(
      () => FavoriteService(APIService()));
  getIt.registerLazySingleton<ProfileFavoriteBloc>(
      () => ProfileFavoriteBloc(getIt<IFavoriteService>()));

  return getIt.allReady();
}

Future<void> setupUnauthorizedScope(
  final GlobalKey<NavigatorState> rootNavigator,
) async {
  if (getIt.currentScopeName == unauthorizedScope) return;
  if (getIt.currentScopeName == authorizedScope) {
    await getIt.popScope();
    return;
  }
  getIt.pushNewScope(
    scopeName: unauthorizedScope,
    init: (getIt) {
      getIt.registerLazySingleton<GlobalKey<NavigatorState>>(
        () => rootNavigator,
        instanceName: 'root_navigator',
      );
    },
  );
}

Future<void> setupAuthorizedScope(
  final GlobalKey<NavigatorState> rootNavigator,
  final GlobalKey<NavigatorState> homeNavigator,
) async {
  await setupUnauthorizedScope(rootNavigator);
  getIt.pushNewScope(
      scopeName: authorizedScope, init: (getIt) {}, dispose: () {});
}
