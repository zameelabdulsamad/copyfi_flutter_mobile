import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobile/core/data/datasources/configreader.dart';
import 'package:mobile/features/auth/data/models/register.model.dart';
import 'package:mobile/features/auth/data/models/sendotp.model.dart';
import 'package:mobile/features/auth/data/models/verifyotp.model.dart';
import 'package:mobile/features/auth/domain/usecases/register.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/verifyotp.usecase.dart';

abstract class UserAuthenticationRemoteDataSourceInterface {
  Future<SendOtpModel> generateOtp(SendOtpParams params);

  Future<VerifyOtpModel> verifyOtp(VerifyOtpParams params);

  Future<RegisterModel> register(RegisterParams params);

}

class UserAuthenticationRemoteDataSource
    extends UserAuthenticationRemoteDataSourceInterface {
  final Dio client;

  UserAuthenticationRemoteDataSource({required this.client});

  @override
  Future<SendOtpModel> generateOtp(SendOtpParams params) async {
    final url = "${ConfigReader.baseUrl!}/userauthentication/sendotp";

    final response = await client.post(
      url,
      data: jsonEncode({"USER_PHONE": "+${params.phone}"}),
    );

    return SendOtpModel(
        status: response.data['status'], message: response.data['message']);
  }

  @override
  Future<VerifyOtpModel> verifyOtp(VerifyOtpParams params) async {
    final url = "${ConfigReader.baseUrl!}/userauthentication/verifyotp";

    final response = await client.post(
      url,
      data: jsonEncode({"USER_PHONE": "+${params.phone}", "otp": params.otp}),
    );

    return VerifyOtpModel(
        status: response.data['status'],
        message: response.data['message'],
        verifyOtpData: VerifyOtpDataModel.fromJson(response.data['data']));
  }

  @override
  Future<RegisterModel> register(RegisterParams params) async {
    final url = "${ConfigReader.baseUrl!}/userauthentication/register";

    final response = await client.post(
      url,
      data: jsonEncode({"USER_PHONE": "+${params.phone}", "USER_FULLNAME": params.name, "USER_EMAIL":params.email}),
    );

    return RegisterModel(
        status: response.data['status'],
        message: response.data['message'],
        registerData: RegisterDataModel.fromJson(response.data['data']));
  }
}
