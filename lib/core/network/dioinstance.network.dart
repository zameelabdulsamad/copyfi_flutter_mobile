import 'package:dio/dio.dart' show BaseOptions, Dio, Headers, ResponseType;

import 'interceptors/apiexception.interceptor.dart';
import 'interceptors/api.interceptor.dart';
import 'interceptors/logging.interceptor.dart';

class DioInstance {
  late final Dio _dio;

  DioInstance() {
    final BaseOptions baseOptions = BaseOptions(
      responseType: ResponseType.json,
      contentType: Headers.jsonContentType,
      connectTimeout: const Duration(seconds: 60), // 60s
    );
    _dio = Dio(baseOptions);
    _dio.interceptors.addAll(
      [
        ApiInterceptor(),
        LoggingInterceptor(),
        ApiExceptionInterceptor(),
      ],
    );

  }

  Dio get getInstance => _dio;
}
