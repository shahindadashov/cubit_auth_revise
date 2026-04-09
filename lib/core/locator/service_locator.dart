import 'package:cubit_auth_revise/core/storage/local_storage_service.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';

final sl = GetIt.instance;

Future<void> registerServices() async {
  await GetStorage.init();

  sl.registerLazySingleton(() => LocalStorageService());
}
