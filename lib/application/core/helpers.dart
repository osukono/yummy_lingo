import 'package:connectivity/connectivity.dart';
import 'package:yummy_lingo/domain/enums.dart';

Future<ConnectivityState> checkConnectivity({
  ConnectivityResult? connectivityResult,
}) async {
  final connectivity =
      connectivityResult ?? await Connectivity().checkConnectivity();

  switch (connectivity) {
    case ConnectivityResult.mobile:
    case ConnectivityResult.wifi:
      return ConnectivityState.online;
    case ConnectivityResult.none:
      return ConnectivityState.offline;
  }
}
