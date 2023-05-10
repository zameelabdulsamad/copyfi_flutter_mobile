import 'package:dartz/dartz.dart';
import 'package:mobile/core/error/failures.dart';
import 'package:mobile/features/auth/domain/entities/userauthentication.entity.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';

abstract class UserAuthenticationRepositoryInterface{
  Future<Either<Failure,UserAuthenticationEntity>> sendOtp({required SendOtpParams params});
}