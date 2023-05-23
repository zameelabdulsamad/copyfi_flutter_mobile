import 'package:dio/dio.dart';


class ApiInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // AUTH Interceptors passes Token, headers from here

    super.onRequest(options, handler);
  }
}
