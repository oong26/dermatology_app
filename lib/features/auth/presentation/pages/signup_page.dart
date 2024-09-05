import 'package:dermatology_app/config/theme/text_styles.dart';
import 'package:dermatology_app/config/theme/widgets/custom_app_bar.dart';
import 'package:dermatology_app/config/theme/widgets/custom_text_form_field.dart';
import 'package:dermatology_app/config/theme/widgets/primary_button.dart';
import 'package:dermatology_app/core/util/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final textFullNameController = TextEditingController();
  final textEmailController = TextEditingController();
  final textPhoneController = TextEditingController();
  final textDateOfBirthController = TextEditingController();
  final textPasswordController = TextEditingController();
  final textConfirmPasswordController = TextEditingController();
  bool passwordHide = true;
  bool confirmPasswordHide = true;

  void passwordToggle() {
    setState(() => passwordHide = !passwordHide ? true : false);
  }

  void confirmPasswordToggle() {
    setState(() => confirmPasswordHide = !confirmPasswordHide ? true : false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'New Account'),
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
                form(),
              ],
            ),
          ),
        ),
      );

  Widget form() => Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full name',
            style: mSecondaryLargeTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomTextFormField(
              controller: textFullNameController,
              hintText: 'John Doe',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Date of Birth',
              style: mSecondaryLargeTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomTextFormField(
              controller: textDateOfBirthController,
              hintText: 'dd/MM/YYYY',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Email',
              style: mSecondaryLargeTextStyle,
            ),
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
              'Mobile Number',
              style: mSecondaryLargeTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomTextFormField(
              controller: textPhoneController,
              hintText: '085xxxxxxxxx',
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
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Confirmation Password',
              style: mSecondaryLargeTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomTextFormField(
              controller: textConfirmPasswordController,
              hintText: 'Confirmation password here',
              isPassword: confirmPasswordHide,
              suffixIcon: confirmPasswordHide
                  ? const Icon(Icons.remove_red_eye_outlined)
                  : Image.asset(
                      'assets/icons/ic_remove_eye.png',
                      width: 24,
                    ),
              suffixOnTap: () => confirmPasswordToggle(),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 38),
            alignment: Alignment.center,
            child: PrimaryButton(
              onPressed: () {
                debugPrint('Sign Up button clicked');
              },
              text: 'Sign Up',
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 38),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: mSecondarySmallTextStyle,
                children: <TextSpan>[
                  TextSpan(
                      text: "Log In",
                      style: mPrimarySmallTextStyle.copyWith(
                          fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => Navigator.popAndPushNamed(context, '/login')),
                ],
              ),
            ),
          ),
        ],
      ));
}
