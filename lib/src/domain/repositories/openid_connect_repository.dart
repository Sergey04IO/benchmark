import 'package:openid_client/openid_client_browser.dart';

abstract class OpenIdConnectRepository {
  Future<void> init();
  Future<void> authorize();
  Future<void> logout();
  Authenticator? get authenticator;
  Credential? get credential;
  bool get isAccessDenied;
  set isAccessDenied(bool isDenied);
}
