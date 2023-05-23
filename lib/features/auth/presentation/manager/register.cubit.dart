import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/data/basestate/fetchdata.state.dart';
import 'package:mobile/features/auth/domain/repositories/userauthentication.repositoryinterface.dart';
import 'package:mobile/features/auth/domain/usecases/register.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/verifyotp.usecase.dart';

class RegisterCubit extends Cubit<FetchDataWithInitState<void>> {
  final UserAuthenticationRepositoryInterface repository;

  RegisterCubit({required this.repository})
      : super(const FetchDataWithInitState.initial());

  void register(String phone,String name,String email) {
    emit(const FetchDataWithInitState.loading(message: "Registering user"));


    repository.register(params: RegisterParams(phone: '91$phone',name: name, email: email)).then((value) {
      emit(value.fold(
            (l) => FetchDataWithInitState.error(l),
            (r) => FetchDataWithInitState.success(r.message),
      ));
    });
  }
}
