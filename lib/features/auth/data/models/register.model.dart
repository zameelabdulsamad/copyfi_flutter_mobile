import 'package:mobile/features/auth/domain/entities/register.entity.dart';
import 'package:mobile/features/auth/domain/entities/verifyotp.entity.dart';

class RegisterModel extends RegisterEntity {
  const RegisterModel({
    required super.status,
    required super.message,
    required super.registerData,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      status: json['status'],
      message: json['message'],
      registerData: RegisterDataModel.fromJson(json['data']),
    );
  }
}

class RegisterDataModel extends RegisterData {
  const RegisterDataModel(
      {required super.USER_EMAIL,
      required super.USER_FULLNAME,
      required super.USER_PHONE,
      required super.TOKEN});

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) {
    return RegisterDataModel(
      USER_EMAIL: json['USER_EMAIL'],
      USER_FULLNAME: json['USER_FULLNAME'],
      USER_PHONE: json['USER_PHONE'],
      TOKEN: json['TOKEN'],
    );
  }
}
