import 'package:get_storage/get_storage.dart';

class LocalStorageService {
  final _storage = GetStorage();

  dynamic read({required String key}) {
    return _storage.read(key);
  }

  void write({required String key, required dynamic value}) async {
    await _storage.write(key, value);
  }

  void remove({required String key}) async {
    await _storage.remove(key);
  }
}
