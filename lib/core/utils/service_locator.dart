import 'package:bookly/core/utils/api.dart';
import 'package:bookly/feature/home/repo/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Api>(
    Api(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      getIt.get<Api>(),
    ),
  );
}
