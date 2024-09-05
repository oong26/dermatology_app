import 'package:dermatology_app/config/routes/routes.dart';
import 'package:dermatology_app/config/theme/theme.dart';
import 'package:dermatology_app/core/util/constants.dart';
import 'package:dermatology_app/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: theme(),
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      home: const SplashPage(),
    );
  }
}
