import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/ui/themes/colors.dart';
import '../../../../injection/injection.dart';
import '../bloc/forgot_password/forgot_password_bloc.dart';
import '../widgets/forgot_password_form.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
    Key key,
    this.email,
  }) : super(key: key);

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - kToolbarHeight * 2,
          child: Stack(
            children: [
              Positioned(
                top: 25,
                right: 0,
                left: 0,
                child: BlocProvider(
                  create: (context) => getIt<ForgotPasswordBloc>()
                    ..add(ForgotPasswordEvent.emailChanged(email)),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Image.asset("assets/images/logo.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            'Forgotten password',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Text(
                            'Enter your email and we will send\nyou the link for changing password',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ForgotPasswordForm(
                          email: email,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 10,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Column(
                      children: [
                        Divider(
                          color: SECOND_WHITE_COLOR,
                        ),
                        Text(
                          'Haven’t got anything?',
                          style: TextStyle(
                              fontSize: 20, color: SECOND_WHITE_COLOR),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              primary: Colors.transparent,
                              onSurface: Colors.blue),
                          onPressed: () {},
                          child: Text('RESEND',
                              style: TextStyle(
                                  color: RED_PRIMARY_COLOR,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
