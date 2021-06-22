import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pass_app/core/ui/themes/colors.dart';

import 'core/ui/themes/bloc/theme_bloc.dart';
import 'features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'injection/injection.dart';
import 'routes/router.gr.dart' as router;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);

  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _homePage();
  }

  MultiBlocProvider _homePage() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
            create: (BuildContext context) => getIt<ThemeBloc>()),
        BlocProvider<AuthBloc>(
            create: (BuildContext context) => getIt<AuthBloc>()
              ..add(const AuthEvent.authCheckRequiested())
              ..listen((state) {
                state.map(
                    initialAuth: (_) {},
                    authenticated: (_) async {},
                    unauthenticated: (_) async {});
              })),
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        // It needs because Android.
        // Android doesn't use appBarTheme param brightness: Brightness.light from ThemeData like iOS,
        // so we should set manually
        value: const SystemUiOverlayStyle(
            systemNavigationBarColor: BACKGROUND_COLOR, // navigation bar color

            // statusBarColor is used to set Status bar color in Android devices.
            statusBarColor: Colors.transparent,

            // To make Status bar icons color white in Android devices.
            statusBarIconBrightness: Brightness.light,

            // statusBarBrightness is used to set Status bar icon color in iOS.
            statusBarBrightness: Brightness.dark
            // Here light means dark color Status bar icons.
            ),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              title: 'Pass App',
              debugShowCheckedModeBanner: false,
              builder: ExtendedNavigator(router: router.Router()),
              theme: state.themeData,
            );
          },
        ),
      ),
    );
  }
}
