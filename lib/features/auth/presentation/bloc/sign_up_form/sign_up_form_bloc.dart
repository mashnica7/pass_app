import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/repositories/auth_objects.dart';
import '../../../domain/repositories/i_auth_repository.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthRepository _authRepository;

  SignUpFormBloc(this._authRepository) : super(SignUpFormState.initial());

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
          email: Email(e.emailStr), failureOrSuccessOption: none());
    }, passwordChanged: (e) async* {
      yield state.copyWith(
          password: Password(e.passwordStr, equalAsPass: state.repytedPassword),
          repytedPassword: Password(
              state.repytedPassword.value.fold((l) => l.failedValue, (r) => r),
              equalAsPass:
                  Password(e.passwordStr, equalAsPass: state.repytedPassword)),
          failureOrSuccessOption: none());
    }, repytedPasswordChanged: (e) async* {
      yield state.copyWith(
          repytedPassword:
              Password(e.repyPasswordStr, equalAsPass: state.password),
          password: Password(
              state.password.value.fold((l) => l.failedValue, (r) => r),
              equalAsPass:
                  Password(e.repyPasswordStr, equalAsPass: state.password)),
          failureOrSuccessOption: none());
    }, registerUser: (e) async* {
      Either<Failure, Unit> failureOrSuccess;

      final isPasswordValid = state.password.isValid();
      final isRepytedPasswordValid = state.repytedPassword.isValid();
      final isEmailValid = state.email.isValid();

      if (isPasswordValid && isRepytedPasswordValid && isEmailValid) {
        yield state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authRepository.registerUser(
            password: state.password, email: state.email);
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
