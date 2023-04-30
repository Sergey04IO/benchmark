import 'package:openid_client/openid_client_browser.dart';

abstract class OpenIdConnectRepository {
  Future<void> init();
  Future<void> authorize();
  Authenticator? get authenticator;
  Credential? get credential;
}
