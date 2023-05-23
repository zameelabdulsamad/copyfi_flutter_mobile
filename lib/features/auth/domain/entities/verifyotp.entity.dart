import 'package:equatable/equatable.dart';

class VerifyOtpEntity extends Equatable {
  final String status;
  final String message;
  final VerifyOtpData verifyOtpData;

  const VerifyOtpEntity({
    required this.status,
    required this.message,
    required this.verifyOtpData,
  });

  @override
  List<Object> get props => [status, message, verifyOtpData];
}

class VerifyOtpData extends Equatable {
  final bool userAlreadyRegistered;
  final String? TOKEN;

  const VerifyOtpData({
    required this.userAlreadyRegistered,
    this.TOKEN,
  });

  @override
  List<Object?> get props {
    return [
      userAlreadyRegistered,
      TOKEN,
    ];
  }
}
