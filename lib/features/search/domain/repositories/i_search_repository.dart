import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/errors/failures.dart';
import '../entities/password_entity.dart';

abstract class ISearchRepository {
  /// ## Search Passwords
  ///
  /// Search passwords by [searchString]
  /// It is return Either [Failure or List of Passwords]
  Future<Either<Failure, List<PasswordEntity>>> searchPasswords(
      {@required String searchString, int page});
}
