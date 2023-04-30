import 'package:benchmark/src/app/core/errors/exceptions.dart';
import 'package:benchmark/src/app/core/keys/api_keys/openid_connect_keys.dart';
import 'package:benchmark/src/domain/services/sso_service.dart';
import 'package:injectable/injectable.dart';
import 'package:openid_client/openid_client_browser.dart';

@LazySingleton(as: SSOService, env: [Environment.prod])
class OpenIdConnectService implements SSOService {
  Authenticator? _authenticator;

  @override
  Future<Authenticator> init() async {
    final scopes = List<String>.of(['openid', 'profile']);
    final openIdUri = Uri.parse(OpenIdConnectKeys.openIdUrl);
    try {
      final issuer = await Issuer.discover(openIdUri);
      final client = Client(
        issuer,
        OpenIdConnectKeys.clientId,
        clientSecret: OpenIdConnectKeys.clientSecret,
      );
      final authenticator = Authenticator(
        client,
        scopes: scopes,
      );
      _authenticator = authenticator;
      return authenticator;
    } catch (e) {
      throw const ApiException(error: 'Open Id Connect init error!');
    }
  }

  @override
  Future<void> authorize() async {
    try {
      if (_authenticator == null) return;
      _authenticator?.authorize();
    } catch (e) {
      throw const ApiException(error: 'Open Id Connect authorization error!');
    }
  }
}
