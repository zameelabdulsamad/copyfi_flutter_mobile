import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/data/basestate/fetchdata.state.dart';
import 'package:mobile/features/auth/domain/repositories/userauthentication.repositoryinterface.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';

class SendOtpCubit extends Cubit<FetchDataWithInitState<void>> {
  final UserAuthenticationRepositoryInterface repository;

  SendOtpCubit({required this.repository})
      : super(const FetchDataWithInitState.initial());

  void sendOtp(String phone) {
    emit(const FetchDataWithInitState.loading(message: "Sending OTP"));


    repository.sendOtp(params: SendOtpParams(phone: '91$phone')).then((value) {
      emit(value.fold(
        (l) => FetchDataWithInitState.error(l),
        (r) => FetchDataWithInitState.success(r.message),
      ));
    });
  }
}
