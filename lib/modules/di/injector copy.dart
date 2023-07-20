import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:swagapp/modules/api/api_service.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/blocs/search_bloc.dart/search_bloc.dart';
import 'package:swagapp/modules/common/utils/context_service.dart';
import 'package:swagapp/modules/cubits/paginated_search/paginated_search_cubit.dart';
import 'package:swagapp/modules/cubits/public_profile/public_profile_cubit.dart';
import 'package:swagapp/modules/cubits/public_profile_favorites/public_profile_favorites_cubit.dart';
import 'package:swagapp/modules/cubits/public_profile_listings/public_profile_listings_cubit.dart';
import 'package:swagapp/modules/cubits/purchase_history/purchase_history_cubit.dart';
import 'package:swagapp/modules/cubits/saved_search/saved_searches_cubit.dart';
import 'package:swagapp/modules/data/auth/i_auth_service.dart';
import 'package:swagapp/modules/data/chat/chat_service.dart';
import 'package:swagapp/modules/data/chat/ichat_service.dart';
import 'package:swagapp/modules/data/filters/filters_service.dart';
import 'package:swagapp/modules/data/paywall/i_paywall_service.dart';
import 'package:swagapp/modules/data/paywall/paywall_service.dart';
import 'package:swagapp/modules/data/profile/i_profile_service.dart';
import 'package:swagapp/modules/data/profile/profile_service.dart';
import 'package:swagapp/modules/data/purchase_history/i_purchase_history_service.dart';
import 'package:swagapp/modules/data/purchase_history/purchase_history_service.dart';
import 'package:swagapp/modules/data/saved_search/i_saved_search_service.dart';
import 'package:swagapp/modules/data/saved_search/saved_search_service.dart';
import 'package:swagapp/modules/data/search/i_search_service.dart';
import 'package:swagapp/modules/data/search/search_service.dart';
import 'package:swagapp/modules/data/search_service/search_service.dart'
    as search;

import '../blocs/auth_bloc/auth_bloc.dart';
import '../blocs/auth_bloc/username_bloc.dart';
import '../blocs/buy_sale_listing_bloc/buy_sale_listing_bloc.dart';
import '../blocs/category_bloc/category_bloc.dart';
import '../blocs/collection_bloc/collection_bloc.dart';
import '../blocs/detail_bloc/detail_bloc.dart';
import '../blocs/favorite_bloc/favorite_bloc.dart';
import '../blocs/favorite_bloc/favorite_item_bloc.dart';
import '../blocs/listing_bloc/listing_bloc.dart';
import '../blocs/profile_favorite_bloc/profile_favorite_bloc.dart';
import '../blocs/sale_history/sale_history_bloc.dart';
import '../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import '../blocs/sold_bloc/sold_bloc.dart';
import '../blocs/update_profile_bloc/update_profile_bloc.dart';
import '../cubits/alert/alert_cubit.dart';
import '../cubits/auth/auth_cubit.dart';
import '../cubits/buy/buy_cubit.dart';
import '../cubits/catalog_detail/catalog_detail_cubit.dart';
import '../cubits/collections/get_collections_cubit.dart';
import '../cubits/explore/get_explore_cubit.dart';
import '../cubits/favorites/get_favorites_cubit.dart';
import '../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../cubits/page_from_explore/page_from_explore_cubit.dart';
import '../cubits/paywall/paywall_cubit.dart';
import '../cubits/peer_to_peer_payments/peer_to_peer_payments_cubit.dart';
import '../cubits/profile/get_profile_cubit.dart';
import '../cubits/purchase_history_detail/purchase_history_detail_cubit.dart';
import '../cubits/sold/get_sold_cubit.dart';
import '../cubits/subscription_status/update_subscription_status_cubit.dart';
import '../data/alerts/alerts_service.dart';
import '../data/alerts/i_alerts_service.dart';
import '../data/auth/auth_service.dart';
import '../data/buy_for_sale_listing/buy_for_sale_listing_service.dart';
import '../data/buy_for_sale_listing/i_buy_for_sale_listing_service.dart';
import '../data/category/category_service.dart';
import '../data/category/i_category_service.dart';
import '../data/collection/collection_service.dart';
import '../data/collection/i_collection_service.dart';
import '../data/detail/detail_service.dart';
import '../data/detail/i_detail_service.dart';
import '../data/explore/explore_service.dart';
import '../data/explore/i_explore_service.dart';
import '../data/favorite/favorite_service.dart';
import '../data/favorite/i_favorite_service.dart';
import '../data/favorite_profile/favorite_profile_service.dart';
import '../data/favorite_profile/i_favorite_profile_service.dart';
import '../data/listing/i_listing_service.dart';
import '../data/listing/listing_service.dart';
import '../data/peer_to_peer_payments/i_peer_to_peer_payments_service.dart';
import '../data/peer_to_peer_payments/peer_to_peer_payments_service.dart';
import '../data/sale_history/i_sale_history_service.dart';
import '../data/sale_history/sale_history_service.dart';
import '../data/search_service/i_search_service.dart';
import '../data/secure_storage/storage_repository_service.dart';
import '../data/shared_preferences/shared_preferences_service.dart';
import '../data/sold/i_sold_service.dart';
import '../data/sold/sold_service.dart';
import '../data/update_profile/i_update_profile_service.dart';
import '../data/update_profile/update_profile_service.dart';

