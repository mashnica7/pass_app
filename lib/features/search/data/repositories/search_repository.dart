import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/constants/text_constants.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/entities/password_entity.dart';
import '../../domain/repositories/i_search_repository.dart';
import '../datasources/search_local_datasource.dart';
import '../datasources/search_remote_datasource.dart';

@LazySingleton(as: ISearchRepository)
class SearchRepository implements ISearchRepository {
  final ISearchRemoteDataSource remoteDataSource;
  final ISearchLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  SearchRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<PasswordEntity>>> searchPasswords(
      {String searchString, int page}) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      try {
        final passwords = await remoteDataSource.searchPasswords(
            searchString: searchString, page: page);
        return right(passwords);
      } catch (e) {
        if (e is ServerFailure) return left(e);
        return left(UnknownFailure(message: e.toString()));
      }
    } else {
      debugPrint("\t\t\tDeviceIsOffline");
      return left(const DeviceIsOffline(message: cDeviceOfflineMessage));
    }
  }
}
