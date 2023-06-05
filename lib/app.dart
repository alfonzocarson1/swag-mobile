import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/blocs/blocs.dart';
import 'package:swagapp/modules/pages/login/landing_page.dart';
import 'package:swagapp/modules/services/push_notifications_service.dart';
import 'generated/l10n.dart';

import 'modules/blocs/auth_bloc/auth_bloc.dart';
import 'modules/blocs/sold_bloc/sold_bloc.dart';
import 'modules/pages/home/home_page.dart';
import 'modules/common/utils/context_service.dart';
import 'modules/common/utils/palette.dart';
import 'modules/common/utils/theme.dart';
import 'modules/di/injector.dart';
import 'modules/pages/splash/splash_page.dart';

class App extends StatefulWidget {

  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with ChannelEventHandler {

  @override
  void initState() {
    
    PushNotificationsService.listenPushNotifications();
    super.initState();
  }

  final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'home_page_tab',
  );

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
        providers: AppBlocs.blocs(context),
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
          builder: (context, child) => Overlay(
            initialEntries: [
              OverlayEntry(builder: (BuildContext context) {

                return MediaQuery(
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
                );
              }), 
            ],
          ),
        ));
  }
}