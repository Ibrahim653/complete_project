import 'package:complete_project/core/networking/api_service.dart';
import 'package:complete_project/core/networking/dio_factory.dart';
import 'package:complete_project/features/login/data/repos/login_repo.dart';
import 'package:complete_project/features/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio and api service
  Dio dio = DioFactory.getdio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
