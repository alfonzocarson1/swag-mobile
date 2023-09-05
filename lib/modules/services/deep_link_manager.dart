import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';

import '../common/utils/context_service.dart';
import '../data/shared_preferences/shared_preferences_service.dart';
import '../di/injector.dart';
import '../pages/add/buy/preview_buy_for_sale.dart';
import '../pages/add/buy/preview_listing_as_guest.dart';

class DeepLinkHandler {
  final AppLinks _appLinks = AppLinks();
  StreamSubscription<Uri>? _linkSubscription;
  


void init() async {
    final appLink = await _appLinks.getInitialAppLink();
    if (appLink != null) {
        print('getInitialAppLink: $appLink');
        openAppLink(appLink);
    }
    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
        print('onAppLink: $uri');
        openAppLink(uri);
    });
}

  void dispose() {
    _linkSubscription?.cancel();
  }


  void openAppLink(Uri uri) {
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    var uriFragment = uri;
    String productId = getProductNumber(uriFragment.toString());

    if (isLogged) {
                              getIt<ContextService>().rootNavigatorKey.currentState?.push(
                                  BuyPreviewPage.route(
                                      productItemId:
                                          productId,
                                      ));
                            } else {
                             getIt<ContextService>().rootNavigatorKey.currentState?.push(
                                  PreviewListingAsGuest.route(
                                      productItemId:
                                          productId,
                                      ));
                            }
  }

  getProductNumber(String url){
final RegExp regex = RegExp(r'product/([a-zA-Z0-9-]+)');
  
  final Match? match = regex.firstMatch(url);
  
  if (match != null && match.groupCount >= 1) {
    final String productId = match.group(1)!;
    print(productId); 
    return productId;   
  } else {
    print('Number not found!');
  }
  }
}
