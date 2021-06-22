import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/repositories/auth_objects.dart';
import '../../../domain/repositories/i_auth_repository.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final IAuthRepository _authRepository;

  ForgotPasswordBloc(this._authRepository)
      : super(ForgotPasswordState.initial());

  @override
  Stream<ForgotPasswordState> mapEventToState(
    ForgotPasswordEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        email: Email(e.emailStr),
        failureOrSuccessOption: none(),
      );
    }, sendEmailPressed: (e) async* {
      Either<Failure, Unit> failureOrSuccess;

      final isEmailValid = state.email.isValid();

      //! for testing
      // yield state.copyWith(
      //   isSubmitting: true,
      //   failureOrSuccessOption: none(),
      // );

      // yield state.copyWith(
      //   isSubmitting: false,
      //   showErrorMessages: true,
      //   failureOrSuccessOption: optionOf(const Right(unit)),
      // );

      if (isEmailValid) {
        yield state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authRepository.sendEmail(
          email: state.email,
        );
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        failureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
