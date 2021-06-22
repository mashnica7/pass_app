part of 'change_password_bloc.dart';

@freezed
abstract class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.changePasswordPressed() =
      _ChangePasswordPressed;
  const factory ChangePasswordEvent.currentPasswordChanged(String passwordStr) =
      _CurrentPasswordChanged;
  const factory ChangePasswordEvent.newPasswordChanged(String passwordStr) =
      _NewPasswordChanged;
  const factory ChangePasswordEvent.retypedNewPasswordChanged(
      String passwordStr) = _RetypedNewPasswordChanged;
}
