import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import 'auth_objects.dart';

abstract class IAuthRepository {
  Option<String> getSignInUser();

  Future<Either<Failure, Unit>> registerUser({
    @required Password password,
    @required Email email,
  });

  Future<Either<Failure, String>> signInWithEmailAndPassword({
    @required Email email,
    @required Password password,
  });

  /// This function is used when:
  /// 1. user is signed in and wants to change password,
  /// 2. after signin when use is required to change default password given by system
  Future<Either<Failure, Unit>> changePassword(
      {Password old, Password newPassword});

  /// Forgot password part
  ///
  /// This function is used to send link for reset password to email when user forgot password.
  Future<Either<Failure, Unit>> sendEmail({Email email});

  /// ## Sign Out
  ///
  /// Sign user and remove all users data saved locally
  Future<Either<Failure, Unit>> signOut();
}
