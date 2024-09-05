import 'package:dermatology_app/config/theme/colors.dart';
import 'package:dermatology_app/config/theme/text_styles.dart';
import 'package:dermatology_app/config/theme/widgets/primary_button.dart';
import 'package:dermatology_app/config/theme/widgets/secondary_button.dart';
import 'package:dermatology_app/core/util/constants.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mInfoColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 46),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset('assets/images/logo_primary.png'),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Skin\n',
                style: mPrimaryExtraLargeTextStyle,
                children: const <TextSpan>[
                  TextSpan(text: 'Firsts'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              placeholder,
              style:
                  mPrimarySmallTextStyle.copyWith(fontWeight: FontWeight.w600),
            ),
            const Spacer(flex: 1),
            Text(
              lorem,
              textAlign: TextAlign.center,
              style: mSecondarySmallTextStyle,
            ),
            const SizedBox(height: 30),
            PrimaryButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              text: 'Log In',
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: SecondaryButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
                text: 'Sign Up',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
