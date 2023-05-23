import 'package:dartz/dartz.dart';
import 'package:mobile/core/error/failures.dart';
import 'package:mobile/features/auth/domain/entities/register.entity.dart';
import 'package:mobile/features/auth/domain/entities/sendotp.entity.dart';
import 'package:mobile/features/auth/domain/entities/verifyotp.entity.dart';
import 'package:mobile/features/auth/domain/usecases/register.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/verifyotp.usecase.dart';

abstract class UserAuthenticationRepositoryInterface{
  Future<Either<Failure,SendOtpEntity>> sendOtp({required SendOtpParams params});
  Future<Either<Failure,VerifyOtpEntity>> verifyOtp({required VerifyOtpParams params});
  Future<Either<Failure,RegisterEntity>> register({required RegisterParams params});
}