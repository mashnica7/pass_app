import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/repositories/auth_objects.dart';
import '../../../domain/repositories/i_auth_repository.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final IAuthRepository _authRepository;

  ChangePasswordBloc(this._authRepository)
      : super(ChangePasswordState.initial());

  @override
  Stream<ChangePasswordState> mapEventToState(
    ChangePasswordEvent event,
  ) async* {
    yield* event.map(currentPasswordChanged: (e) async* {
      final currentPass =
          Password(e.passwordStr, differentThenPass: state.newPassword);

      final newPass = Password(
          state.newPassword.value.fold((l) => l.failedValue, (r) => r),
          equalAsPass: state.retypedNewPassword);

      final retypedNewPass = Password(
          state.retypedNewPassword.value.fold((l) => l.failedValue, (r) => r),
          equalAsPass: state.newPassword);

      yield state.copyWith(
        currentPassword: currentPass,
        newPassword: newPass,
        retypedNewPassword: retypedNewPass,
        failureOrSuccessOption: none(),
      );
    }, newPasswordChanged: (e) async* {
      final newPass =
          Password(e.passwordStr, equalAsPass: state.retypedNewPassword);

      final currentPass = Password(
          state.currentPassword.value.fold((l) => l.failedValue, (r) => r),
          differentThenPass: newPass);

      final retypedPass = Password(
          state.retypedNewPassword.value.fold((l) => l.failedValue, (r) => r),
          equalAsPass: newPass);

      yield state.copyWith(
          currentPassword: currentPass,
          newPassword: newPass,
          retypedNewPassword: retypedPass,
          failureOrSuccessOption: none());
    }, retypedNewPasswordChanged: (e) async* {
      final retypedPass =
          Password(e.passwordStr, equalAsPass: state.newPassword);

      final currentPass = Password(
          state.currentPassword.value.fold((l) => l.failedValue, (r) => r),
          differentThenPass: retypedPass);

      final newPass = Password(
          state.newPassword.value.fold((l) => l.failedValue, (r) => r),
          equalAsPass: retypedPass);

      yield state.copyWith(
          currentPassword: currentPass,
          retypedNewPassword: retypedPass,
          newPassword: newPass,
          failureOrSuccessOption: none());
    }, changePasswordPressed: (e) async* {
      Either<Failure, Unit> failureOrSuccess;

      final isCurrentPasswordValid = state.currentPassword.isValid();
      final isNewPasswordValid = state.newPassword.isValid();
      final isRetypedNewPasswordValid = state.retypedNewPassword.isValid();

      if (isCurrentPasswordValid &&
          isNewPasswordValid &&
          isRetypedNewPasswordValid) {
        yield state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authRepository.changePassword(
          old: state.currentPassword,
          newPassword: state.newPassword,
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
