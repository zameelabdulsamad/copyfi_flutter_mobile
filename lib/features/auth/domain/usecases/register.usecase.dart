import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile/core/error/failures.dart';
import 'package:mobile/core/usecases/usecase.dart';
import 'package:mobile/features/auth/domain/entities/register.entity.dart';
import '../repositories/userauthentication.repositoryinterface.dart';

class RegisterUseCase extends UseCase<RegisterEntity,RegisterParams>{
  UserAuthenticationRepositoryInterface userAuthenticationRepositoryInterface;

  RegisterUseCase({
    required this.userAuthenticationRepositoryInterface,
  });

  @override
  Future<Either<Failure, RegisterEntity>> call(RegisterParams params) async{
    return await userAuthenticationRepositoryInterface.register(params: params);
  }

}

class RegisterParams extends Equatable{
  final String phone;
  final String email;
  final String name;

  const RegisterParams({required this.phone,required this.email,required this.name});

  @override
  List<Object?> get props => [phone,email,name];
}