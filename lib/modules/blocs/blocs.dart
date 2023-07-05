import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/auth_bloc/auth_bloc.dart';
import 'package:swagapp/modules/blocs/auth_bloc/username_bloc.dart';
import 'package:swagapp/modules/blocs/category_bloc/category_bloc.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
// import 'package:swagapp/modules/blocs/explore_bloc/explore_bloc.dart';
import 'package:swagapp/modules/blocs/profile_favorite_bloc/profile_favorite_bloc.dart';
import 'package:swagapp/modules/blocs/update_profile_bloc/update_profile_bloc.dart';
import 'package:swagapp/modules/cubits/auth/auth_cubit.dart';
import 'package:swagapp/modules/cubits/buy/buy_cubit.dart';
import 'package:swagapp/modules/cubits/catalog_detail/catalog_detail_cubit.dart';
import 'package:swagapp/modules/cubits/collections/get_collections_cubit.dart';
import 'package:swagapp/modules/cubits/explore/get_explore_cubit.dart';
import 'package:swagapp/modules/cubits/favorites/get_favorites_cubit.dart';
import 'package:swagapp/modules/cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import 'package:swagapp/modules/cubits/page_from_explore/page_from_explore_cubit.dart';
import 'package:swagapp/modules/cubits/paginated_search/paginated_search_cubit.dart';
import 'package:swagapp/modules/cubits/peer_to_peer_payments/peer_to_peer_payments_cubit.dart';
import 'package:swagapp/modules/cubits/profile/get_profile_cubit.dart';
import 'package:swagapp/modules/cubits/purchase_history/purchase_history_cubit.dart';
import 'package:swagapp/modules/cubits/saved_search/saved_searches_cubit.dart';
import 'package:swagapp/modules/data/chat/chat_service.dart';
import 'package:swagapp/modules/di/injector.dart';

import '../cubits/alert/alert_cubit.dart';
import 'buy_sale_listing_bloc/buy_sale_listing_bloc.dart';
import 'collection_bloc/collection_bloc.dart';
import 'detail_bloc/detail_bloc.dart';
import 'favorite_bloc/favorite_bloc.dart';
import 'favorite_bloc/favorite_item_bloc.dart';
import 'listing_bloc/listing_bloc.dart';
import 'sale_history/sale_history_bloc.dart';
import 'search_bloc.dart/search_bloc.dart';
import 'shared_preferences_bloc/shared_preferences_bloc.dart';
import 'sold_bloc/sold_bloc.dart';

abstract class AppBlocs {
  static List<BlocProvider> blocs(BuildContext context) => [
        BlocProvider<ChatBloc>(
            create: (BuildContext context) => ChatBloc(getIt<ChatService>())),
        BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
        BlocProvider<UsernameBloc>(create: (_) => getIt<UsernameBloc>()),
        // BlocProvider<SignUpBloc>(create: (_) => getIt<SignUpBloc>()),
        BlocProvider<SearchBloc>(create: (context) => getIt<SearchBloc>()),
        BlocProvider<SavedSearchesCubit>(
            create: (context) => getIt<SavedSearchesCubit>()),
        BlocProvider<PaginatedSearchCubit>(
            create: (context) => getIt<PaginatedSearchCubit>()),
        BlocProvider<FavoriteProfileCubit>(
            create: (context) => getIt<FavoriteProfileCubit>()),
        BlocProvider<CollectionProfileCubit>(
            create: (context) => getIt<CollectionProfileCubit>()),
        BlocProvider<ListingProfileCubit>(
            create: (context) => getIt<ListingProfileCubit>()),
        BlocProvider<AuthCubit>(create: (context) => getIt<AuthCubit>()),
        BlocProvider<CatalogDetailCubit>(
            create: (context) => getIt<CatalogDetailCubit>()),
        BlocProvider<PeerToPeerPaymentsCubit>(
            create: (context) => getIt<PeerToPeerPaymentsCubit>()),
        BlocProvider<ProfileCubit>(create: (context) => getIt<ProfileCubit>()),
        BlocProvider<ExploreCubit>(create: (context) => getIt<ExploreCubit>()),
        BlocProvider<PageFromExploreCubit>(
            create: (context) => getIt<PageFromExploreCubit>()),
        BlocProvider<BuyCubit>(create: (context) => getIt<BuyCubit>()),
        BlocProvider<CategoryBloc>(create: (context) => getIt<CategoryBloc>()),
        BlocProvider<SalesHistoryBloc>(
            create: (context) => getIt<SalesHistoryBloc>()),
        BlocProvider<DetailBloc>(create: (context) => getIt<DetailBloc>()),
        BlocProvider<FavoriteBloc>(create: (context) => getIt<FavoriteBloc>()),
        BlocProvider<CollectionBloc>(
            create: (context) => getIt<CollectionBloc>()),
        BlocProvider<ListingBloc>(create: (context) => getIt<ListingBloc>()),
        BlocProvider<ProfileFavoriteBloc>(
            create: (context) => getIt<ProfileFavoriteBloc>()),
        BlocProvider<UpdateProfileBloc>(
            create: (context) => getIt<UpdateProfileBloc>()),
        BlocProvider<SoldBloc>(create: (context) => getIt<SoldBloc>()),
        BlocProvider<FavoriteItemBloc>(
            create: (context) => getIt<FavoriteItemBloc>()),
        BlocProvider<BuySaleListingBloc>(
            create: (context) => getIt<BuySaleListingBloc>()),
        BlocProvider<SharedPreferencesBloc>(
            create: (_) => getIt<SharedPreferencesBloc>()),
        BlocProvider<PurchaseHistoryCubit>(
            create: (_) => getIt<PurchaseHistoryCubit>()),
        BlocProvider<AlertCubit>(create: (context) => getIt<AlertCubit>()),
      ];
}
