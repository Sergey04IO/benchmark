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
  bool _isAccessDenied = false;

  @override
  Authenticator? get authenticator => _authenticator;

  @override
  Credential? get credential => _credential;

  @override
  bool get isAccessDenied => _isAccessDenied;

  @override
  set isAccessDenied(bool isDenied) {
    _isAccessDenied = isDenied;
  }

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
      if (_isAccessDenied) {
        _ssoService.retryAuthorizeAfterError();
        return;
      }
      await _ssoService.authorize();
      _credential = await _authenticator?.credential;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _ssoService.logout();
    } catch (e) {
      rethrow;
    }
  }
}
