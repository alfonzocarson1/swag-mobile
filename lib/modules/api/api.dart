import 'package:swagapp/modules/api/app_config.dart';
import 'package:swagapp/modules/constants/constants.dart';

enum Endpoint {
  someEndpoint,
}

class API {
  static final String? host = AppConfig().baseUrl;
  static const String basePath = '';

  Uri tokenUri() => Uri(scheme: 'https', host: host, path: tokenPath);

  Uri endpointUri(
    Endpoint endpoint,
  ) =>
      Uri.https(host ?? hostProd, _paths[endpoint]!);

  static final Map<Endpoint, String> _paths = {
    Endpoint.someEndpoint: 'someEndpoint',
  };
}
