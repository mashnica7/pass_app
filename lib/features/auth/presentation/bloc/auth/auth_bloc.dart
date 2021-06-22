import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/repositories/i_auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(const AuthState.initialAuth());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequiested: (e) async* {
      final userOption = _authRepository.getSignInUser();
      yield userOption.fold(() => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated());
    }, signedOut: (e) async* {
      await _authRepository.signOut();
      yield const AuthState.unauthenticated();
    });
  }
}
