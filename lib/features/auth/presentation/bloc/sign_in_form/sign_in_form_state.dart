part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required Email email,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<Failure, String>> failureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        email: Email(cUserEmail),
        password: Password(cUserPassword),
        showErrorMessages: false,
        isSubmitting: false,
        failureOrSuccessOption: none(),
      );
}

const cUserEmail = '';
const cUserPassword = '';

//! FOR TESTING
// const cUserEmail = 'nmajstorovic90@gmail.com';
// const cUserPassword = 'asdf123';
