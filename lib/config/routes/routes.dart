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
      default:
        return _materialRoute(const WelcomePage());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
