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
    useMaterial3: false,
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Color(0XFF8B8B8B)),
    titleTextStyle: TextStyle(
      color: Color(0XFF8B8B8B),
      fontSize: 18,
    ),
  );
}
