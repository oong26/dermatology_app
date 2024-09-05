import 'package:dermatology_app/features/auth/presentation/pages/login_page.dart';
import 'package:dermatology_app/features/auth/presentation/pages/signup_page.dart';
import 'package:dermatology_app/features/splash/presentation/pages/splash_page.dart';
import 'package:dermatology_app/features/welcome/presentation/pages/welcome.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const SplashPage());
      case '/welcome':
        return _materialRoute(const WelcomePage());
      case '/login':
        return _materialRoute(const LoginPage());
      case '/sign-up':
        return _materialRoute(const SignUpPage());
      default:
        return _materialRoute(const WelcomePage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
