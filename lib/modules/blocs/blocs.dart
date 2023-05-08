
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/auth_bloc/auth_bloc.dart';
import 'package:swagapp/modules/blocs/auth_bloc/username_bloc.dart';
import 'package:swagapp/modules/blocs/category_bloc/category_bloc.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/blocs/explore_bloc/explore_bloc.dart';
import 'package:swagapp/modules/blocs/profile_favorite_bloc/profile_favorite_bloc.dart';
import 'package:swagapp/modules/blocs/update_profile_bloc/update_profile_bloc.dart';
import 'package:swagapp/modules/cubits/collections/get_collections_cubit.dart';
import 'package:swagapp/modules/cubits/favorites/get_favorites_cubit.dart';
import 'package:swagapp/modules/cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import 'package:swagapp/modules/cubits/paginated_search/paginated_search_cubit.dart';
import 'package:swagapp/modules/cubits/saved_search/saved_searches_cubit.dart';
import 'package:swagapp/modules/di/injector.dart';

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

  static List<BlocProvider> blocs(BuildContext context)=>  
  [
    BlocProvider<AuthBloc>(create: (BuildContext context) => getIt<AuthBloc>()),
    BlocProvider<UsernameBloc>(create: (BuildContext context) => getIt<UsernameBloc>()),
    BlocProvider<SearchBloc>(create: (BuildContext context) => getIt<SearchBloc>()),
    BlocProvider<SavedSearchesCubit>(create: (BuildContext context) => getIt<SavedSearchesCubit>()),
    BlocProvider<PaginatedSearchCubit>(create: (BuildContext context) => getIt<PaginatedSearchCubit>()),
    BlocProvider<FavoriteProfileCubit>(create: (BuildContext context) => getIt<FavoriteProfileCubit>()),
    BlocProvider<CollectionProfileCubit>(create: (BuildContext context) => getIt<CollectionProfileCubit>()),
    BlocProvider<ListingProfileCubit>(create: (BuildContext context) => getIt<ListingProfileCubit>()),
    BlocProvider<CategoryBloc>(create: (BuildContext context) => getIt<CategoryBloc>()),
    BlocProvider<ExploreBloc>(create: (BuildContext context) => getIt<ExploreBloc>()),
    BlocProvider<SalesHistoryBloc>(create: (BuildContext context) => getIt<SalesHistoryBloc>()),
    BlocProvider<DetailBloc>(create: (BuildContext context) => getIt<DetailBloc>()),
    BlocProvider<FavoriteBloc>(create: (BuildContext context) => getIt<FavoriteBloc>()),
    BlocProvider<CollectionBloc>(create: (BuildContext context) => getIt<CollectionBloc>()),
    BlocProvider<ListingBloc>(create: (BuildContext context) => getIt<ListingBloc>()),
    BlocProvider<ProfileFavoriteBloc>(create: (BuildContext context) => getIt<ProfileFavoriteBloc>()),
    BlocProvider<UpdateProfileBloc>(create: (BuildContext context) => getIt<UpdateProfileBloc>()),
    BlocProvider<SoldBloc>(create: (BuildContext context) => getIt<SoldBloc>()),
    BlocProvider<FavoriteItemBloc>(create: (BuildContext context) => getIt<FavoriteItemBloc>()),
    BlocProvider<BuySaleListingBloc>(create: (BuildContext context) => getIt<BuySaleListingBloc>()),
    BlocProvider<SharedPreferencesBloc>(create: (BuildContext context) => getIt<SharedPreferencesBloc>()),
    BlocProvider<ChatBloc>(create: (BuildContext context)=> ChatBloc()),
  ];
}

