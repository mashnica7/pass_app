part of 'forgot_password_bloc.dart';

@freezed
abstract class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.sendEmailPressed() = _SendEmailPressed;
  const factory ForgotPasswordEvent.emailChanged(String emailStr) =
      _EmailChanged;
}
