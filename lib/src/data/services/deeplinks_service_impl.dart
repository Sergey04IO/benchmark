import 'dart:async';

import 'package:benchmark/src/domain/repositories/openid_connect_repository.dart';
import 'package:benchmark/src/domain/services/deeplinks_service.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:universal_html/html.dart' as html;

@Singleton(as: DeeplinksService, env: [Environment.prod])
class DeeplinksServiceImpl implements DeeplinksService {
  DeeplinksServiceImpl(this._openIdConnectRepository);

  final OpenIdConnectRepository _openIdConnectRepository;

  final String _deeplinkAccessDenied = 'access_denied';

  @override
  Future<bool> initDeeplinks() async {
    String? initialLink;
    try {
      initialLink = html.window.location.href;
    } on PlatformException {
      // No-op
    }

    if (initialLink != null) {
      return _handleDeeplink(initialLink);
    }
    return false;
  }

  bool _handleDeeplink(String path) {
    if (path.contains(_deeplinkAccessDenied)) {
      _openIdConnectRepository.isAccessDenied = true;
      return true;
    }
    return false;
  }
}
