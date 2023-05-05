import 'package:openid_client/openid_client_browser.dart';

abstract class SSOService {
  Future<Authenticator> init();
  Future<void> authorize();
  Future<void> retryAuthorizeAfterError();
  Future<void> logout();
}
