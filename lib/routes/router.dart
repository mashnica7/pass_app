import 'package:auto_route/auto_route_annotations.dart';

import '../features/auth/presentation/pages/forgot_password_page.dart';
import '../features/auth/presentation/pages/register_login_page.dart';
import '../features/auth/presentation/pages/sign_in_page.dart';
import '../features/auth/presentation/pages/sign_up_page.dart';
import '../features/auth/presentation/pages/auth_page.dart';
import '../features/search/presentation/pages/search_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: RegisterLoginPage),
  MaterialRoute(page: AuthPage, initial: true),
  MaterialRoute(page: SignInPage),
  MaterialRoute(page: SignUpPage),
  MaterialRoute(page: SearchPage),
  MaterialRoute(page: ForgotPasswordPage),
])
class $Router {}
