import 'package:mobile/features/auth/domain/entities/sendotp.entity.dart';


class SendOtpModel extends SendOtpEntity {
  const SendOtpModel({
    required super.status,
    required super.message,
  });

  factory SendOtpModel.fromJson(Map<String, dynamic> json) {
    return SendOtpModel(
      status: json['status'],
      message: json['message'],
    );
  }
}
