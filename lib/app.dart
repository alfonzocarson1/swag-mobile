


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:swagapp/modules/common/utils/stateful_wrapper.dart';

import 'package:swagapp/modules/pages/login/landing_page.dart';
import 'package:swagapp/modules/pages/onboarding/onboarding_page.dart';
import 'package:swagapp/modules/services/deep_link_manager.dart';
import 'generated/l10n.dart';

import 'modules/blocs/auth_bloc/auth_bloc.dart';
import 'modules/blocs/blocs.dart';
import 'modules/blocs/sold_bloc/sold_bloc.dart';
import 'modules/common/ui/dynamic_toast_messages.dart';
import 'modules/pages/home/home_page.dart';
import 'modules/common/utils/context_service.dart';
import 'modules/common/utils/palette.dart';
import 'modules/common/utils/theme.dart';
import 'modules/di/injector.dart';
import 'modules/pages/splash/splash_page.dart';
import 'modules/services/internet_connectivity_service.dart';
import 'modules/services/route_observer.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'home_page_tab',
);

class _AppState extends State<App> {


  @override
  void initState() {
    super.initState();
    getIt<DeepLinkHandler>().init();
    print("app init called");
  }

  @override
  void dispose() {
    getIt<DeepLinkHandler>().dispose();

    //  super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: AppBlocs.blocs(context),
        child: MaterialApp(
          navigatorObservers: [getIt<RouteTracker>()],
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
          home: const AuthRouterPage(),
          builder: (context, child) => Overlay(
            initialEntries: [

              ///Timeout Exception
              // OverlayEntry(builder: (BuildContext context) {
              //
              //   return BlocListener<VPNConnectivityBloc,
              //       VPNConnectivityState>(
              //     listener: (context, state) {
              //
              //       print("app listener  VPN connectivity ");
              //
              //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //           duration: const Duration(days: 365),
              //           behavior: SnackBarBehavior.floating,
              //           margin: EdgeInsets.only(
              //             bottom: MediaQuery.of(context).size.height / 1.3,
              //           ),
              //           backgroundColor: Colors.transparent,
              //           content: const ToastMessage(
              //             message: 'Active internet connection required.',
              //           ),
              //           dismissDirection: DismissDirection.none));
              //
              //       if (state is CategoryState && state.runtimeType.toString() == "_HostTimeOutState") {
              //
              //
              //       }
              //     },
              //     child: Container(),
              //   );
              // }),

              ///Internet connectivity Service
              OverlayEntry(builder: (BuildContext context) {
                // return MediaQuery(
                //   data: MediaQuery.of(context).copyWith(boldText: false),
                //   child:
                // );
                return BlocListener<InternetConnectivityBloc,
                    InternetConnectivityState>(
                  listener: (context, state) {

                    //pull request issue resolved
                    print("app listener  internet connectivity ");
                    if (state == InternetConnectivityState.offline)  {
                      print("offline internet snack bar");
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(

                          duration: const Duration(days: 365),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height / 1.3,
                          ),
                          backgroundColor: Colors.transparent,
                          content: const ToastMessage(
                            message: 'Active internet connection required.',
                          ),
                          dismissDirection: DismissDirection.none));

                    }else{
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    }
                  },
                  child: Container(),
                );
              }),
              OverlayEntry(builder: (BuildContext context) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(boldText: false),
                  child: BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () async {
                          await setupUnauthorizedScope(
                            getIt<ContextService>().rootNavigatorKey,
                          );
                          return null;
                        },
                        authenticated: (_) async {
                          await setupAuthorizedScope(
                            getIt<ContextService>().rootNavigatorKey,
                            _homeNavigatorKey,
                          );
                          return null;
                        },
                      );
                    },
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
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ));
  }
}

class AuthRouterPage extends StatelessWidget {
  const AuthRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (context) {
        context.read<AuthBloc>().add(const AuthEvent.init());
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) => state.maybeMap(
            initial: (_) => const SplashPage(),
            authenticated: (authenticated) => const HomePage(),
            walkthrough: (_) => const OnboardingPage(),
            onboarding: (_) => const OnboardingPage(),
            deleted: (_) => const LandingPage(),
            orElse: () => const SplashPage(),
            error: (_) => const LandingPage(),
            unauthenticated: (_) {
              return const LandingPage();
            }),
      ),
    );
  }
}


