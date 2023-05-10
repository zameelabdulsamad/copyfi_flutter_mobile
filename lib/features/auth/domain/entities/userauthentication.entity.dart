import 'package:equatable/equatable.dart';

class UserAuthenticationEntity extends Equatable {
  final bool status;
  final String message;
  final UserAuthenticationData userAuthenticationData;

  const UserAuthenticationEntity(
      {required this.status,
      required this.message,
      required this.userAuthenticationData});

  @override
  List<Object?> get props => [status, message, userAuthenticationData];
}

class UserAuthenticationData extends Equatable {
  final String phone;
  final String fullname;
  final String email;
  final String uid;
  final String otp;

  const UserAuthenticationData(
      {required this.phone,
      required this.email,
      required this.fullname,
      required this.otp,
      required this.uid});

  factory UserAuthenticationData.fromJson(Map<String, dynamic> json) {
    return UserAuthenticationData(
      fullname: json['USER_FULLNAME'],
      phone: json['USER_PHONE'],
      email: json['USER_EMAIL'],
      uid: json['USER_UID'],
      otp: json['otp']
    );
  }

  @override
  List<Object?> get props => [phone,fullname,email,uid,otp];
}
