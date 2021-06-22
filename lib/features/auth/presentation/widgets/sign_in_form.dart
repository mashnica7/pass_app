import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/text_constants.dart';
import '../../../../core/ui/themes/colors.dart';
import '../../../../core/ui/widgets/auth_button.dart';
import '../../../../core/ui/widgets/auth_text_form_field.dart';
import '../../../../routes/router.gr.dart';
import '../bloc/auth/auth_bloc.dart';
import '../bloc/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  static final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(failure.maybeMap(
                    serverFailure: (f) => f.message,
                    deviceIsOffline: (_) => cDeviceOfflineMessage,
                    orElse: () => cSomethingWentWrongMessage))));
          }, (_) {
            ExtendedNavigator.of(context).replace(Routes.searchPage);
            BlocProvider.of<AuthBloc>(context)
                .add(const AuthEvent.authCheckRequiested());
          }),
        );
      },
      builder: (context, state) {
        return AbsorbPointer(
          absorbing:
              BlocProvider.of<SignInFormBloc>(context).state.isSubmitting,
          child: Form(
              key: _key,
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AuthTextFormField(
                    labelText: cEmailField,
                    initialValue: BlocProvider.of<SignInFormBloc>(context)
                        .state
                        .email
                        .value
                        .fold((f) => null, (r) => r),
                    onChange: (value) =>
                        BlocProvider.of<SignInFormBloc>(context)
                            .add(SignInFormEvent.emailChanged(value)),
                    validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                        .state
                        .email
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                empty: (_) => "$cEmailField$cImportantField",
                                invalidEmail: (_) => cEmailFieldNotValidError,
                                orElse: () => null),
                            (_) => null),
                  ),
                  const SizedBox(height: 8),
                  AuthTextFormField(
                    labelText: cPassField,
                    initialValue: BlocProvider.of<SignInFormBloc>(context)
                        .state
                        .password
                        .value
                        .fold((f) => null, (r) => r),
                    obscureText: true,
                    obscureTextChangable: true,
                    onChange: (value) =>
                        BlocProvider.of<SignInFormBloc>(context)
                            .add(SignInFormEvent.passwordChanged(value)),
                    validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                        .state
                        .password
                        .value
                        .fold(
                            (f) => f.maybeMap(
                                empty: (_) => "$cPassField$cImportantField",
                                orElse: () => null),
                            (_) => null),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        primary: Colors.transparent,
                        onSurface: Colors.blue),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      ExtendedNavigator.of(context).push(
                          Routes.forgotPasswordPage,
                          arguments: ForgotPasswordPageArguments(
                              email: state.email.isValid()
                                  ? state.email.getOrCrash()
                                  : ''));
                    },
                    child: const Text(cForgotPassTitle,
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 16)),
                  ),
                  AuthButton(
                      height: 55,
                      isSubmitting: state.isSubmitting,
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        BlocProvider.of<SignInFormBloc>(context).add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed());
                      },
                      child: const Text(
                        cLoginBtn,
                        style: TextStyle(
                            fontSize: 16,
                            color: SECOND_WHITE_COLOR,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 55,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: AuthButton(
                            onPressed: () => {},
                            color: BACKGROUND_COLOR,
                            borderSideColor: FACEBOOK_COLOR,
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/facebook.png',
                                  height: 25,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'FACEBOOK',
                                    style: TextStyle(
                                        color: FACEBOOK_COLOR,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: AuthButton(
                            onPressed: () => {},
                            color: BACKGROUND_COLOR,
                            borderSideColor: GOOGLE_COLOR,
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/google.png',
                                  height: 25,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'GOOGLE',
                                    style: TextStyle(
                                        color: GOOGLE_COLOR,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
