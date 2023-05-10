import 'package:mobile/core/error/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'fetchdata.state.freezed.dart';

@freezed
class FetchDataWithInitState<T> with _$FetchDataWithInitState<T> {
  const factory FetchDataWithInitState.initial() = _WIInit;
  const factory FetchDataWithInitState.loading({String? message}) = _WILoading;
  const factory FetchDataWithInitState.success(T data) = _WISuccess;
  const factory FetchDataWithInitState.error(Failure error) = _WIError;
}

@freezed
class FetchDataValuedInitState<R, T> with _$FetchDataValuedInitState<R, T> {
  const factory FetchDataValuedInitState.initial(R value) = _IVInit;
  const factory FetchDataValuedInitState.loading({String? message}) =
  _IVLoading;
  const factory FetchDataValuedInitState.success(T data) = _IVSuccess;
  const factory FetchDataValuedInitState.error(Failure error) = _IVError;
}

@freezed
class FetchDataNoInitState<T> with _$FetchDataNoInitState<T> {
  const factory FetchDataNoInitState.loading({String? message}) = _NILoading;
  const factory FetchDataNoInitState.success(T data) = _NISuccess;
  const factory FetchDataNoInitState.error(Failure error) = _NIError;
}
