import 'package:dermatology_app/config/theme/colors.dart';
import 'package:dermatology_app/config/theme/text_styles.dart';
import 'package:dermatology_app/config/theme/widgets/custom_app_bar.dart';
import 'package:dermatology_app/config/theme/widgets/custom_text_form_field.dart';
import 'package:dermatology_app/config/theme/widgets/primary_button.dart';
import 'package:dermatology_app/core/util/constants.dart';
import 'package:dermatology_app/features/auth/presentation/widgets/social_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final textEmailController = TextEditingController();
  final textPasswordController = TextEditingController();
  bool passwordHide = true;

  void passwordToggle() {
    setState(() => passwordHide = !passwordHide ? true : false);
    debugPrint(passwordHide.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Log In'),
      body: body(),
    );
  }

  Widget body() => SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleText(),
                subtitleText(),
                form(),
              ],
            ),
          ),
        ),
      );

  Widget titleText() => Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Text(
          'Welcome',
          style: mPrimaryLargeTextStyle,
        ),
      );

  Widget subtitleText() => Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          lorem,
          style: mSecondarySmallTextStyle,
        ),
      );

  Widget form() => Padding(
        padding: const EdgeInsets.only(top: 48),
        child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email & Mobile Number',
                  style: mSecondaryLargeTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomTextFormField(
                    controller: textEmailController,
                    hintText: 'example@company.com',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Password',
                    style: mSecondaryLargeTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomTextFormField(
                    controller: textPasswordController,
                    hintText: 'Password here',
                    isPassword: passwordHide,
                    suffixIcon: passwordHide
                        ? const Icon(Icons.remove_red_eye_outlined)
                        : Image.asset(
                            'assets/icons/ic_remove_eye.png',
                            width: 24,
                          ),
                    suffixOnTap: () => passwordToggle(),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Forget Password?',
                    style: mPrimarySmallTextStyle.copyWith(
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 38),
                  alignment: Alignment.center,
                  child: PrimaryButton(
                    onPressed: () {
                      debugPrint('Log In button clicked');
                    },
                    text: 'Log In',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 16, bottom: 12),
                  alignment: Alignment.center,
                  child: Text(
                    'or log in with',
                    style: mSecondarySmallTextStyle,
                  ),
                ),
                socialButtons(),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 38),
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: mSecondarySmallTextStyle,
                      children: <TextSpan>[
                        TextSpan(
                            text: "Sign Up",
                            style: mPrimarySmallTextStyle.copyWith(
                                fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  Navigator.pushNamed(context, '/sign-up')),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      );

  Widget socialButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/ic_google.png'),
          ),
          SocialButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/ic_facebook.png'),
          ),
        ],
      );
}
