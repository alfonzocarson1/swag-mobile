import 'package:swagapp/modules/api/api.dart';
import 'package:swagapp/modules/models/paywall_products/paywall_products.dart';

class AppFlavors {
  AppFlavors._();
  static const String prod = 'prod';
  static const String dev = 'dev';
  static const String stg = 'stg';
  static const String uat = 'uat';
}

extension on String {
  T whenFlavor<T>({
    required T Function() dev,
    required T Function() uat,
    required T Function() stg,
    required T Function() prod,
  }) {
    switch (this) {
      case AppFlavors.dev:
        return dev();
      case AppFlavors.stg:
        return stg();
      case AppFlavors.uat:
        return uat();
      case AppFlavors.prod:
        return prod();
      default:
        throw "$this is not recognized as a flavor";
    }
  }

  T whenFlavorOrElse<T>({
    T Function()? dev,
    T Function()? uat,
    T Function()? stg,
    T Function()? prod,
    required T Function() orElse,
  }) {
    switch (this) {
      case AppFlavors.dev:
        return (dev ?? orElse)();
      case AppFlavors.stg:
        return (stg ?? orElse)();
      case AppFlavors.uat:
        return (uat ?? orElse)();
      case AppFlavors.prod:
        return (prod ?? orElse)();
      default:
        return orElse();
    }
  }
}

class AppConfig {
  final String apiBaseUrl;
  final String sendBirdAppId;
  final ApiHostScheme apiHostScheme;
  final String stripeKey;
  final PaywallSubscriptionProducts paywallProducts;
  final PaywallSubscriptionProducts paywallAndroidProducts;

  AppConfig._({
    required this.apiBaseUrl,
    required this.apiHostScheme,
    required this.sendBirdAppId,
    required this.stripeKey,
    required this.paywallProducts,
    required this.paywallAndroidProducts
  });

  static Future<AppConfig> init(String appFlavor) async {
    const testStripeKey =
        "pk_test_51NG1gBKROefVddLbuxTuy6os1HXtQ2ebTozLzLnrnYphLErEzbol93Z6dGZhXRwWrQe1GGlNO54D9uq3aDrs36EG0048nf2QGb";
    const prodStripeKey =
        "pk_live_51NG1gBKROefVddLbhNRswa3pvKjuiEKezodTqsXEp638os1aDWkey8ZScc4JJtmWHRp7uRAwrXx6s1dGLLzcTNfG006c4xjJSm";
    return AppConfig._(
      apiBaseUrl: appFlavor.whenFlavor(
        dev: () => "orchestration.dev.swag.kuldisak.net:8080",
        stg: () => "dev.core-api.app.net",
        uat: () => "api-uat.kuldisak.net",
        prod: () => "api.kuldisak.net",
      ),
      apiHostScheme: appFlavor.whenFlavorOrElse(
        uat: () => ApiHostScheme.https,
        prod: () => ApiHostScheme.https,
        orElse: () => ApiHostScheme.http,
      ),
      stripeKey: appFlavor.whenFlavor(
        dev: () => testStripeKey,
        uat: () => testStripeKey,
        stg: () => prodStripeKey,
        prod: () => prodStripeKey,
      ),
      sendBirdAppId: appFlavor.whenFlavorOrElse(
        uat: () => "29A3A5B7-E41B-49F3-AB81-5EEEC9678CC2",
        prod: () => "4C11EAB0-646D-40A0-8EC5-7C25DF62A02A",
        orElse: () => "3A0E70A8-4861-44C2-ABC0-B7E13C776BEF",
      ),
      paywallProducts: appFlavor.whenFlavorOrElse(
        dev: ()=> const PaywallSubscriptionProducts(annualSubscription: 'TEST_Swag_App_Premium_Annual', monthlySubscription: 'TEST_Swag_App_Premium_Monthly'),
        uat:()=>const PaywallSubscriptionProducts(annualSubscription: 'UAT_Swag_App_Premium_Annual', monthlySubscription: 'UAT_Swag_App_Premium_Monthly'),
        prod:()=>const PaywallSubscriptionProducts(annualSubscription: "Swag_App_Premium_Annual", monthlySubscription: "Swag_App_Premium_Monthly") ,
        orElse: ()=>const PaywallSubscriptionProducts(annualSubscription: "annualSubscription", monthlySubscription: "monthlySubscription")
        ), 
      paywallAndroidProducts: appFlavor.whenFlavorOrElse(
        dev: ()=> const PaywallSubscriptionProducts(annualSubscription: 'swag_app_premium_annual', monthlySubscription: 'swag_app_premium_monthly'),
        uat:()=>const PaywallSubscriptionProducts(annualSubscription: 'swag_app_premium_annual', monthlySubscription: 'swag_app_premium_monthly'),
        prod:()=>const PaywallSubscriptionProducts(annualSubscription: "swag_app_premium_annual", monthlySubscription: 'swag_app_premium_monthly') ,
        orElse: ()=>const PaywallSubscriptionProducts(annualSubscription: "swag_app_premium_annual", monthlySubscription: "swag_app_premium_monthly")
        ), 
    );
  }
}
