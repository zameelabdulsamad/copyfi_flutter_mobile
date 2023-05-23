import 'package:mobile/features/auth/domain/entities/verifyotp.entity.dart';

class VerifyOtpModel extends VerifyOtpEntity {
  const VerifyOtpModel({
    required super.status,
    required super.message,
    required super.verifyOtpData,
  });

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) {
    return VerifyOtpModel(
      status: json['status'],
      message: json['message'],
      verifyOtpData: VerifyOtpDataModel.fromJson(json['data']),
    );
  }
}

class VerifyOtpDataModel extends VerifyOtpData {
  const VerifyOtpDataModel({
    required super.userAlreadyRegistered,
    super.TOKEN
  });

  factory VerifyOtpDataModel.fromJson(Map<String, dynamic> json) {
    return VerifyOtpDataModel(
      userAlreadyRegistered: json['userAlreadyRegistered'],
      TOKEN: json['TOKEN']
    );
  }
}
