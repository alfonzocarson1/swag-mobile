
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/pages/add/buy/buy_for_sale.dart';
import 'package:swagapp/modules/pages/add/buy/preview_buy_for_sale.dart';
import 'package:swagapp/modules/pages/add/collection/add_to_wall_collection.dart';
import 'package:swagapp/modules/pages/add/collection/edit_list_for_Sale_page.dart';
import 'package:swagapp/modules/pages/add/collection/list_item_preview_page.dart';
import 'package:swagapp/modules/pages/add/collection/select_item_page.dart';
import 'package:swagapp/modules/pages/chat/chat_page.dart';
import 'package:swagapp/modules/pages/detail/transaction_history_page.dart';
import 'package:swagapp/modules/pages/explore/account_info.dart';
import 'package:swagapp/modules/pages/home/home_page.dart';
import 'package:swagapp/modules/pages/chats/chats_page.dart';
import 'package:swagapp/modules/pages/login/forgot_password_page.dart';
import 'package:swagapp/modules/pages/login/landing_page.dart';
import 'package:swagapp/modules/pages/login/reset_password_page.dart';
import 'package:swagapp/modules/pages/login/sign_in_page.dart';
import 'package:swagapp/modules/pages/media_viewer/media_viewer_page.dart';
import 'package:swagapp/modules/pages/search/filter/filter_category_page.dart';
import 'package:swagapp/modules/pages/search/search_on_tap_page.dart';
import 'package:swagapp/modules/pages/search/search_result/search_result_page.dart';
import 'package:swagapp/modules/pages/settings/account/account_page.dart';
import 'package:swagapp/modules/pages/settings/account/add_shipping_address_page.dart';
import 'package:swagapp/modules/pages/settings/account/peer_to_peer_payments_page.dart';
import 'package:swagapp/modules/pages/settings/account/peer_to_peer_payments_save_widget.dart';
import 'package:swagapp/modules/pages/settings/account/shipping_address_detail_page.dart';
import 'package:swagapp/modules/pages/settings/account/shipping_address_page.dart';
import 'package:swagapp/modules/pages/settings/settings_page.dart';
import 'package:swagapp/modules/pages/splash/splash_page.dart';
import 'package:swagapp/modules/blocs/auth_bloc/auth_bloc.dart';
import 'package:swagapp/modules/common/utils/context_service.dart';
import 'package:swagapp/modules/pages/detail/item_detail_page.dart';
import 'package:swagapp/modules/pages/login/create_account_page.dart';
import 'package:swagapp/modules/pages/add/collection/list_for_Sale_page.dart';
import 'package:swagapp/modules/routes/navigator_parameters/buy_fo_sale_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/buy_preview_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/edit_list_for_sale_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/filter_category_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/item_detail_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/list_for_sale_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/list_item_preview_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/media_view_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/peer_to_peer_payment_save_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/reset_password_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/search_on_tap_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/search_result_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/select_item_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/shipping_address_detail_navigator_parameters.dart';
import 'package:swagapp/modules/routes/navigator_parameters/transaction_history_navigator_parameters.dart';

import 'app_routes.dart';
import 'navigator_parameters/chat_navigator_parameters.dart';

abstract class AppRouter {

