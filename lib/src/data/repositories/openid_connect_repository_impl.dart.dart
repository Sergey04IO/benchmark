import 'package:benchmark/src/domain/repositories/openid_connect_repository.dart';
import 'package:benchmark/src/domain/services/sso_service.dart';
import 'package:injectable/injectable.dart';
import 'package:openid_client/openid_client_browser.dart';

@LazySingleton(as: OpenIdConnectRepository, env: [Environment.prod])
class OpenIdConnectRepositoryImpl implements OpenIdConnectRepository {
  OpenIdConnectRepositoryImpl(this._ssoService);

  final SSOService _ssoService;

  Authenticator? _authenticator;
  Credential? _credential;

  @override
  Authenticator? get authenticator => _authenticator;

  @override
  Credential? get credential => _credential;

  @override
  Future<void> init() async {
    try {
      _authenticator = await _ssoService.init();
      _credential = await _authenticator?.credential;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> authorize() async {
    try {
      await _ssoService.authorize();
      _credential = await _authenticator?.credential;
    } catch (e) {
      rethrow;
    }
  }
}
