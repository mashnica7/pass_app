import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/shared_prefs_ids.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/errors/failures.dart';

abstract class IAuthLocalDataSource {
  Future<void> cacheJWT({String jwt});
  String getJWT();

  Future<void> deleteAllData();
}

@LazySingleton(as: IAuthLocalDataSource)
class AuthLocalDataSource implements IAuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSource({@required this.sharedPreferences});

  @override
  Future<void> cacheJWT({String jwt}) async {
    try {
      final saved = await sharedPreferences.setString(cJWTKey, jwt);

      if (saved == false) {
        throw const CacheFailure(message: cCacheDataErrorMessage);
      }
    } on Exception {
      rethrow;
    }
  }

  @override
  String getJWT() {
    return sharedPreferences.getString(cJWTKey);
  }

  @override
  Future<void> deleteAllData() async {
    try {
      final sharedPrefsDeleted = await sharedPreferences.clear();

      if (sharedPrefsDeleted == false) {
        throw const CacheFailure(message: cCacheDataErrorMessage);
      }
    } catch (e) {
      rethrow;
    }
  }
}
