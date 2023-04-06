import 'package:get_it/get_it.dart';
import 'package:max_way/data/repositories/app_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => AppRepository());
}