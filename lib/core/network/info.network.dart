import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfoInterface {
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfo extends NetworkInfoInterface {
  final InternetConnectionChecker dataConnectionChecker;

  NetworkInfo(this.dataConnectionChecker);

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}
