import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final String status;
  final String message;
  final RegisterData registerData;

  const RegisterEntity({
    required this.status,
    required this.message,
    required this.registerData,
  });

  @override
  List<Object> get props => [status, message, registerData];
}

class RegisterData extends Equatable {
  final String TOKEN;
  final String USER_EMAIL;
  final String USER_PHONE;
  final String USER_FULLNAME;

  const RegisterData({
    required this.TOKEN,
    required this.USER_EMAIL,
    required this.USER_FULLNAME,
    required this.USER_PHONE
  });

  @override
  List<Object?> get props {
    return [
      USER_EMAIL,
      USER_FULLNAME,
      USER_PHONE,
      TOKEN,
    ];
  }
}
