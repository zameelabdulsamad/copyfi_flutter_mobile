import 'package:dartz/dartz.dart' ;
import 'package:dio/dio.dart'show DioError, DioErrorType;
import 'package:mobile/core/error/exceptions.dart';
import 'package:mobile/core/error/failures.dart';


typedef RemoteExecutable<T> = Future<T> Function();

Future<Either<Failure, T>> repoExecute<T>(RemoteExecutable<T> func) async {
  try {
    final T result = await func();
    return Right(result);
  } on DioError catch (err) {
    final ex = err.error;
    if (ex is ApiException) {
      return Left(ApiFailure.fromException(ex));
    } else {
      switch (err.type) {
        case DioErrorType.connectionTimeout:
          return Left(ConnectionTimeout());
        case DioErrorType.sendTimeout:
          return Left(ConnectionTimeout());
        case DioErrorType.receiveTimeout:
          return Left(ConnectionTimeout());
        case DioErrorType.badResponse:
          return Left(ServerFailure());
        case DioErrorType.cancel:
          return Left(ServerFailure());
        case DioErrorType.unknown:
          return Left(NetworkFailure());
        case DioErrorType.badCertificate:
          return Left(ServerFailure());
        case DioErrorType.connectionError:
          return Left(NetworkFailure());
      }
    }
  } on TypeError catch (exception) {
    return Left(NetworkFailure(message: "Failed to process data."));
  } catch (exception) {
    return Left(ServerFailure(title: "Unexpected Failure"));
  }
}