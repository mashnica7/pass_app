import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../routes/router.gr.dart';
import '../bloc/auth/auth_bloc.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
              initialAuth: (_) {},
              authenticated: (_) =>
                  ExtendedNavigator.of(context).replace(Routes.searchPage),
              unauthenticated: (_) => ExtendedNavigator.of(context)
                  .replace(Routes.registerLoginPage));
        },
        child: Scaffold(
          body: Container(),
        ));
  }
}
