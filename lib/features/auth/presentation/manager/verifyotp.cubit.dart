import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/core/data/basestate/fetchdata.state.dart';
import 'package:mobile/features/auth/domain/repositories/userauthentication.repositoryinterface.dart';
import 'package:mobile/features/auth/domain/usecases/sendotp.usecase.dart';
import 'package:mobile/features/auth/domain/usecases/verifyotp.usecase.dart';

class VerifyOtpCubit extends Cubit<FetchDataWithInitState<void>> {
  final UserAuthenticationRepositoryInterface repository;

  VerifyOtpCubit({required this.repository})
      : super(const FetchDataWithInitState.initial());

  void verifyOtp(String phone,String otp) {
    emit(const FetchDataWithInitState.loading(message: "Verifying OTP"));


    repository.verifyOtp(params: VerifyOtpParams(phone: '91$phone',otp: otp)).then((value) {
      emit(value.fold(
            (l) => FetchDataWithInitState.error(l),
            (r) => FetchDataWithInitState.success(r.message),
      ));
    });
  }
}
