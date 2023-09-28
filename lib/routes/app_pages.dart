import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/pages/check_email_screen.dart';
import '../view/pages/forget_password.dart';
import '../view/pages/login_screen.dart';
import '../view/pages/logo_screen.dart';
import '../view/pages/signup_screen.dart';
import '../view/pages/splash_screen.dart';
import '../view/pages/success_password.dart';

part 'app_routes.dart';

class AppPages {
  static final router = GoRouter(
    routes: [
      // Logo Screen Route
      GoRoute(
        name: AppRoutes.logo,
        path: '/',
        pageBuilder: (context, state) => const MaterialPage(
          child: LogoPage(),
        ),
      ),

      // Splash Screen Route
      GoRoute(
        name: AppRoutes.splash,
        path: '/${AppRoutes.splash}',
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashScreen(),
        ),
      ),

      // Login Screen Route
      GoRoute(
        name: AppRoutes.login,
        path: '/${AppRoutes.login}',
        pageBuilder: (context, state) => const MaterialPage(
          child: LoginPage(),
        ),
      ),

      // Signup Screen Route
      GoRoute(
        name: AppRoutes.signup,
        path: '/${AppRoutes.signup}',
        pageBuilder: (context, state) => const MaterialPage(
          child: SignupPage(),
        ),
      ),

      // Forget Password Screen Route
      GoRoute(
        name: AppRoutes.forgetPassword,
        path: '/${AppRoutes.forgetPassword}',
        pageBuilder: (context, state) => const MaterialPage(
          child: ForgetPasswordPage(),
        ),
      ),

      // Check Email Screen Route
      GoRoute(
        name: AppRoutes.checkEmail,
        path: '/${AppRoutes.checkEmail}',
        pageBuilder: (context, state) => const MaterialPage(
          child: CheckEmailPage(),
        ),
      ),

      // Password Success Screen Route
      GoRoute(
        name: AppRoutes.passwordSuccess,
        path: '/${AppRoutes.passwordSuccess}',
        pageBuilder: (context, state) => const MaterialPage(
          child: PasswordSuccessPage(),
        ),
      ),
    ],
  );
}
