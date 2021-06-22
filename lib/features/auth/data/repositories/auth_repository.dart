import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/auth_objects.dart';
import '../../domain/repositories/i_auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final IAuthRemoteDataSource remoteDataSource;
  final IAuthLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  AuthRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Option<String> getSignInUser() {
    final jwt = localDataSource.getJWT();
    return optionOf(jwt);
  }

  @override
  Future<Either<Failure, String>> signInWithEmailAndPassword(
      {Email email, Password password}) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final emailAddressStr = email.getOrCrash();
        final passwordStr = password.getOrCrash();
        final jwt = await remoteDataSource.signInWithEmailAndPassword(
            email: emailAddressStr, password: passwordStr);

        await localDataSource.cacheJWT(jwt: jwt);

        return right(jwt);
      } catch (e) {
        if (e is ServerFailure) return left(e);
        return left(const UnknownFailure());
      }
    } else {
      return left(const DeviceIsOffline());
    }
  }

  @override
  Future<Either<Failure, Unit>> changePassword(
      {Password old, Password newPassword}) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final oldPasswordStr = old.getOrCrash();
        final newPasswordStr = newPassword.getOrCrash();
        await remoteDataSource.changePassword(
            old: oldPasswordStr, newPassword: newPasswordStr);

        return right(unit);
      } catch (e) {
        if (e is ServerFailure) return left(e);
        return left(const UnknownFailure());
      }
    } else {
      return left(const DeviceIsOffline());
    }
  }

  @override
  Future<Either<Failure, Unit>> sendEmail({Email email}) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final emailStr = email.getOrCrash();
        await remoteDataSource.sendEmail(email: emailStr);

        return right(unit);
      } catch (e) {
        if (e is ServerFailure) return left(e);
        return left(const UnknownFailure());
      }
    } else {
      return left(const DeviceIsOffline());
    }
  }

  @override
  Future<Either<Failure, Unit>> registerUser(
      {Password password, Email email}) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final emailAddressStr = email.getOrCrash();
        final passwordStr = password.getOrCrash();
        final jwt = await remoteDataSource.registerUser(
            email: emailAddressStr, password: passwordStr);

        await localDataSource.cacheJWT(jwt: jwt);

        return right(unit);
      } catch (e) {
        if (e is ServerFailure) return left(e);
        return left(const UnknownFailure());
      }
    } else {
      return left(const DeviceIsOffline());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      await localDataSource.deleteAllData();

      return right(unit);
    } catch (e) {
      if (e is CacheFailure) return left(e);
      return left(const UnknownFailure());
    }
  }
}
