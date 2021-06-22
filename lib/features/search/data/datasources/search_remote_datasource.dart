import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/api.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/utils/error_utils.dart';
import '../../domain/entities/password_entity.dart';

abstract class ISearchRemoteDataSource {
  /// Calls the search or get all pass endpoint
  /// with [searchString] and [page] - number of page
  ///
  /// Return [List of Passwords] for success response or
  /// throws [ServerFailure] for all error codes
  Future<List<PasswordEntity>> searchPasswords({
    @required String searchString,
    int page,
  });
}

@LazySingleton(as: ISearchRemoteDataSource)
class SearchRemoteDataSource implements ISearchRemoteDataSource {
  final Api api;

  SearchRemoteDataSource({
    @required this.api,
  });

  @override
  // ignore: missing_return
  Future<List<PasswordEntity>> searchPasswords(
      {String searchString, int page}) async {
    try {
      final response = await api.getRequest("$cGetAllPasswordsEndpoint/$page");
      List<PasswordEntity> passwords = [];

      for (var v in response.data as List) {
        final pass = PasswordEntity.fromJson(v as Map<String, dynamic>);
        passwords.add(pass);
      }

      return passwords;
    } catch (error) {
      ErrorUtils.remoteErrorHandling(error);
    }
  }
}
