import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobile/core/data/datasources/configreader.dart';
import 'package:mobile/features/auth/data/models/userauthentication.model.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';

abstract class UserAuthenticationRemoteDataSourceInterface{
  Future<UserAuthenticationModel> generateOtp(SendOtpParams params);
}

class UserAuthenticationRemoteDataSource extends UserAuthenticationRemoteDataSourceInterface{
  final Dio client;

  UserAuthenticationRemoteDataSource({required this.client});


  @override
  Future<UserAuthenticationModel> generateOtp(SendOtpParams params) async{
    final url = "${ConfigReader.baseUrl!}/userauthentication/sendotp";

    final response = await client.post(
      url,
      data: jsonEncode({"USER_PHONE": "+${params.phone}"}),
    );

    return response.data["message"] ?? "Success";
  }

}