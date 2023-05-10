import 'dart:convert';

import 'package:flutter/services.dart';

abstract class ConfigReader{
  static Map<String, dynamic>? config;

  static Future<void> initialize() async {
    config = jsonDecode(await rootBundle.loadString('config/app_config.json'));
    assert(config!.containsKey("environment"));
  }

  static String? get env => config!['environment'];
  static String? get baseUrl => config!['baseUrl'];

}