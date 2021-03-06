import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

///* [See injectable package -
///"Using a register module (for third party dependencies)"](https://pub.dev/packages/injectable)
@module
abstract class InjectableModules {
  @lazySingleton
  Dio get dio => Dio();
  @lazySingleton
  Connectivity get connectivity => Connectivity();
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
