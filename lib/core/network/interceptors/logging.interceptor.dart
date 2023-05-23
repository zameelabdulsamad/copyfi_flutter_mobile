// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggingInterceptor extends Interceptor {
  final bool logEnabled = kDebugMode;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (logEnabled) {
      print(
          "--> ${options.method.toUpperCase()} ${"" + (options.baseUrl) + (options.path)}");
      print('Headers:');
      options.headers.forEach((k, v) => print('$k: $v'));
      print('QueryParameters:');
      options.queryParameters.forEach((k, v) => print('$k: $v'));
      if (options.data != null) {
        print('Body: ${jsonEncode(options.data)}');
      }
      print('--> END ${options.method.toUpperCase()}');
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (logEnabled) {
      print('<-- ${response.statusCode} ${response.realUri}');
      print('Headers:');
      response.headers.forEach((k, v) => print('$k: $v'));
      log('Response: ${jsonEncode(response.data).toString()}');
      print('<-- END HTTP');
    }

    super.onResponse(response, handler);
  }
}
