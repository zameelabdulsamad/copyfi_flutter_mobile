import 'package:dartz/dartz.dart';
import 'package:mobile/core/error/failures.dart';
import 'package:mobile/core/utils/repository.utils.dart';
import 'package:mobile/features/auth/data/datasources/userauthentication.remotedatasource.dart';
import 'package:mobile/features/auth/domain/entities/userauthentication.entity.dart';
import 'package:mobile/features/auth/domain/repositories/userauthentication.repositoryinterface.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';

class UserAuthenticationRepository
    extends UserAuthenticationRepositoryInterface {
  final UserAuthenticationRemoteDataSourceInterface
      userAuthenticationRemoteDataSourceInterface;

  UserAuthenticationRepository(
      {required this.userAuthenticationRemoteDataSourceInterface});

  @override
  Future<Either<Failure, UserAuthenticationEntity>> sendOtp(
          {required SendOtpParams params}) =>
      repoExecute<UserAuthenticationEntity>(
        () => userAuthenticationRemoteDataSourceInterface.generateOtp(params),
      );
}
