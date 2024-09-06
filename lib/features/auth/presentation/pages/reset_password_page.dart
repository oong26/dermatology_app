import 'package:dermatology_app/config/theme/text_styles.dart';
import 'package:dermatology_app/config/theme/widgets/custom_app_bar.dart';
import 'package:dermatology_app/config/theme/widgets/custom_text_form_field.dart';
import 'package:dermatology_app/config/theme/widgets/primary_button.dart';
import 'package:dermatology_app/core/util/constants.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final formKey = GlobalKey<FormState>();
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
      appBar: const CustomAppBar(title: 'Set Password'),
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
                subtitleText(),
                form(),
              ],
            ),
          ),
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
                  'New Password',
                  style: mSecondaryLargeTextStyle,
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
                    'Confirmation New Password',
                    style: mSecondaryLargeTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CustomTextFormField(
                    controller: textConfirmPasswordController,
                    hintText: 'Confirm Password here',
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
                    onPressed: () => Navigator.pop(context),
                    text: 'Create New Password',
                  ),
                ),
              ],
            )),
      );
}
