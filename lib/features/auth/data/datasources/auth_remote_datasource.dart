import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/api.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/error_utils.dart';

abstract class IAuthRemoteDataSource {
  /// calls the register endpoint
  ///
  /// throws [ServerFailure] for all error code
  Future<String> registerUser({
    @required String password,
    @required String email,
  });

  /// calls the login endpoint
  ///
  /// throws [ServerFailure] for all error codes
  Future<String> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  });

  /// calls the changePassword endpoint
  ///
  /// throws [ServerFailure] for all error codes
  Future<void> changePassword({String old, String newPassword});

  /// calls the send email endpoint
  ///
  /// throws [ServerFailure] for all error codes
  Future<void> sendEmail({String email});
}

@LazySingleton(as: IAuthRemoteDataSource)
class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final Api api;

  AuthRemoteDataSource({
    @required this.api,
  });

  @override
  // ignore: missing_return
  Future<String> signInWithEmailAndPassword(
      {String email, String password}) async {
    final signInData = {
      "email": email,
      "password": password,
    };

    try {
      final response =
          await api.postRequest(cLoginEndpoint, data: json.encode(signInData));

      final String jwtToken = (response.data as Map<String, dynamic>)['jwt'];
      return jwtToken;
    } catch (error) {
      ErrorUtils.remoteErrorHandling(error);
    }
  }

  @override
  Future<void> changePassword({String old, String newPassword}) async {
    // final date = {"lozinka": old, "nova_lozinka": newPassword};

    // try {
    //   await api.postRequest(cChangePasswordEndpoint, data: json.encode(date));
    // } catch (error) {
    //   ErrorUtils.remoteErrorHandling(error);
    // }
  }

  @override
  Future<void> sendEmail({String email}) async {
    final date = {"email": email};

    try {
      await api.postRequest(cForgotPasswordEndpoint, data: json.encode(date));
    } catch (error) {
      ErrorUtils.remoteErrorHandling(error);
    }
  }

  @override
  // ignore: missing_return
  Future<String> registerUser({String password, String email}) async {
    final data = {
      "password": password,
      "email": email,
    };

    try {
      final response =
          await api.postRequest(cRegistrationEndpoint, data: json.encode(data));
      final String jwtToken = (response.data as Map<String, dynamic>)['jwt'];
      return jwtToken;
    } catch (error) {
      ErrorUtils.remoteErrorHandling(error);
    }
  }
}
