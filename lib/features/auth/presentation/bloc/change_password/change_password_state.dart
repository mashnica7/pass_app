part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @required Password currentPassword,
    @required Password newPassword,
    @required Password retypedNewPassword,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        currentPassword: Password(''),
        newPassword: Password(''),
        retypedNewPassword: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}
