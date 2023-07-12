import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'modules/blocs/blocs.dart';
import 'modules/common/utils/palette.dart';
import 'modules/common/utils/theme.dart';

import 'modules/routes/app_router.dart';

class App extends StatefulWidget {

  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

    @override
  void initState() {
    super.initState();

    initDeepLinks();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();

    super.dispose();
  }

   Future<void> initDeepLinks() async {
    _appLinks = AppLinks();

    // Check initial link if app was in cold state (terminated)
    final appLink = await _appLinks.getInitialAppLink();
    if (appLink != null) {
      print('getInitialAppLink: $appLink');
      openAppLink(appLink);
    }

    // Handle link when app is in warm state (front or background)
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      print('onAppLink: $uri');
      openAppLink(uri);
    });
  }

    void openAppLink(Uri uri) {
      var uriFragment = uri;
      print(uriFragment);
      //_homeNavigatorKey.currentState?.pushNamed("");
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: AppBlocs.blocs(context),
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
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
          
        ));
  }
}