final getIt = GetIt.instance;

const baseScope = 'baseScope';
const unauthorizedScope = 'unauthorizedScope';
const authorizedScope = 'authorizedScope';

Future<void> setupAppScope() {
  getIt.registerLazySingleton(() => PreferenceRepositoryService());
  getIt.registerLazySingleton(() => FiltersService(APIService()));
  getIt.registerLazySingleton(() => StorageRepositoryService());
  getIt.registerLazySingleton(() => ContextService());
  getIt.registerLazySingleton<IChatService>(() => ChatService(APIService()));
  getIt.registerLazySingleton<ChatBloc>(()=>ChatBloc(getIt<IChatService>()));
  getIt.registerLazySingleton<IAuthService>(() => AuthService(APIService()));
  getIt.registerLazySingleton<AuthBloc>(() => AuthBloc(getIt<IAuthService>()));
  getIt.registerLazySingleton<UsernameBloc>(
      () => UsernameBloc(getIt<IAuthService>()));

  getIt
      .registerLazySingleton<ISearchService>(() => SearchService(APIService()));
  getIt.registerLazySingleton<ISearchService2>(
      () => search.SearchService(APIService()));
  getIt.registerLazySingleton<ISavedSearchService>(
      () => SavedSearchService(APIService()));

  getIt.registerLazySingleton<SearchBloc>(
      () => SearchBloc(getIt<ISearchService>(), getIt<ISavedSearchService>()));

  getIt.registerLazySingleton<SavedSearchesCubit>(
      () => SavedSearchesCubit(getIt<ISavedSearchService>()));
  getIt.registerLazySingleton<PaginatedSearchCubit>(
      () => PaginatedSearchCubit(getIt<ISearchService2>()));

  getIt.registerLazySingleton<FavoriteProfileCubit>(
      () => FavoriteProfileCubit(getIt<IFavoriteService>()));

  getIt.registerLazySingleton<ExploreCubit>(
      () => ExploreCubit(getIt<IExploreService>()));

  getIt.registerLazySingleton<ListingProfileCubit>(
      () => ListingProfileCubit(getIt<IListingService>()));

  getIt
      .registerLazySingleton<AuthCubit>(() => AuthCubit(getIt<IAuthService>()));

  getIt.registerLazySingleton<CatalogDetailCubit>(
      () => CatalogDetailCubit(getIt<IDetailService>()));

  getIt.registerLazySingleton<CollectionProfileCubit>(
      () => CollectionProfileCubit(getIt<ICollectionService>()));

  getIt.registerLazySingleton<IPeerToPeerPaymentsService>(
      () => PeerToPeerPaymentsService(APIService()));
  getIt.registerLazySingleton<PeerToPeerPaymentsCubit>(
      () => PeerToPeerPaymentsCubit(getIt<IPeerToPeerPaymentsService>()));

  getIt.registerLazySingleton<ProfileCubit>(
      () => ProfileCubit(getIt<IAuthService>()));

  getIt.registerLazySingleton<IExploreService>(
      () => ExploreService(APIService()));

  getIt.registerLazySingleton<BuyCubit>(
      () => BuyCubit(getIt<IBuyForSaleListingService>()));

  getIt.registerLazySingleton<IAlertService>(() => AlertService(APIService()));
  getIt.registerLazySingleton<AlertCubit>(
      () => AlertCubit(getIt<IAlertService>()));

  getIt.registerLazySingleton<ISoldService>(() => SoldService(APIService()));
  getIt.registerLazySingleton<SoldProfileCubit>(
      () => SoldProfileCubit(getIt<ISoldService>()));

  getIt.registerLazySingleton<IUpdateProfileService>(
      () => UpdateProfileService(APIService()));
  getIt.registerLazySingleton<UpdateProfileBloc>(
      () => UpdateProfileBloc(getIt<IUpdateProfileService>()));

  getIt.registerLazySingleton<FavoriteBloc>(() => FavoriteBloc());

  getIt
      .registerLazySingleton<IDetailService>(() => DetailService(APIService()));
  getIt.registerLazySingleton<DetailBloc>(
      () => DetailBloc(getIt<IDetailService>()));

  getIt.registerLazySingleton<ICollectionService>(
      () => CollectionService(APIService()));
  getIt.registerLazySingleton<CollectionBloc>(
      () => CollectionBloc(getIt<ICollectionService>()));

  getIt.registerLazySingleton<PageFromExploreCubit>(
      () => PageFromExploreCubit());

  getIt.registerLazySingleton<ISalesHistoryService>(
      () => SalesHistoryService(APIService()));
  getIt.registerLazySingleton<SalesHistoryBloc>(
      () => SalesHistoryBloc(getIt<ISalesHistoryService>()));

  getIt.registerLazySingleton<IListingService>(
      () => ListingService(APIService()));
  getIt.registerLazySingleton<ListingBloc>(
      () => ListingBloc(getIt<IListingService>()));

  getIt.registerLazySingleton<IFavoriteProfileService>(
      () => FavoriteProfileService(APIService()));
  getIt.registerLazySingleton<ProfileFavoriteBloc>(
      () => ProfileFavoriteBloc(getIt<IFavoriteProfileService>()));

  getIt.registerLazySingleton<IBuyForSaleListingService>(
      () => BuyForSaleListingService(APIService()));
  getIt.registerLazySingleton<BuySaleListingBloc>(
      () => BuySaleListingBloc(getIt<IBuyForSaleListingService>()));

  getIt
      .registerLazySingleton<SharedPreferencesBloc>(() => SharedPreferencesBloc(
            preferenceRepository: getIt<PreferenceRepositoryService>(),
          ));

  getIt.registerLazySingleton<ICategoryService>(
      () => CategoryService(APIService()));
  getIt.registerLazySingleton<CategoryBloc>(
      () => CategoryBloc(getIt<ICategoryService>()));

  getIt.registerLazySingleton<IFavoriteService>(
      () => FavoriteService(APIService()));
  getIt.registerLazySingleton<FavoriteItemBloc>(
      () => FavoriteItemBloc(getIt<IFavoriteService>()));

  getIt.registerLazySingleton<IPurchaseHistoryService>(
      () => PurchaseHistoryService(APIService()));
  getIt.registerLazySingleton(() => PurchaseHistoryCubit(getIt.get()));

  getIt.registerLazySingleton<IPaywallService>(
      () => PaywallService(APIService()));
  getIt.registerLazySingleton(() => PurchaseHistoryDetailCubit(getIt.get()));

  getIt.registerLazySingleton<UpdateSubscriptionStatusCubit>(
      () => UpdateSubscriptionStatusCubit(getIt<IPaywallService>()));

  getIt.registerLazySingleton<PaywallCubit>(() => PaywallCubit());

  getIt.registerLazySingleton<IProfileService>(
      () => ProfileService(APIService()));
  getIt.registerLazySingleton(() => PublicProfileCubit(getIt(), getIt()));

  getIt.registerLazySingleton(() => PublicProfileListingsCubit(getIt()));
  getIt.registerLazySingleton(() => PublicProfileFavoritesCubit(getIt()));

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
