import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:starter_project/data/repository/repository.dart';
import 'package:starter_project/data/service/api_service.dart';

import '../data/dio_factory.dart';

final sl = GetIt.instance;

class Injections {
  Future<void> initialize() async {
    _register();
  }

  void _register() {
    // dio
    sl.registerSingleton<Dio>(
      DioFactory(
        baseUrl: "https://run.mocky.io/v3",
      ).create(),
    );

    sl.registerLazySingleton<ApiService>(
      () => ApiService(sl()),
    );

    sl.registerLazySingleton<Repository>(
      () => RepositoryImpl(
        apiService: sl(),
      ),
    );
  }
}
