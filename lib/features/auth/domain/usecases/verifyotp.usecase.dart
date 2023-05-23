import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile/core/error/failures.dart';
import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/features/auth/domain/entities/verifyotp.entity.dart';

import '../repositories/userauthentication.repositoryinterface.dart';

class VerifyOtpUseCase extends UseCase<VerifyOtpEntity,VerifyOtpParams>{
  UserAuthenticationRepositoryInterface userAuthenticationRepositoryInterface;

  VerifyOtpUseCase({
    required this.userAuthenticationRepositoryInterface,
  });

  @override
  Future<Either<Failure, VerifyOtpEntity>> call(VerifyOtpParams params) async{
    return await userAuthenticationRepositoryInterface.verifyOtp(params: params);
  }

}

class VerifyOtpParams extends Equatable{
  final String phone;
  final String otp;

  const VerifyOtpParams({required this.phone,required this.otp});

  @override
  List<Object?> get props => [phone,otp];


}