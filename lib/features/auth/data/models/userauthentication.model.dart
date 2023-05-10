import 'package:mobile/features/auth/domain/entities/userauthentication.entity.dart';

class UserAuthenticationModel extends UserAuthenticationEntity {
  const UserAuthenticationModel(
      {required super.status,
      required super.message,
      required super.userAuthenticationData});

  factory UserAuthenticationModel.fromJson(Map<String, dynamic> json) {
    return UserAuthenticationModel(
      status: json['status'],
      message: json['message'],
      userAuthenticationData:
          UserAuthenticationDataModel.fromJson(json['data']),
    );
  }
}

class UserAuthenticationDataModel extends UserAuthenticationData {
  const UserAuthenticationDataModel(
      {required super.phone,
      required super.email,
      required super.fullname,
      required super.otp,
      required super.uid});

  factory UserAuthenticationDataModel.fromJson(Map<String, dynamic> json) {
    return UserAuthenticationDataModel(
        fullname: json['USER_FULLNAME'],
        phone: json['USER_PHONE'],
        email: json['USER_EMAIL'],
        uid: json['USER_UID'],
        otp: json['otp']
    );
  }
}
