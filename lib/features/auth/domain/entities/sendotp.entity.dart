import 'package:equatable/equatable.dart';

class SendOtpEntity extends Equatable {
  final String status;
  final String message;
  const SendOtpEntity({
    required this.status,
    required this.message,
  });

  @override
  List<Object> get props => [status, message];
}
