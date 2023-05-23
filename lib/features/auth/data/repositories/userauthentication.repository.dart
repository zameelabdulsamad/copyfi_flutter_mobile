import 'package:dartz/dartz.dart';
import 'package:mobile/core/error/failures.dart';
import 'package:mobile/core/utils/repository.utils.dart';
import 'package:mobile/features/auth/data/datasources/userauthentication.remotedatasource.dart';
import 'package:mobile/features/auth/domain/entities/register.entity.dart';
import 'package:mobile/features/auth/domain/entities/sendotp.entity.dart';
import 'package:mobile/features/auth/domain/entities/verifyotp.entity.dart';
import 'package:mobile/features/auth/domain/repositories/userauthentication.repositoryinterface.dart';
import 'package:mobile/features/auth/domain/usecases/register.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/verifyotp.usecase.dart';

class UserAuthenticationRepository
    extends UserAuthenticationRepositoryInterface {
  final UserAuthenticationRemoteDataSourceInterface
      userAuthenticationRemoteDataSourceInterface;

  UserAuthenticationRepository(
      {required this.userAuthenticationRemoteDataSourceInterface});

  @override
  Future<Either<Failure, SendOtpEntity>> sendOtp(
          {required SendOtpParams params}) =>
      repoExecute<SendOtpEntity>(
        () => userAuthenticationRemoteDataSourceInterface.generateOtp(params),
      );

  @override
  Future<Either<Failure, VerifyOtpEntity>> verifyOtp(
      {required VerifyOtpParams params}) =>
      repoExecute<VerifyOtpEntity>(
            () => userAuthenticationRemoteDataSourceInterface.verifyOtp(params),
      );

  @override
  Future<Either<Failure, RegisterEntity>> register(
      {required RegisterParams params}) =>
      repoExecute<RegisterEntity>(
            () => userAuthenticationRemoteDataSourceInterface.register(params),
      );
}
