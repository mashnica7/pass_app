import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pass_app/core/ui/themes/colors.dart';

import '../../../../core/constants/text_constants.dart';
import '../../../../core/ui/widgets/auth_button.dart';
import '../../../../core/ui/widgets/auth_text_form_field.dart';
import '../bloc/forgot_password/forgot_password_bloc.dart';

class ForgotPasswordForm extends StatelessWidget {
  static final _key = GlobalKey<FormState>();

  const ForgotPasswordForm({
    Key key,
    this.email,
  }) : super(key: key);

  final String email;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(failure.maybeMap(
                      serverFailure: (f) => f.message,
                      deviceIsOffline: (_) => cDeviceOfflineMessage,
                      orElse: () => cSomethingWentWrongMessage))));
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('We have resent the link to your email')));
            },
          ),
        );
      },
      builder: (context, state) {
        return AbsorbPointer(
            absorbing: state.isSubmitting,
            child: Form(
                key: _key,
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    AuthTextFormField(
                      initialValue: email ?? '',
                      hintText: cEmailField,
                      onChange: (value) =>
                          BlocProvider.of<ForgotPasswordBloc>(context).add(
                        ForgotPasswordEvent.emailChanged(value),
                      ),
                      validator: (_) => BlocProvider.of<ForgotPasswordBloc>(
                              context)
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
                    SizedBox(
                      height: 20,
                    ),
                    AuthButton(
                      height: 55,
                      isSubmitting: state.isSubmitting,
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        BlocProvider.of<ForgotPasswordBloc>(context)
                            .add(const ForgotPasswordEvent.sendEmailPressed());
                      },
                      child: const Text(
                        cSendBtn,
                        style: TextStyle(
                            fontSize: 16,
                            color: SECOND_WHITE_COLOR,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )));
      },
    );
  }
}
