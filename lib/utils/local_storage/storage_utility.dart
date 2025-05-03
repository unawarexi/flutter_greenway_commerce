import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final GetStorage _storage = GetStorage();

  // Save data to local storage (generic method)
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Read data from local storage (generic method)
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Remove a specific item from local storage
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Clear all data from local storage
  Future<void> clearAllData() async {
    await _storage.erase();
  }

  // Check if a key exists in local storage
  bool hasData(String key) {
    return _storage.hasData(key);
  }
}
