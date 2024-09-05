import 'package:dermatology_app/config/theme/text_styles.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: mPrimaryColor,
      primary: mPrimaryColor,
      secondary: mSecondaryColor,
      background: mInfoColor,
      error: mErrorColor,
    ),
    fontFamily: 'League Spartan',
    appBarTheme: appBarTheme(),
    useMaterial3: true,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    iconTheme: const IconThemeData(color: mPrimaryColor, size: 32),
    titleTextStyle: mPrimaryLargeTextStyle,
  );
}
