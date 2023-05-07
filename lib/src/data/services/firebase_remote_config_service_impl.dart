import 'dart:convert';

import 'package:benchmark/src/app/core/errors/exceptions.dart';
import 'package:benchmark/src/domain/services/firebase_remote_config_service.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: FirebaseRemoteConfigService, env: [Environment.prod])
class FirebaseRemoteConfigServiceImpl implements FirebaseRemoteConfigService {
  FirebaseRemoteConfigServiceImpl(this._firebaseRemoteConfig);

  final FirebaseRemoteConfig _firebaseRemoteConfig;

  @override
  Future<void> init() async {
    try {
      await _firebaseRemoteConfig.ensureInitialized();
      await _firebaseRemoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: Duration.zero,
        ),
      );
      await _firebaseRemoteConfig.fetchAndActivate();
    } catch (e) {
      throw const ApiException(error: 'Firebase remote config init!');
    }
  }

  @override
  Map<String, dynamic>? getSettings() {
    try {
      final data = _firebaseRemoteConfig.getString('settings');
      if (data == '') return null;
      final result = jsonDecode(data);
      return result;
    } catch (e) {
      throw const ApiException(
          error: 'Firebase remote config get settings error!');
    }
  }
}
