abstract class FirebaseRemoteConfigService {
  Future<void> init();
  Map<String, dynamic>? getSettings();
}