  static final rootNavigatorKey = getIt<ContextService>().rootNavigatorKey;

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,    
    initialLocation: AppRoutes.splash,
    routes: <RouteBase>
    [
      GoRoute(
        name: AppRouteNames.homePage,
        path: AppRoutes.homePage,
        builder: (BuildContext context, GoRouterState state) {

          return BlocListener<AuthBloc, AuthState>(
            listener: (BuildContext context, AuthState state) {

              if (state is Unauthenticated) {
                _navigateAfterBuild(AppRoutes.landingPage, context);
              } else if(state is Authenticated) {
                _navigateAfterBuild(AppRoutes.homePage, context);
              } else if(state is AuthenticationError) {
                _navigateAfterBuild(AppRoutes.landingPage, context);
              }        
            },
            child: const HomePage(),
          );    
        }
      ),

      GoRoute(
        name: AppRouteNames.splash,
        path: AppRoutes.splash,
        builder: (BuildContext context, GoRouterState state) {

          return BlocListener<AuthBloc, AuthState>(
            listener: (BuildContext context, AuthState state) {

              if (state is Unauthenticated) {
                _navigateAfterBuild(AppRoutes.landingPage, context);
              } else if(state is Authenticated) {
                _navigateAfterBuild(AppRoutes.homePage, context);
              } else if(state is AuthenticationError) {
                _navigateAfterBuild(AppRoutes.landingPage, context);
              } 
            },
            child: const SplashPage(),
          );
        },
      ),

      GoRoute(
        name: AppRouteNames.landingPage,
        path: AppRoutes.landingPage,
        builder: (BuildContext context, GoRouterState state) {

          return BlocConsumer<AuthBloc, AuthState>(
            listener: (BuildContext context, AuthState state) {},
            builder: (BuildContext context, AuthState state) {

              if (state is Unauthenticated) {
                return const LandingPage();
              } else if(state is Authenticated) {
                return const HomePage();
              } else if(state is AuthenticationError) {
                return const LandingPage();
              } else {
                return const SplashPage();
              }                          
            },
          );
        },
      ),

      GoRoute(
        path: AppRoutes.explore,
        name: AppRouteNames.explore,
        builder: (BuildContext context, GoRouterState state) {

          return BlocConsumer<AuthBloc, AuthState>(
            listener: (BuildContext context, AuthState state) {},
            builder: (BuildContext context, AuthState state) {

              if (state is Unauthenticated) {
                return const LandingPage();
              } else if(state is Authenticated) {
                return const HomePage();
              } else if(state is AuthenticationError) {
                return const LandingPage();
              } else {
                return const SplashPage();
              }                          
            },
          );
        },
      ),

      GoRoute(
        path: AppRoutes.chats,
        name: AppRouteNames.chats,
        builder: (BuildContext context, GoRouterState state)=> const ChatsPage(),
      ),

      GoRoute(
        path: AppRoutes.chat,
        name: AppRouteNames.chat,
        builder: (BuildContext context, GoRouterState state) {

          ChatNavigatorParameters parameters = state.extra as ChatNavigatorParameters;
          return ChatPage(chatData: parameters.chatdata);
        },
      ),

      GoRoute(
        path: AppRoutes.itemDetail,
        name: AppRouteNames.itemDetail,
        builder: (BuildContext context, GoRouterState state) {

          ItemDetailNavigatorParameters parameters = state.extra as ItemDetailNavigatorParameters;

          return ItemDetailPage(
            addFavorite: parameters.addFavorite, 
            catalogItemId: parameters.catalogItemId,
            tab: parameters.tab,
          );
        },
      ),

      GoRoute(
        path: AppRoutes.createAccount,
        name: AppRouteNames.createAccount,
        builder: (BuildContext context, GoRouterState state)=> const CreateAccountPage(),
      ),

      GoRoute(
        path: AppRoutes.listForSale,
        name: AppRouteNames.listForSale,
        builder: (BuildContext context, GoRouterState state) {

          ListForSaleNavigatorParameters parameters = state.extra as ListForSaleNavigatorParameters;

          return ListForSalePage(
            collectionData: parameters.collectionData, 
            catalogItemName: parameters.catalogItemName, 
            salesHistoryNavigation: parameters.salesHistoryNavigation,
          );
        },
      ),

      GoRoute(
        path: AppRoutes.buyPreview,
        name: AppRouteNames.buyPreview,
        builder: (BuildContext context, GoRouterState state) {

          BuyPreviewNavigatorParameters parameters = state.extra as BuyPreviewNavigatorParameters;
          return BuyPreviewPage(productItemId: parameters.productItemId);
        },
      ),

      GoRoute(
        path: AppRoutes.transactionHistory,
        name: AppRouteNames.transactionHistory,
        builder: (BuildContext context, GoRouterState state) {

          TransactionHistoryNavigatorParameters parameters = state.extra as TransactionHistoryNavigatorParameters;

          return TransactionHistory(
            addFavorite: parameters.addFavorite, 
            favorite: parameters.favorite, 
            itemId: parameters.itemId, 
            lastSale: parameters.lastSale, 
            saleHIstoryList: parameters.saleHIstoryList, 
            urlImage: parameters.urlImage,
            available: parameters.available,
            catalogItemName: parameters.catalogItemName,
            sale: parameters.sale,
          );
        },
      ),

      GoRoute(
        path: AppRoutes.editListForSale,
        name: AppRouteNames.editListForSale,
        builder: (BuildContext context, GoRouterState state) {

          EditListForSaleNavigatorParameters parameters = state.extra as EditListForSaleNavigatorParameters;

          return EditListForSalePage(
            catalogItemName: parameters.catalogItemName, 
            salesHistoryListModel: parameters.salesHistoryListModel,
            collectionData: parameters.collectionData,
            imageUrls: parameters.imageUrls,
            productItemId: parameters.productItemId,
            paymentAccepted: parameters.paymentAccepted,
          );
        },
      ),

      GoRoute(
        path: AppRoutes.selectItem,
        name: AppRouteNames.selectItem,
        builder: (BuildContext context, GoRouterState state) {

          SelectItemNavigatorParameters parameters = state.extra as SelectItemNavigatorParameters;
          return SelectItemPage(page: parameters.page);
        },
      ),

      GoRoute(
        path: AppRoutes.listItemPreview,
        name: AppRouteNames.listItemPreview,
        builder: (BuildContext context, GoRouterState state) {

          ListItemPreviewNavigatorParameters parameters = state.extra as ListItemPreviewNavigatorParameters;

          return ListItemPreviewPage(
            catalogItemId: parameters.catalogItemId, 
            imgList: parameters.imgList, 
            isUpdate: parameters.isUpdate, 
            itemCondition: parameters.itemCondition, 
            itemDescription: parameters.itemDescription, 
            itemName: parameters.itemName, 
            itemPrice: parameters.itemPrice, 
            onClose: parameters.onClose, 
            paymentAccepted: parameters.paymentAccepted, 
            profileCollectionItemId: parameters.profileCollectionItemId,
          );
        },
      ),

      GoRoute(
        path: AppRoutes.searchOnTap,
        name: AppRouteNames.searchOnTap,
        builder: (BuildContext context, GoRouterState state) {

          SearchOnTapNavigatorParameters parameters = state.extra as SearchOnTapNavigatorParameters;
          return SearchOnTapPage(showTabBar: parameters.showTabBar);
        },
      ),

      GoRoute(
        path: AppRoutes.peerToPeerPayments,
        name: AppRouteNames.peerToPeerPayments,
        builder: (BuildContext context, GoRouterState state)=> const PeerToPeerPaymentsPage(),
      ),   

      GoRoute(
        path: AppRoutes.mediaViewer,
        name: AppRouteNames.mediaViewer,
        builder: (BuildContext context, GoRouterState state) {

          MediaViewerNavigatorParameters parameters = state.extra as MediaViewerNavigatorParameters;
          return MediaViewerPage(url: parameters.url);
        },
      ),   

      GoRoute(
        path: AppRoutes.buyFoSale,
        name: AppRouteNames.buyFoSale,
        builder: (BuildContext context, GoRouterState state) {

          BuyForSaleNavigatorParameters parameters = state.extra as BuyForSaleNavigatorParameters;

          return BuyForSale(
            addFavorite: parameters.addFavorite, 
            catalogItemId: parameters.catalogItemId, 
            catalogItemName: parameters.catalogItemName, 
            catalogItemPrice: parameters.catalogItemPrice, 
            favorite: parameters.favorite, 
            sale: parameters.sale, 
            saleHistoryList: parameters.saleHistoryList, 
            urlImage: parameters.urlImage,
            available: parameters.available,
          );
        },
      ),

      GoRoute(
        path: AppRoutes.accountInfo,
        name: AppRouteNames.accountInfo,
        builder: (BuildContext context, GoRouterState state)=> const AccountInfoPage(),
      ),  

      GoRoute(
        path: AppRoutes.searchResult,
        name: AppRouteNames.searchResult,
        builder: (BuildContext context, GoRouterState state) {

          SearchResultNavigatorParameters parameters = state.extra as SearchResultNavigatorParameters;

          return SearchResultPage(
            searchParam: parameters.searchParam,
            searchWithFilters: parameters.searchWithFilters,
            staffPicksFlag: parameters.staffPicksFlag,
            unicornFlag: parameters.unicornFlag,
          );
        },
      ),

      GoRoute(
        path: AppRoutes.signIn,
        name: AppRouteNames.signIn,
        builder: (BuildContext context, GoRouterState state)=> const SignInPage(),
      ),  

      GoRoute(
        path: AppRoutes.resetPassword, 
        name: AppRouteNames.resetPassword,
        builder: (BuildContext context, GoRouterState state) {

          ResetPasswordNavigatorParameters parameters = state.extra as ResetPasswordNavigatorParameters;

          return ResetPasswordPage(email: parameters.email);
        },
      ),

      GoRoute(
        path: AppRoutes.forgotPassword,
        name: AppRouteNames.forgotPassword,
        builder: (BuildContext context, GoRouterState state)=> const ForgotPasswordPage(),
      ),  

      GoRoute(
        path: AppRoutes.addToWallCollection,
        name: AppRouteNames.addToWallCollection,
        builder: (BuildContext context, GoRouterState state)=> const AddToWallCollection(),
      ),  

      GoRoute(
        path: AppRoutes.settings,
        name: AppRouteNames.settings,
        builder: (BuildContext context, GoRouterState state)=> const SettingsPage(),
      ),  

      GoRoute(
        path: AppRoutes.filterCategory,
        name: AppRouteNames.filterCategory,
        builder: (BuildContext context, GoRouterState state) {

          FilterCategoryNavigatorParameters parameters = state.extra as FilterCategoryNavigatorParameters;

          return FilterCategoryPage(
            filterType: parameters.filterType, 
            categoryId: parameters.categoryId,
            isMultipleSelection: parameters.isMultipleSelection,
            searchParam: parameters.searchParam,
            tab: parameters.tab,
            updateFilters: parameters.updateFilters,
          );
        },
      ),
      
      GoRoute(
        path: AppRoutes.account,
        name: AppRouteNames.account,
        builder: (BuildContext context, GoRouterState state)=> const AccountPage(),
      ),  

      GoRoute(
        path: AppRoutes.shippingAddress,
        name: AppRouteNames.shippingAddress,
        builder: (BuildContext context, GoRouterState state)=> const ShippingAddressPage(),
      ),  
      
      GoRoute(
        path: AppRoutes.peerToPeerPaymentsSave,
        name: AppRouteNames.peerToPeerPaymentsSave,
        builder: (BuildContext context, GoRouterState state) {

          PeerToPeerPaymentsSaveNavigatorParameters parameters = state.extra as PeerToPeerPaymentsSaveNavigatorParameters;

          return PeerToPeerPaymentsSaveWidget(
            cashTag: parameters.cashTag,
            payPal: parameters.payPal,
            venmo: parameters.venmo,
          );
        },
      ),

      GoRoute(
        path: AppRoutes.addShippingAddress,
        name: AppRouteNames.addShippingAddress,
        builder: (BuildContext context, GoRouterState state)=>  AddShippingAddressPage(),
      ),  
    ],
  );

  static void _navigateAfterBuild(String routePath, BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      GoRouter.of(context).go(routePath);
    });
  }

  static GoRouter get router => _router;
}