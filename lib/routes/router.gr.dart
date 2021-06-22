// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/auth/presentation/pages/auth_page.dart';
import '../features/auth/presentation/pages/forgot_password_page.dart';
import '../features/auth/presentation/pages/register_login_page.dart';
import '../features/auth/presentation/pages/sign_in_page.dart';
import '../features/auth/presentation/pages/sign_up_page.dart';
import '../features/search/presentation/pages/search_page.dart';

class Routes {
  static const String registerLoginPage = '/register-login-page';
  static const String authPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String searchPage = '/search-page';
  static const String forgotPasswordPage = '/forgot-password-page';
  static const all = <String>{
    registerLoginPage,
    authPage,
    signInPage,
    signUpPage,
    searchPage,
    forgotPasswordPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.registerLoginPage, page: RegisterLoginPage),
    RouteDef(Routes.authPage, page: AuthPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.searchPage, page: SearchPage),
    RouteDef(Routes.forgotPasswordPage, page: ForgotPasswordPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RegisterLoginPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterLoginPage(),
        settings: data,
      );
    },
    AuthPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    SearchPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchPage(),
        settings: data,
      );
    },
    ForgotPasswordPage: (data) {
      final args = data.getArgs<ForgotPasswordPageArguments>(
        orElse: () => ForgotPasswordPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordPage(
          key: args.key,
          email: args.email,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ForgotPasswordPage arguments holder class
class ForgotPasswordPageArguments {
  final Key key;
  final String email;
  ForgotPasswordPageArguments({this.key, this.email});
}
