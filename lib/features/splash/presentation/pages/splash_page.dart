import 'dart:async';

import 'package:dermatology_app/config/theme/colors.dart';
import 'package:dermatology_app/config/theme/text_styles.dart';
import 'package:dermatology_app/core/util/constants.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_white.png'),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Skin\n',
                style: mInfoExtraLargeTextStyle,
                children: const <TextSpan>[
                  TextSpan(text: 'Firsts'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              placeholder,
              style: mInfoSmallTextStyle.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
