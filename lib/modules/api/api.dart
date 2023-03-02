import 'package:sprintf/sprintf.dart';
import 'package:swagapp/modules/api/app_config.dart';
import 'package:swagapp/modules/constants/constants.dart';

enum Endpoint {
  isUsernameAvailable,
  createNewAccount,
  catalogItemDetail,
  login,
  salesHistory
}

class API {
  static final String? host = AppConfig().baseUrl;
  static const String basePath = '';

  Uri tokenUri() => Uri(scheme: 'https', host: host, path: tokenPath);

  Uri endpointUri(Endpoint endpoint, {String? dynamicParam = defaultString}) =>
      Uri.http(
          //TODO: Update to https when possible
          host ?? hostProd,
          dynamicParam != null
              ? sprintf(_paths[endpoint]!, [dynamicParam])
              : _paths[endpoint]!);

  static final Map<Endpoint, String> _paths = {
    Endpoint.isUsernameAvailable:
        'api/public/v1/account/isUsernameAvailable/%s',
    Endpoint.createNewAccount: 'api/public/v1/account/createNewAccount',
    Endpoint.catalogItemDetail: 'api/public/v1/catalog/catalogItemDetail/%s',
    Endpoint.login: "api/public/v1/account/login",
    Endpoint.salesHistory: "api/public/v1/listing/salesHistory/%s"
  };
}
