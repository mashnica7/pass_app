// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../core/api/api.dart' as _i8;
import '../core/platform/network_info.dart' as _i5;
import '../core/ui/themes/bloc/theme_bloc.dart' as _i7;
import '../features/auth/data/datasources/auth_local_datasource.dart' as _i9;
import '../features/auth/data/datasources/auth_remote_datasource.dart' as _i10;
import '../features/auth/data/repositories/auth_repository.dart' as _i12;
import '../features/auth/domain/repositories/i_auth_repository.dart' as _i11;
import '../features/auth/presentation/bloc/auth/auth_bloc.dart' as _i20;
import '../features/auth/presentation/bloc/change_password/change_password_bloc.dart'
    as _i21;
import '../features/auth/presentation/bloc/forgot_password/forgot_password_bloc.dart'
    as _i22;
import '../features/auth/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i18;
import '../features/auth/presentation/bloc/sign_up_form/sign_up_form_bloc.dart'
    as _i19;
import '../features/search/data/datasources/search_local_datasource.dart'
    as _i13;
import '../features/search/data/datasources/search_remote_datasource.dart'
    as _i14;
import '../features/search/data/repositories/search_repository.dart' as _i16;
import '../features/search/domain/repositories/i_search_repository.dart'
    as _i15;
import '../features/search/presentation/bloc/search_bloc.dart' as _i17;
import 'injectable_moduls.dart' as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.lazySingleton<_i3.Connectivity>(() => injectableModules.connectivity);
  gh.lazySingleton<_i4.Dio>(() => injectableModules.dio);
  gh.lazySingleton<_i5.INetworkInfo>(
      () => _i5.NetworkInfo(get<_i3.Connectivity>()));
  await gh.factoryAsync<_i6.SharedPreferences>(
      () => injectableModules.sharedPreferences,
      preResolve: true);
  gh.factory<_i7.ThemeBloc>(() => _i7.ThemeBloc());
  gh.lazySingleton<_i8.Api>(() => _i8.Api(
      dio: get<_i4.Dio>(), sharedPreferences: get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i9.IAuthLocalDataSource>(() =>
      _i9.AuthLocalDataSource(sharedPreferences: get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i10.IAuthRemoteDataSource>(
      () => _i10.AuthRemoteDataSource(api: get<_i8.Api>()));
  gh.lazySingleton<_i11.IAuthRepository>(() => _i12.AuthRepository(
      remoteDataSource: get<_i10.IAuthRemoteDataSource>(),
      localDataSource: get<_i9.IAuthLocalDataSource>(),
      networkInfo: get<_i5.INetworkInfo>()));
  gh.lazySingleton<_i13.ISearchLocalDataSource>(() =>
      _i13.SearchLocalDataSource(
          sharedPreferences: get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i14.ISearchRemoteDataSource>(
      () => _i14.SearchRemoteDataSource(api: get<_i8.Api>()));
  gh.lazySingleton<_i15.ISearchRepository>(() => _i16.SearchRepository(
      remoteDataSource: get<_i14.ISearchRemoteDataSource>(),
      localDataSource: get<_i13.ISearchLocalDataSource>(),
      networkInfo: get<_i5.INetworkInfo>()));
  gh.factory<_i17.SearchBloc>(
      () => _i17.SearchBloc(searchRepository: get<_i15.ISearchRepository>()));
  gh.factory<_i18.SignInFormBloc>(
      () => _i18.SignInFormBloc(get<_i11.IAuthRepository>()));
  gh.factory<_i19.SignUpFormBloc>(
      () => _i19.SignUpFormBloc(get<_i11.IAuthRepository>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(get<_i11.IAuthRepository>()));
  gh.factory<_i21.ChangePasswordBloc>(
      () => _i21.ChangePasswordBloc(get<_i11.IAuthRepository>()));
  gh.factory<_i22.ForgotPasswordBloc>(
      () => _i22.ForgotPasswordBloc(get<_i11.IAuthRepository>()));
  return get;
}

class _$InjectableModules extends _i23.InjectableModules {}
