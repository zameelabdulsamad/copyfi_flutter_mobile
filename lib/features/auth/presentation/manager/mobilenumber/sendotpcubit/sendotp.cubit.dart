import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/data/basestate/fetchdata.state.dart';
import 'package:mobile/features/auth/domain/repositories/userauthentication.repositoryinterface.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';

class SendOtpCubit extends Cubit<FetchDataNoInitState<void>> {
  final UserAuthenticationRepositoryInterface repository;

  SendOtpCubit(this.repository)
      : super(const FetchDataNoInitState.loading(message: "Sending OTP"));

  void sendOtp(String phone) {
    emit(const FetchDataNoInitState.loading(message: "Sending OTP"));
    repository.sendOtp(params: SendOtpParams(phone: phone)).then((value) {
      emit(value.fold(
        (l) => FetchDataNoInitState.error(l),
        (r) => FetchDataNoInitState.success(r.message),
      ));
    });
  }
}
