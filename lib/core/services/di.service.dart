import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mobile/core/network/dioinstance.network.dart';
import 'package:mobile/core/network/info.network.dart';
import "package:http/http.dart" as http;
import 'package:mobile/features/auth/data/datasources/userauthentication.remotedatasource.dart';
import 'package:mobile/features/auth/data/repositories/userauthentication.repository.dart';
import 'package:mobile/features/auth/domain/repositories/userauthentication.repositoryinterface.dart';
import 'package:mobile/features/auth/domain/usecases/register.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/verifyotp.usecase.dart';
import 'package:mobile/features/auth/presentation/manager/register.cubit.dart';
import 'package:mobile/features/auth/presentation/manager/sendotp.cubit.dart';
import 'package:mobile/features/auth/presentation/manager/verifyotp.cubit.dart';
import 'package:package_info_plus/package_info_plus.dart';

abstract class DI {
  static GetIt sl = GetIt.instance;

  static GetIt get i => sl;

  static Future<void> initialize() async {
    //! Feature - Auth
    initializeAuth();

    //! External
    initializeExternal();

  }

  static void initializeAuth() {

    //BLOC
    sl.registerFactory(() => SendOtpCubit(repository: sl()));
    sl.registerFactory(() => VerifyOtpCubit(repository: sl()));
    sl.registerFactory(() => RegisterCubit(repository: sl()));


    //USE_CASE
    sl.registerLazySingleton<SendOtpUseCase>(() =>
        SendOtpUseCase(
         userAuthenticationRepositoryInterface: sl()));
    sl.registerLazySingleton<VerifyOtpUseCase>(() =>
        VerifyOtpUseCase(
            userAuthenticationRepositoryInterface: sl()));
    sl.registerLazySingleton<RegisterUseCase>(() =>
        RegisterUseCase(
            userAuthenticationRepositoryInterface: sl()));

    //REPOSITORY
    sl.registerLazySingleton<UserAuthenticationRepositoryInterface>(() =>
        UserAuthenticationRepository(
            userAuthenticationRemoteDataSourceInterface: sl()));

    //DATASOURCE

    sl.registerLazySingleton<UserAuthenticationRemoteDataSourceInterface>(
        () => UserAuthenticationRemoteDataSource(client: sl()));
  }

  static Future<void> initializeExternal() async {
    sl.registerLazySingleton<NetworkInfoInterface>(() => NetworkInfo(sl()));
    sl.registerLazySingleton<Dio>(() => DioInstance().getInstance);
    sl.registerLazySingleton(() => Connectivity());
    sl.registerLazySingleton(() => http.Client());
    // final packageInfo = await PackageInfo.fromPlatform();
    // sl.registerLazySingleton(() => packageInfo);
    sl.registerLazySingleton(() => InternetConnectionChecker());
  }
}
