import 'package:get_it/get_it.dart';
import '../core/router/app_router.dart';
import '../core/services/cache_service.dart';
import '../core/services/hive_cache_service.dart';
import '../core/services/preference_manager.dart';

final sl = GetIt.instance;

Future<void> initDi() async {
  sl.registerSingleton<AppRouter>(AppRouter());

  // Register our Hive-based CacheService as a singleton
  sl.registerSingleton<CacheService>(HiveCacheService());

  sl.registerSingleton<PreferenceManager>(PreferenceManager());
  // await initFirebaseModule(sl);
}
