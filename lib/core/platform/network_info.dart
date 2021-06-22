import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';

const cCheckNetworkConnection = true;

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: INetworkInfo)
class NetworkInfo implements INetworkInfo {
  // final DataConnectionChecker dataConnectionChecker;
  Connectivity connectivity;

  NetworkInfo(this.connectivity);

  @override
  Future<bool> get isConnected async {
    // if (cCheckNetworkConnection == false) Future.value(false);
    // return dataConnectionChecker.hasConnection;
    final connectivityResult = await connectivity.checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }
}
