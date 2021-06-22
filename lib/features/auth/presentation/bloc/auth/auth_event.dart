part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequiested() = _AuthCheckRequiested;
  const factory AuthEvent.signedOut() = _SignedOut;
}
