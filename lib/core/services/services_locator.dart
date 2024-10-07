import 'package:stapo_driver/core/api/api_consumer.dart';
import 'package:stapo_driver/core/api/app_interceptor.dart';
import 'package:stapo_driver/core/api/http_consumer.dart';
import 'package:stapo_driver/features/forget_password/data/repos/forget_password_repo.dart';
import 'package:stapo_driver/features/forget_password/data/services%20/forget_password_service.dart';
import 'package:stapo_driver/features/login/data/repos/login_repo.dart';
import 'package:stapo_driver/features/login/data/services /login_service.dart';
import 'package:stapo_driver/features/register/data/repos/register_repo.dart';
import 'package:stapo_driver/features/register/data/services%20/register_service.dart';
import 'package:stapo_driver/features/verify_code/data/repos/verify_code_repo.dart';
import 'package:stapo_driver/features/verify_code/data/services%20/verify_code_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServicesLocator {
  static Future<void> init() async {
    ///login
    getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
    getIt.registerFactory<LoginService>(
        () => LoginService(apiConsumer: getIt()));

    ///register
    getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
    getIt.registerFactory<RegisterService>(
            () => RegisterService(apiConsumer: getIt()));

    ///forget_password
    getIt.registerLazySingleton<ForgetPasswordRepo>(() => ForgetPasswordRepo(getIt()));
    getIt.registerFactory<ForgetPasswordService>(
            () => ForgetPasswordService(apiConsumer: getIt()));

    ///verify_code
    getIt.registerLazySingleton<VerifyCodeRepo>(() => VerifyCodeRepo(getIt()));
    getIt.registerFactory<VerifyCodeService>(
            () => VerifyCodeService(apiConsumer: getIt()));



    ///core
    getIt.registerLazySingleton<AppInterceptor>(() => AppInterceptor());


    getIt.registerLazySingleton<ApiConsumer>(() => HttpConsumer(getIt()));
    getIt.registerLazySingleton(() => http.Client());

    ///shared secure
    FlutterSecureStorage secureStorage = FlutterSecureStorage();
    getIt.registerLazySingleton(() => secureStorage);
  }
}
