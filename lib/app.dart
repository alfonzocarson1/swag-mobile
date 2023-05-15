import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:swagapp/modules/blocs/auth_bloc/username_bloc.dart';
import 'package:swagapp/modules/blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import 'package:swagapp/modules/cubits/paginated_search/paginated_search_cubit.dart';
import 'package:swagapp/modules/cubits/saved_search/saved_searches_cubit.dart';
import 'package:swagapp/modules/pages/login/landing_page.dart';
import 'package:swagapp/modules/blocs/search_bloc.dart/search_bloc.dart';
import 'generated/l10n.dart';

import 'modules/blocs/auth_bloc/auth_bloc.dart';
import 'modules/blocs/buy_sale_listing_bloc/buy_sale_listing_bloc.dart';
import 'modules/blocs/category_bloc/category_bloc.dart';
import 'modules/blocs/collection_bloc/collection_bloc.dart';
import 'modules/blocs/detail_bloc/detail_bloc.dart';
import 'modules/blocs/favorite_bloc/favorite_bloc.dart';
import 'modules/blocs/favorite_bloc/favorite_item_bloc.dart';
import 'modules/blocs/listing_bloc/listing_bloc.dart';
import 'modules/blocs/profile_favorite_bloc/profile_favorite_bloc.dart';
import 'modules/blocs/sale_history/sale_history_bloc.dart';
import 'modules/blocs/sold_bloc/sold_bloc.dart';
import 'modules/blocs/update_profile_bloc/update_profile_bloc.dart';
import 'modules/cubits/auth/auth_cubit.dart';
import 'modules/cubits/catalog_detail/catalog_detail_cubit.dart';
import 'modules/cubits/collections/get_collections_cubit.dart';
import 'modules/cubits/explore/get_explore_cubit.dart';
import 'modules/cubits/favorites/get_favorites_cubit.dart';
import 'modules/cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import 'modules/cubits/page_from_explore/page_from_explore_cubit.dart';
import 'modules/cubits/profile/get_profile_cubit.dart';
import 'modules/pages/home/home_page.dart';
import 'modules/common/utils/context_service.dart';
import 'modules/common/utils/palette.dart';
import 'modules/common/utils/theme.dart';
import 'modules/di/injector.dart';
import 'modules/pages/splash/splash_page.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'home_page_tab',
  );

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
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

          BlocProvider<ProfileCubit>(
              create: (context) => getIt<ProfileCubit>()),

          BlocProvider<ExploreCubit>(
              create: (context) => getIt<ExploreCubit>()),

          BlocProvider<PageFromExploreCubit>(
              create: (context) => getIt<PageFromExploreCubit>()),

          BlocProvider<CategoryBloc>(
              create: (context) => getIt<CategoryBloc>()),

          BlocProvider<SalesHistoryBloc>(
              create: (context) => getIt<SalesHistoryBloc>()),

          BlocProvider<DetailBloc>(create: (context) => getIt<DetailBloc>()),
          BlocProvider<FavoriteBloc>(
              create: (context) => getIt<FavoriteBloc>()),
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
        ],
        child: MaterialApp(
          navigatorKey: getIt<ContextService>().rootNavigatorKey,
          debugShowCheckedModeBanner: false,
          theme: appTheme(LightPalette()),
          title: 'Swag Golf',
          supportedLocales: const [
            Locale('en', ''),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            S.delegate
          ],
          home: BlocConsumer<AuthBloc, AuthState>(
            builder: (context, state) => state.maybeMap(
                initial: (_) => const SplashPage(),
                authenticated: (_) => const HomePage(),
                walkthrough: (_) => const LandingPage(),
                onboarding: (_) => const LandingPage(),
                orElse: () => const SplashPage(),
                error: (_) => const LandingPage(),
                unauthenticated: (_) {
                  return const LandingPage();
                }),
            listener: (context, state) => state.maybeMap(
                // orElse: () => null,
                orElse: () async {
              await setupUnauthorizedScope(
                  getIt<ContextService>().rootNavigatorKey);
              return null;
            }, authenticated: (_) async {
              await setupAuthorizedScope(
                  getIt<ContextService>().rootNavigatorKey, _homeNavigatorKey);
              return null;
            }),
          ),
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, authState) => authState.maybeMap(
                  orElse: () => child!,
                  unauthenticated: (_) => MultiBlocProvider(
                        providers: [
                          BlocProvider<SoldBloc>(
                              create: (context) => getIt<SoldBloc>()),
                        ],
                        child: child!,
                      ),
                  authenticated: (_) => RepositoryProvider.value(
                        value: _homeNavigatorKey,
                        child: MultiBlocProvider(
                          providers: [
                            BlocProvider<SoldBloc>(
                                create: (context) => getIt<SoldBloc>()),
                          ],
                          child: child!,
                        ),
                      )),
            ),
          ),
        ));
  }
}
