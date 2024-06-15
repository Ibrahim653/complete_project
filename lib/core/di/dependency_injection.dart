import 'package:complete_project/core/networking/api_service.dart';
import 'package:complete_project/core/networking/dio_factory.dart';
import 'package:complete_project/features/home/data/apis/home_api_service.dart';
import 'package:complete_project/features/login/data/repos/login_repo.dart';
import 'package:complete_project/features/login/logic/cubit/login_cubit.dart';
import 'package:complete_project/features/register/data/repos/register_repo.dart';
import 'package:complete_project/features/register/logic/cubit/register_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio and api service
  Dio dio = DioFactory.getdio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  //home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
