import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile/core/error/failures.dart';
import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/features/auth/domain/entities/sendotp.entity.dart';

import '../repositories/userauthentication.repositoryinterface.dart';

class SendOtpUseCase extends UseCase<SendOtpEntity,SendOtpParams>{
  UserAuthenticationRepositoryInterface userAuthenticationRepositoryInterface;

  SendOtpUseCase({
    required this.userAuthenticationRepositoryInterface,
  });

  @override
  Future<Either<Failure, SendOtpEntity>> call(SendOtpParams params) async{
    return await userAuthenticationRepositoryInterface.sendOtp(params: params);
  }

}

class SendOtpParams extends Equatable{
  final String phone;

  const SendOtpParams({required this.phone});

  @override
  List<Object?> get props => [phone];


}