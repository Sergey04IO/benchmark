import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorageService {
  Future<bool> saveFile(String key, List<int> bytes);
  Future<List<int>?> getFile(String key);
  Future<bool> saveString(String key, String value);
  Future<String?> getString(String key);
  Future<bool> removeKey(String key);
}

@LazySingleton(as: LocalStorageService, env: [Environment.prod])
class SharedPrefsService implements LocalStorageService {
  SharedPrefsService(this._prefs);

  final SharedPreferences _prefs;

  @override
  Future<bool> saveFile(String key, List<int> bytes) async {
    try {
      final mapped = bytes.map((e) => e.toString()).toList();
      final result = await _prefs.setStringList(key, mapped);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<int>?> getFile(String key) async {
    try {
      final result = _prefs.getStringList(key);
      if (result == null) return null;
      final mapped = result.map(int.parse).toList();
      return mapped;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> saveString(String key, String value) async {
    try {
      final result = await _prefs.setString(key, value);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> getString(String key) async {
    try {
      final result = _prefs.getString(key);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> removeKey(String key) async {
    try {
      final result = _prefs.remove(key);
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
