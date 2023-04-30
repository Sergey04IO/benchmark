abstract class LocalStorageService {
  Future<bool> saveFile(String key, List<int> bytes);
  Future<List<int>?> getFile(String key);
  Future<bool> saveString(String key, String value);
  Future<String?> getString(String key);
  Future<bool> removeKey(String key);
}
